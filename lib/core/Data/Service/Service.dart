// ignore_for_file: non_constant_identifier_names

import 'dart:convert';

import 'package:akl/core/Data/Module/Modules.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class Service extends GetxService {
  static final Client = http.Client();
  static Future FetchProducts() async {
    print("i'm fetching products");
    List Temp = [];
    var uri = Uri.https(
        'yummly2.p.rapidapi.com', '/feeds/list', // Reaching data inside api.
        {"limit": "20", "start": "0", "tag": "list.recipe.popular"});
    var response = await Client.get(
      uri,
      headers: {
        'X-RapidAPI-Key': '2374225dcbmsh38edf1f6d490378p1e1c9djsndd9df663be47',
        'X-RapidAPI-Host': 'yummly2.p.rapidapi.com'
      },
    );
    var JsonResponse = response.body;
    if (response.statusCode == 200) {
      Map data = jsonDecode(JsonResponse);
      for (var i in data["feed"]) {
        Temp.add(i["content"]);
      }
      print("I'm status code 200");
      return Modules.moduleFromSnapShot(
          Temp); // Return from module to Controller.
    } else {
      print("Connection Failed");
    }
  }
}
