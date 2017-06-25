@HtmlImport('order_el.html')
library wiala.web.order;

import 'package:polymer/polymer.dart';
import 'package:web_components/web_components.dart' show HtmlImport;
import 'package:polymer_elements/iron_form.dart';
import 'package:polymer_elements/iron_request.dart';
import 'package:polymer_elements/paper_dialog.dart';
import 'package:polymer_elements/paper_checkbox.dart';
import 'package:polymer_elements/paper_radio_group.dart';
import 'dart:html';
import 'dart:async';
import 'textW.dart';
import 'dart:convert';
import 'wine_order_el.dart';
import 'utilWiala.dart';
import 'package:polymer_elements/iron_ajax.dart';
import 'but_plus_min_el.dart';
import 'package:polymer_elements/paper_listbox.dart';
import 'package:polymer_elements/paper_item.dart';
import 'package:polymer_elements/paper_input.dart';
import 'package:polymer_elements/paper_button.dart';

@PolymerRegister('order-el')
class Order extends PolymerElement {
  Order.created() : super.created();

  @property
  Map<String, String> txt = new Map();
  @property
  Map<String, String> txtW = new Map();
  @property
  String tot = '0';
  @property
  int selectedTab = 0;
  @property
  bool isIdent = false;
  @property
  String ident;
  @property
  String status;
  @property
  String lang;
  @property
  String buDialogID;
  @property
  List recapDsp = new List(); // For display
  List recap = new List(); //Send to the server
  String email, co, cp; // country & postal code


  String servletSaveCmd = '/order';
  String servletLogin = '/ident';

  bool isDevEnv = false;

  void ready() {
    TextW.setLang(window.navigator.language, Uri.base.queryParameters['lang']);
    set('lang', TextW.lang);
    set('txt', TextW.getTxt(TextW.order));
    set('txtW', TextW.wine_ref);
    this.querySelector('#errorLogin').setAttribute('style', 'display:none;');
  }

  // Set properties values when attached
  void attached() {

    isDevEnv = utilW.devEnv(window.location.href);

    ($['countryList'] as Element)
        .children
        .first
        .classes
        .addAll(['layout', 'horizontal', 'around-justified']);
    ($['langList'] as Element)
        .children
        .first
        .classes
        .addAll(['layout', 'horizontal', 'around-justified']);
    ($['lang'] as PaperInput).value = TextW.lang;
    $['langList'].select(TextW.lang);
    if (TextW.lang == TextW.fr) {
      $['countryList'].select(TextW.fr);
    }else{ // If lang is engligh or german then select Germany
      $['countryList'].select(TextW.ge);
    }
    hideTxt('errorLogin',true);
    hideTxt('spin', true);
  }

  //  ************** Various functions **************************

  void enterFrame() {
    openDialog('payment', 'ok'); // Dialog for conditions of invoice
  }



  // Prevent users to proceed (change tab) if no wine has been selected
  @reflectable
  void tabChange(e, detail) {
    if (!isIdent) {
      set('selectedTab', 0);
      return;
    } else {
      // Only log out allow user to go back to first tab
      set('selectedTab', 1);
    }
  }

  @reflectable
  void logOut(e, d) {
    set('ident', '');
    set('isIdent', false);
    set('cp', '0');
    set('selectedTab', 0);
  }

  void hideTxt(String el, bool b) {
    if (b) {
      this.querySelector('#$el').setAttribute('style', 'display:none;');
    } else {
      this.querySelector('#$el').setAttribute('style', 'display:block;');
    }
  }

  void hideError(bool b) {
    hideTxt('errorLogin', b);
  }


  //  ************** Wine list retrieval **************************

  // Retrieve wine list depending of the country
  void getUrl(String country) {
    if (itemsL.length > 0){
        return;
    }
    RegExp exp = new RegExp('[\\w:/.0-9]+');
    String json;
    if (country == utilW.coList['fr']) {
      json = 'vins.json';
      $['nrbo'].setAttribute('style', '');
    } else {
      json = 'vins_ge.json';
      $['nrbo'].setAttribute('style', 'display:none;');
    }
    String urlLocale =  exp.stringMatch(window.location.href).replaceFirst('index.html', json);
    // Get local file if we are in Dev mode or from the drive in prod

      Uri u = Uri.parse(window.location.href);
    if (isDevEnv) {
      json = exp.stringMatch(window.location.href).replaceFirst('index.html', json);
    } else {
      json = u.origin + '/' + json;
    }
      print(json);
      HttpRequest.getString(json).then(onDataLoaded);

 /*   } else {

      String url; //= '://www.googledrive.com/host/0B1P55sPkNQO0WlpSSEZnWUZnUjg/';

      if (country == coList['fr']) {
        url = '://www.googledrive.com/host/0B1P55sPkNQO0OTZ2MXdaM1hmQ00';
        }else{
        url = '://www.googledrive.com/host/0B1P55sPkNQO0blEwTEpTOGI3c28';
      }

      exp = new RegExp('http(s?)');
      url = exp.stringMatch(window.location.href).toString() + url; // + json;
*/
      openDialog('load', null);
      hideTxt('spin', false);
      $['spin'].active = true;
      $['dialog'].modal = true;
  /*
      var request = HttpRequest.getString(url).then(onDataLoaded);
    } */

  }

