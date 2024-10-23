import 'dart:convert';

import 'package:http/http.dart' as http;

class ServerApi {

  static Future<num> getOutputAmount({required String inputCurrency, required num inputAmount, required String outputCurrency}) async {
    var response = await http.post(Uri.parse("https://transh-1facfec1bed3.herokuapp.com/get_route"),
    body: json.encode({
        "input_currency": inputCurrency,
        "input_amount": inputAmount,
        "output_currency": outputCurrency
    }));
    var jsonDecode = json.decode(response.body)["output_amount"];
    return jsonDecode;
  }

}