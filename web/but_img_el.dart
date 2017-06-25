@HtmlImport('but_img_el.html')
library wiala.web.butimg;

import 'package:polymer/polymer.dart';
import 'package:web_components/web_components.dart' show HtmlImport;

import 'dart:html';

@PolymerRegister('but-img-el')
class But extends PolymerElement {

  But.created() : super.created();

  @property String i_id;
  @property String i_src;
  @property String i_text;

  @reflectable
  void page(Event e, detail) {
    fire('but-click', detail: i_id);
  }

}
