import 'dart:convert' as convert;

import 'package:democlass/core/staticfile.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

import '../model/news.dart';
class Apicall {

   Future<news?>? getnewsdata() async {
      //exception handling
    try {

      // ?q=apple
      // &from=2026-10-13&to=2026-10-13
      // &sortBy=popularity
      // &apiKey=API_KEY
      var url = Uri.https(
        Staticfile.baseurl,
        Staticfile.path,
        {'q': 'apple',
          'sortBy': 'popularity',
          'apiKey': Staticfile.apikey,});
          var response = await http.get(url);
          if(response.statusCode.toString().contains("20")){
            //parse
            var jsonresponse = convert.jsonDecode(response.body);;
            var newsdata = news.fromJson(jsonresponse);
            return newsdata;
          }else{
            //failure
            return null;
          }
    }catch(e){
      return null;

    }
  }
}