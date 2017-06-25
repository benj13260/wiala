@HtmlImport('location_el.html')
library wiala.web.location;

import 'package:polymer/polymer.dart';
import 'package:web_components/web_components.dart' show HtmlImport;
import 'package:polymer_elements/iron_image.dart';

import 'dart:html';
import 'textW.dart';


@PolymerRegister('location-el')
class Location extends PolymerElement{

  Location.created() : super.created();

  @property Map<String, String> txt = new Map();

  void ready() {
    TextW.setLang(window.navigator.language, Uri.base.queryParameters['lang']);
    set('txt', TextW.getTxt(TextW.domain));
  }

  // Set properties values when attached
  void attached() {
    ($['bnbtxt'] as SpanElement).innerHtml = txt['bnb_2'];
  }

}
