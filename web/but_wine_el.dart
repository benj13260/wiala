@HtmlImport('but_wine_el.html')
library wiala.web.butwine;

import 'package:polymer/polymer.dart';
import 'package:web_components/web_components.dart' show HtmlImport;
import 'package:polymer_elements/paper_button.dart';

import 'dart:html';


@PolymerRegister('but-wine-el')
class But extends PolymerElement {

  But.created() : super.created();

  @property String i_id;
  @property String i_text;
  @property String i_subtext;

  @reflectable
  void page(Event e, detail) {
    fire('wine-click', detail: i_id);
}

}
