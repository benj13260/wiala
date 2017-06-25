library wiala.web.util;

import 'dart:html';
import 'textW.dart';

class utilW {
  static String jsonEncoding =
      'application/javascript'; //'Content-Type: application/javascript'
  static String txtEncoding =
      'text/plain; charset=utf-8'; //'Content-Type: application/javascript'
  static String txtGWTEncoding = 'text/x-gwt-rpc; charset=utf-8"';
  static String json = 'json';
  static String text = 'text';
  static String post = 'POST';
  static String get = 'get';

  static String styleBord = 'border-color: rgb(133, 65, 90);';
  static String styleBordtr = 'border-color: transparent;';

  static String prefix = '***';

  static String login = 'login';
  static String ident = 'ident';
  static String registered = "registered";

  static String origin;  //localhost vs chateau-wiala.com

  static Map<String, String> coList = {'fr': 'France', 'ge': 'Germany', 'en': 'Germany'};


  static bool devEnv(String baseServlet) {
    if (baseServlet.contains('localhost')) {
      origin = 'http://localhost:8888';
      return true;
    }
    origin = 'http://www.chateau-wiala.com';
    return false;

  }

  static void addBorder(Element e, [bool b = true]) {
    if (b) {
      e.setAttribute('style', styleBord);
    } else {
      e.setAttribute('style', styleBordtr);
    }
  }

  static Map<String, String> articleMap(
      String vin, String year, String type, String valu, String nr,
      [bool ref = false]) {
    Map<String, String> m = new Map();

    if (vin != null) {
      if (ref) {
        m.putIfAbsent('vin_ref', () => vin);
      }
      m.putIfAbsent('vin', () => TextW.wine_ref[vin]);
      year != null ? m.putIfAbsent('year', () => year) : null;
      m.putIfAbsent('type', () => type);
      m.putIfAbsent('valu', () => valu);
      m.putIfAbsent('nr', () => nr);
      double res = double.parse(nr) * double.parse(valu);
      m.putIfAbsent('tot', () => res.toStringAsFixed(2));
    }else{
      m.putIfAbsent('vin', () => 'tot');
      m.putIfAbsent('tot', () => valu);
    }
    return m;
  }

  static List<int> dept = [11, 31, 34, 66];
  static String transFee = '1,24,20.0,30.0;25,60,30.0,40.0;61,1000,30.0,45.0';
  static String transFeeGe = '1,6,30.0;7,1000,0.0';

  static String getTransFee(String cpS, String nr_boS, String co) {
    int cp = 0;
    try{
      cp = int.parse(cpS);
    }
    catch(e){
      return '0.0';
    }
    int nr_bo = int.parse(nr_boS);
    String res = '0.0';

    if(co == coList['fr']) {
      // Depending which departments is considered as "limit".
      // 1,24,20.0,30.0: Between 1 and 24 bottles:
      // Fees 20.0 Euros if delivery city is within limit department.
      // Fees 30.0 Euros if out
      bool isLimit = dept.contains(cp);
      transFee.split(';').forEach((String inp) {
        if (int.parse(inp.split(',')[0]) <= nr_bo &&
            nr_bo <= int.parse(inp.split(',')[1])) {
          if (isLimit) {
            res = inp.split(',')[2];
          } else
            res = inp.split(',')[3];
        }
      });

    }else if( co == coList['ge']) {
      // '1,6,30.0;7,1000,0.0'
      // Delivery of a box needs to be paid. Starting from 2 it's free
      transFeeGe.split(';').forEach((String inp) {
        if (int.parse(inp.split(',')[0]) <= nr_bo &&
            nr_bo <= int.parse(inp.split(',')[1])) {
          res = inp.split(',')[2];
        }
      });
    }

    return res;
  }
}
