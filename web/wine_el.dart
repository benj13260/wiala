@HtmlImport('wine_el.html')
library wiala.web.wine;

import 'package:polymer/polymer.dart';
import 'package:web_components/web_components.dart' show HtmlImport;

import 'dart:html';
import 'textW.dart';

@PolymerRegister('wine-el')
class Wine extends PolymerElement {

  Wine.created() : super.created();

  @property String i_id;
  @property String i_desc;
  @property String i_cepages;
  @property String i_age;
  @property String i_sol;
  @property String i_degust;
  @property String i_accords;
  @property String i_rewards;

  @property Map<String, String> txt = new Map();

  void ready() {
    TextW.setLang(window.navigator.language, Uri.base.queryParameters['lang']);
    set('txt', TextW.getTxt(TextW.wines));
  }

  void attached(){
    if (i_rewards == null){
      ($['winerewards'] as Element).setAttribute('style','display:none;');
    }
  }

}
