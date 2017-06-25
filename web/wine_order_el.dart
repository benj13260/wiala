@HtmlImport('wine_order_el.html')
library wiala.web.wine_order;

import 'package:polymer/polymer.dart';
import 'package:web_components/web_components.dart' show HtmlImport;
import 'package:polymer_elements/paper_input.dart';
import 'package:polymer_elements/paper_button.dart';
import 'dart:html';
import 'dart:convert';
import 'textW.dart';
import 'utilWiala.dart';

@PolymerRegister('wine-order-el')
class WineOrder extends PolymerElement {

  WineOrder.created() : super.created();

  factory WineOrder() => document.createElement('wine-order-el');

  @property String i_id;
  @property String i_vin;
  @property String i_year;
  @property String i_bo;
  @property String i_ca;
  @property String i_cabo;
  @property String i_url;
  @property double i_tot = 0.0;
  @property String i_recap;
  @property Map<String, String> txt = new Map();

  void ready() {
    TextW.setLang(window.navigator.language, Uri.base.queryParameters['lang']);
    set('txt', TextW.getTxt(TextW.order));
  }

  void attached() {
    double j = double.parse(i_ca);
    if (j != null) {
      set('i_cabo', (j / 6).toStringAsFixed(2));
    }
    if (i_year == null || i_year == 'null' || i_year == 'undefined') {
      i_year = null;
      ($['year'] as Element).setAttribute('Style', 'display:none;');
    }
  }

  @reflectable
  void change(Event e, var detail) {
    calc();
    fire('price', detail: 'price');
  }

  void calc() {
    double v1 = getval($['bot'].value);
    double v2 = getval($['ca'].value);
    $['bot'].value = v1.toString();
    $['ca'].value = v2.toString();
    double res = v1 * getval(i_bo) + v2 * getval(i_ca);
    set('i_tot', res);

    v1 != 0 ? utilW.addBorder($['inputBo']) : utilW.addBorder(
        $['inputBo'], false);
    v2 != 0 ? utilW.addBorder($['inputCa']) : utilW.addBorder(
        $['inputCa'], false);

    // Build article Map to be transformed in JSON object
    Map m1,
        m2;
    if (v1 != 0) {
      m1 = utilW.articleMap(i_vin, i_year, TextW.bo, i_bo, v1.toString());
    }
    if (v2 != 0) {
      m2 = utilW.articleMap(i_vin, i_year, TextW.ca, i_ca, v2.toString());
    }
    set('i_recap', '${JSON.encode(m1)}${JSON.encode(m2)}'.replaceAll('null', ''));
  }

  double getval(String val) {
    if (val == '') {
      return 0.0;
    }
    double v = double.parse(val);
    if (v < 0) {
      return 0.0;
    }
    return v;
  }

  @reflectable
  void ref(e,detail){
    fire('ref',detail:{'id': i_id,'year':i_year,'vin':i_vin});
  }

  void active(String actif_id, String actif_year){
    PaperButton b = this.querySelector('paper-button');
    if (actif_id == i_id && actif_year == i_year ){
       b.classes.add('keyboard-focus');
       b.classes.add('wiala-color-i');
     }else{
       b.classes.removeWhere((v) => v == 'keyboard-focus');
       b.classes.removeWhere((v) => v == 'wiala-color-i');
    }
  }

}
