@HtmlImport('but_plus_min_el.html')
library wiala.web.butplusmin;

import 'package:polymer/polymer.dart';
import 'package:web_components/web_components.dart' show HtmlImport;

import 'dart:html';
import 'textW.dart';

@PolymerRegister('but-plus-min-el')
class PlusMin extends PolymerElement {

  PlusMin.created() : super.created();

  @property String i_id; // nr_bo or nr_ca
  //@property
  @Property(reflectToAttribute: true) String i_nr;
  @property String i_text;
  @property Map<String, String> txt = new Map();
  @property String lang;

  void ready() {
    TextW.setLang(window.navigator.language, Uri.base.queryParameters['lang']);
    //setLangForm(TextW.lang);
    set('lang', TextW.lang);
    set('txt', TextW.getTxt(TextW.order));
  }

  void attached() {
    if (i_id == 'nr_ca'){
      ($['offer'] as Element).innerHtml = txt['offer'];
    }
  }

  @Observe('i_nr')
  void plusMin(newNr) {
    fire('plus-min', detail: {'id' : i_id, 'nr' : i_nr});
  }

  @reflectable
  void plus(Event e, detail) {
    set('i_nr',(int.parse('$i_nr')+1).toString());
  }
  @reflectable
  void min(Event e, detail) {
    int r = int.parse('$i_nr')-1;
    r = r < 0 ? 0 : r;
    set('i_nr',r.toString());
  }

}
