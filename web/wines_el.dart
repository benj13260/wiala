@HtmlImport('wines_el.html')
library wiala.web.wines;

import 'package:polymer/polymer.dart';
import 'package:web_components/web_components.dart' show HtmlImport;
import 'package:polymer_elements/paper_dialog.dart';

import 'dart:html';
import 'textW.dart';
import 'but_wine_el.dart';
import 'wine_el.dart';


@PolymerRegister('wines-el')
class Wines extends PolymerElement {

  Wines.created() : super.created();

  @property Map<String, String> txt = new Map();
  @property int tabselected = 0;

  void ready() {
    TextW.setLang(window.navigator.language, Uri.base.queryParameters['lang']);
    set('txt', TextW.getTxt(TextW.wines));
  }


  String currentPage = null;
  @reflectable
  void winePage(Event e, detail) {
    currentPage = detail+'D';
    ($[currentPage] as PaperDialog).open();
    set('tabselected',0);
  }

  @reflectable
  void closedialog(Event e, detail){
    if (currentPage != null) {
      ($[currentPage] as PaperDialog).close();
    }

  }


}
