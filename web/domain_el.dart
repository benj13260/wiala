@HtmlImport('domain_el.html')
library wiala.web.domain;

import 'package:polymer/polymer.dart';
import 'package:web_components/web_components.dart' show HtmlImport;
import 'package:polymer_elements/iron_image.dart';

import 'dart:html';
import 'textW.dart';


@PolymerRegister('domain-el')
class Domain extends PolymerElement{

  Domain.created() : super.created();

  @property Map<String, String> txt = new Map();

  void ready() {
    TextW.setLang(window.navigator.language, Uri.base.queryParameters['lang']);
    set('txt', TextW.getTxt(TextW.domain));
  }


}
