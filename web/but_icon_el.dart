@HtmlImport('but_icon_el.html')
library wiala.web.buticon;

import 'package:polymer/polymer.dart';
import 'package:web_components/web_components.dart' show HtmlImport;
import 'package:polymer_elements/paper_button.dart';
import 'dart:html';
import 'textW.dart';

@PolymerRegister('but-icon-el')
class But extends PolymerElement {

  But.created() : super.created();

  @property String i_id;
  @property String i_src;
  @property String i_text;
  @property String i_active = TextW.team;

  @reflectable
  void page(Event e, detail) {
    fire('but-click', detail: i_id);
  }

    @Observe('i_active')
    void toggle(String p) {
      PaperButton b = this.querySelector('paper-button');
      Element a = this.querySelector('#arrow');
      if (i_id != i_active) {
        b.active = false;
        b.classes.removeWhere((v) => v == 'keyboard-focus');
        a.setInnerHtml('');
      } else {
        a.setInnerHtml('>');
        b.classes.add('keyboard-focus');
      }
    }
  }
