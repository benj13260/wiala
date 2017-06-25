@HtmlImport('site_el.html')
library wiala.web.site;

import 'package:polymer/polymer.dart';
import 'package:web_components/web_components.dart' show HtmlImport;
import 'package:polymer_elements/neon_animated_pages.dart';
import 'package:polymer_elements/paper_menu.dart';
import 'package:polymer_elements/paper_drawer_panel.dart';
import 'package:polymer_elements/paper_header_panel.dart';
import 'package:polymer_elements/paper_toolbar.dart';
import 'package:polymer_elements/paper_menu.dart';
import 'package:polymer_elements/paper_item.dart';
import 'package:polymer_elements/paper_icon_button.dart';
import 'package:polymer_elements/paper_toast.dart';
import 'package:polymer_elements/neon_animatable_behavior.dart';

import 'dart:async';
import 'dart:html';
import 'textW.dart';
import 'wines_el.dart';
import 'domain_el.dart';
import 'team_el.dart';
import 'contact_el.dart';
import 'location_el.dart';
import 'rewards_el.dart';
import 'but_icon_el.dart';
import 'but_img_el.dart';
import 'but_lang_el.dart';
import 'order_el.dart';
import 'utilWiala.dart';

/*import 'bnb_el.dart';
import 'location_el.dart';
*/

import 'package:polymer_elements/iron_flex_layout.dart';

@PolymerRegister('site-el')
class Site extends PolymerElement {
  @property   String message = "";
  @property  String srcBG;
  int fond = 1;

  String currentPage;
  String initPage = TextW.team;

  @property
  List<Map<String, String>> menus = new List();
  @property
  Map<String, String> txt = new Map();

  bool isDevEnv = false;

  Site.created() : super.created();

  int onResizeWin = 1260;
  bool hidePanel;

  void ready() {
    TextW.setLang(window.navigator.language, Uri.base.queryParameters['lang']);
    set('menus', TextW.getTxt(TextW.menu));
    set('txt', TextW.getTxt(TextW.site));
    NeonAnimatedPages p = $['pages'];
    currentPage = p.selected;
    p.select(initPage);
    set('srcBG', 'images/fond/$fond.JPG');
    // Button menu active
    for (Element but in this.querySelectorAll('but-lang-el')) {
      but.setAttribute('i_active', TextW.lang);
    }
  }

  void attached(){
    isDevEnv = utilW.devEnv(window.location.href);
  }

  @reflectable
  void writeMessage(Event e, detail) {
    set('message', detail); //detail.toString();
  }

/*
  @reflectable
  void changePage(e, detail) {
    String s = $['pages'].selected;
    if (currentPage == s ){
      return;
    }
    if (s == TextW.order){
      ($['order'] as Order).enterFrame();
    }
  }
*/

  @Observe('message')
  void openToast(String m) {
   // ($['toast'] as PaperToast).show();
  }

  @reflectable
  void butclick(e, detail) {
    set('message', detail);
  }

  // URL lang
  void refreshSite(String lang) {
    String url;
    if (isDevEnv) {
      url = window.location.href;
      if (url.contains('lang')){
        //window.location.replace('${window.location.href}?lang=$lang');
        window.location.replace('${url.substring(0,url.length-2)}$lang');
      }else {
        window.location.replace('${window.location.href}?lang=$lang');
      }
    }else {
      window.location.replace('${utilW.origin}?lang=$lang');
    }
  }

  void changeBG(){
    fond = fond + 1;
    if (fond == 4) {
      fond = 1;
    }
    set('srcBG', 'images/fond/${fond}.JPG');
  }

  @reflectable
  void page(Event e, detail) {
    String page = detail; //(e.currentTarget as Element).attributes['id'];
    //set('message', page);
    // Change language
    if (page == TextW.fr || page == TextW.ge || page == TextW.en) {
      refreshSite(page);
      return;
    }
    // Facebook link
    if (page == TextW.news) {
      window.open('https://www.facebook.com/Château-Wiala-278358559217152', '_blank');
      return;
    }
    // Do not change anything if the page is the current one
    if (page == currentPage) {
      return;
    }

    // Button menu active
    for (Element but in this.querySelectorAll('but-icon-el')) {
      but.setAttribute('i_active', page);
    }
    // Open the given page
    ($['pages'] as NeonAnimatedPages).select(page);
    // Close drawaer
    if ($['drawerPanel'].narrow){
      $['drawerPanel'].closeDrawer();
    }
    // Display dialog when entering order page
    /*if (page == TextW.order) {
      ($['order'] as Order).enterFrame();
    }*/
    //Change page and background
    currentPage = page;
    changeBG();

  }
}