  //Callback to load wines
  void onDataLoaded(String responseText) {
    String jsonString = responseText;
    Map data = JSON.decode(jsonString); // parse response text
    itemsL = data['vins'];
    Element div = $['orderwine'];
    bool flg = true;
    (data['vins'] as List).forEach((i) {
      WineOrder el = new WineOrder();
      el.setAttribute('i_id', i['vin']);
      print(' ${i['vin']} ');
      print(' ${txtW[i['vin']]} ');
      el.setAttribute('i_vin', txtW[i['vin']]);
      i['year'] != null ? el.setAttribute('i_year', i['year']) : null ;
      el.setAttribute('i_bo', i['bo']);
      el.setAttribute('i_ca', i['ca']);
      el.setAttribute('i_url', 'images/wines/${i['img']}.jpg');
      Polymer.dom(div).append(el);
      // Set active
      if (flg) {
        setRefText(i['vin'], i['year']);
        flg = false;
      }
    });
    $['dialog'].modal = false;
    hideTxt('spin', true);
    $['spin'].active = false;
    $['dialog'].close();
  }

  //  ************** Form ident or login **************************

  // Form input lang
  @reflectable
  void langList(e, detail) {
    $['lang'].value = $['langList'].selected;
  }

  // Form input country
  @reflectable
  void countryList(e, detail) {
    $['country'].value = $['countryList'].selectedItem.innerHtml.trim();
  }

  // Submit form login and ident
  void formReq(Event e, String form) {
    hideTxt('errorLogin',true);
    e.preventDefault();
    IronForm ir = $[form];
    ir.action = '${utilW.origin}$servletLogin';
    ir.submit();
  }

  //Submit login form
  @reflectable
  void formLoginSub(Event e, detail) {
    formReq(e, 'formLogin');
    openDialog('load', null); // open loading dialog

  }

  // Submit indentification form
  @reflectable
  void formIdentSub(e, detail) {
    openDialog('law', 'accept', 'notAccept'); // Dialog for CNIL
  }

  // Read form response ident or login
  void formResp(detail, String ident) {
    IronRequest ir = detail;
    email = ir.response['email'];
    co = ir.response['country'];
    cp = ir.response['cp'];
    if (email == null) {
      hideTxt('errorLogin',false);
      set('status', txt[ir.response['status']]);
      $['dialog'].close(); // close loading dialog
    } else {
      hideTxt('errorLogin',true);
      set('ident', '${ir.response['name']} ${ir.response['familly']}');
      set('isIdent', true);
      set('selectedTab', 1);
      getUrl(co);
    }
  }

  // Check response for Login form
  @reflectable
  void formLoginResponse(Event e, detail) {
    formResp(detail, utilW.login);
  }

  // Check response for indentification form
  @reflectable
  void formIdentResponse(Event e, detail) {
    formResp(detail, utilW.ident);
  }

  //  ************** Form command **************************

  // Future fonction
  Future sleep() {
    int rnd = 1;
    Completer completer = new Completer();
    Duration duration = new Duration(milliseconds: rnd);
    Timer timer = new Timer(duration, () => completer.complete());
    return completer.future;
  }

  // Before sending the command to the backend verify that
  // a multiple of 6 is selected and then process the command
  @reflectable
  void preSendCommand(Event e, detail) {
    if (nbt  == 0) {
      return;
    }
    // Number of bottles must be a factor of 6
    if (nbt % 6 != 0) {
      openDialog('factor6', 'ok');
      return;
    }
    openDialog('orderExec2', 'valid');
  }

  // Send the command form
  @reflectable
  void sendCommand(Event e, detail) {
    // If Okay send command
    IronAjax a = new IronAjax();
    a.url = '${utilW.origin}$servletSaveCmd';
    a.contentType = utilW.txtEncoding;
    a.handleAs = utilW.json;
    Map m = new Map();
    m.putIfAbsent('email', () => email);
    // Add total to recap
    recap.add(utilW.articleMap(null, null, null,tot ,null));

    m.putIfAbsent('item', () => JSON.encode(recap));
    a.params = m;
    a.method = utilW.post;
    // When receiving the response then display the feedback status received from back end
    a.addEventListener('response', (e) {
      //sleep().then((_) {
        hideTxt('spin', true);
        $['spin'].active = false;
        openDialog(a.lastResponse['status'], 'ok');
      //});
    });
    a.generateRequest();
  }

  //  ************** Dialog **************************

  // Open dialog frame and display content text
  void openDialog(String inTxt, String inBut, [String inBut2]) {
    $['txtDialog'].innerHtml = txt[inTxt];
    set('buDialogID', inTxt);
    // Display button only when value is not null
    if (inBut != null) {
      $['ok'].innerHtml = txt[inBut];
      hideTxt('ok', false);
    } else {
      hideTxt('ok', true);
    }
    // Display second button only when value is not null
    if (inBut2 != null) {
      $['nok'].innerHtml = txt[inBut2];
      hideTxt('nok', false);
    } else {
      hideTxt('nok', true);
    }
    $['dialog'].fit();
    $['dialog'].center();
    $['dialog'].open();
  }

