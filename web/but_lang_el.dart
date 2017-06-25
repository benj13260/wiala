@HtmlImport('but_lang_el.html')
library wiala.web.butlang;

import 'package:polymer/polymer.dart';
import 'package:web_components/web_components.dart' show HtmlImport;
import 'package:polymer_elements/paper_button.dart';

import 'dart:html';


@PolymerRegister('but-lang-el')
class But extends PolymerElement {

  But.created() : super.created();

  @property String i_id;
  @property String i_src;
  @property String i_text;
  @property String i_active;

  @reflectable
  void page(Event e, detail) {
    fire('but-click', detail: i_id);
  }

  @Observe('i_active')
  void toggle(String p) {
    PaperButton b = this.querySelector('paper-button');
    if (i_id != i_active) {
      b.active = false;
      b.classes.removeWhere((v) => v == 'keyboard-focus');
    } else {
      b.classes.add('keyboard-focus');
    }
  }

}
