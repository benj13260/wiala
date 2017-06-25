@HtmlImport('contact_el.html')
library wiala.web.contact;

import 'package:polymer/polymer.dart';
import 'package:web_components/web_components.dart' show HtmlImport;
import 'package:polymer_elements/google_map.dart';
import 'package:polymer_elements/google_map_marker.dart';

import 'dart:html';
import 'textW.dart';


@PolymerRegister('contact-el')
class Contact extends PolymerElement {

  Contact.created() : super.created();

  @property Map<String, String> txt = new Map();

  void ready() {
    TextW.setLang(window.navigator.language, Uri.base.queryParameters['lang']);
    set('txt', TextW.getTxt(TextW.contact));
  }

  @reflectable
  void page(Event e, detail) {
    //print('-> ' + (e.currentTarget as Element).attributes['id']);
    window.location.replace('https://www.google.com/maps/place/1+Rue+de+la+Glaci%C3%A8re,+11350+Tuchan,+France/@42.886358,2.7207412,17z/data=!3m1!4b1!4m2!3m1!1s0x12b03eebc204ac3b:0xa4448792eb56f9?hl=fr-FR');

  }


}