  @reflectable
  void butDialogExec(e, d) {
    String diag =
        e.currentTarget.parent.id; // ((e as Event).currentTarget as Element).id
    bool closeDialog = true;
    hideTxt('spin', true);
    $['spin'].active = false;
    if (diag == 'law') {
      formReq(e, 'formIdent');
    } else if (diag == 'orderExec2') {
      hideTxt('spin', false);
      $['spin'].active = true;
      $['txtDialog'].innerHtml = '';
      $['ok'].innerHtml = '';
      $['dialog'].center();
      $['dialog'].fit();
      sendCommand(e, d);
      closeDialog = false;
    }
    if (closeDialog) {
      $['dialog'].close();
    }
  }

  @reflectable
  void butDialogNotExec(e, d) {
    $['dialog'].close();
  }

  //  ************** Cart "panier" management **************************

  String itemsStr;
  @property
  List itemsDsp = new List();
  List itemsL = new List();
  String intlRef, intlYear;
  @property
  String ref;
  @property
  Map select;
  @property
  String nr_bo = '0';
  @property
  String nr_ca = '0';
  @property
  String fees = '0';
  @property
  String nr_bo_tot = '0';
  int nbt = 0;

  Map<String, String> subMap() {
    Map r;
    itemsL.forEach((Map<String, String> a) {
      a.putIfAbsent('nr_bo', () => '0');
      a.putIfAbsent('nr_ca', () => '0');
      if (a['vin'] == intlRef) {
        if ((intlYear == null) ||
            (intlYear != null && a['year'] != null && a['year'] == intlYear))
          r = a;
      }
    });
    return r;
  }

  @reflectable
  void delItem(e, d) {
    String res = ((e as Event).currentTarget as Element).id;
    String ref, year;
    ref = intlRef;
    year = intlYear;
    intlRef = res.split('_')[0];
    if (res.split('_')[1] == '' || res.split('_')[1] == null) {
      intlYear = null;
    } else
      intlYear = res.split('_')[1];
    Map m = subMap();
    if (ref == intlRef && year == intlYear) {
      set('nr_bo', '0');
      set('nr_ca', '0');
    } else {
      m['nr_bo'] = 0;
      m['nr_ca'] = 0;
      calcTot();
      itemsStr = JSON.encode(itemsL);
      set('itemsDsp', JSON.decode(itemsStr));
    }
    intlRef = ref;
    intlYear = year;
  }

  @reflectable
  void addToCart(e, d) {
    if (intlRef == null) {
      return;
    }
    set(d['id'], d['nr']); // set nr_bo or nr_ca
    Map m = subMap();
    m[d['id']] = d['nr'];
    calcTot();
    itemsStr = JSON.encode(itemsL);
    set('itemsDsp', JSON.decode(itemsStr));
  }

  void setRefText(String r, String y) {
    intlRef = r;
    intlYear = y;
    if (intlYear == null) {
      set('ref', '${txtW[intlRef]}');
    } else {
      set('ref', '${txtW[intlRef]} $intlYear');
    }
    for (WineOrder but in this.querySelectorAll('wine-order-el')) {
      but.active(r, y);
    }
  }

  @reflectable
  void setRef(e, detail) {
    setRefText(detail['id'], detail['year']);
    Map m = subMap();
    set('nr_bo', m['nr_bo']);
    set('nr_ca', m['nr_ca']);
  }

  void calcTot() {
    double res = 0.0;
    clear('recapDsp');
    recap.clear();
    nbt = 0;
    int nrBo, nrCa;
    // Retrieve info for each bottle
    itemsL.forEach((Map<String, String> a) {
      nrBo = int.parse('${a['nr_bo']}');
      nrCa = int.parse('${a['nr_ca']}');
      res += double.parse(a['bo']) * nrBo + double.parse(a['ca']) * nrCa;
      if (nrBo != 0) {
        recap.add(utilW.articleMap(
            a['vin'], a['year'], TextW.bo, a['bo'], a['nr_bo']));
        add(
            'recapDsp',
            utilW.articleMap(
                a['vin'], a['year'], txt[TextW.bo], a['bo'], a['nr_bo'], true));
      }
      if (nrCa != 0) {
        recap.add(utilW.articleMap(
            a['vin'], a['year'], TextW.ca, a['ca'], a['nr_ca']));
        add(
            'recapDsp',
            utilW.articleMap(
                a['vin'], a['year'], txt[TextW.ca], a['ca'], a['nr_ca'], true));
      }
      nbt = nbt + nrBo;
      nbt = nbt + (nrCa * 6);
    });
    set('nr_bo_tot', nbt.toString());
    set('recap', recap);

    // Frais de port
    set('fees', utilW.getTransFee(cp, nr_bo_tot, co));
    res = res + double.parse(fees);
    set('tot', res.toStringAsFixed(2));
  }
}
