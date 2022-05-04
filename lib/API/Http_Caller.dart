import 'package:http/http.dart' as http;

import 'dart:convert';

import 'package:otpapp/models/userBoundary.dart';
import 'package:otpapp/constant.dart';

// ---------- User Related API ---------------

void createNewUser(String _id, String phone, String firstName,String lastName,
    void onLoaded(dynamic userBoundary)) async {
  var client = http.Client();

  try {
    var uriResponse = await client.post(
        Uri.http("10.0.2.2:8080", "/users/signup"),
        body: jsonEncode({
          '_id': _id,
          'phone': phone,
          'firstName': firstName,
          'lastName': lastName
        }),
        headers: kJsonHeaders);

    onLoaded(UserBoundary.fromJson(jsonDecode(uriResponse.body)));
  } catch (e) {
    onLoaded("Error");
  } finally {
    client.close();
  }
}