import 'dart:convert' as convert;
import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:mobile_mechanich_hacaton_/Model/Entity/mehanic_entity.dart';

class ApiService {
  static const ip = "172.20.10.6";
  static const host = "8080";
  static const scheme = "http";
  static Future<bool> postSignUp({
    required String name,
    required String surename,
    required String emailAddress,
    required String password,
    required String passwordController,
    required String role,
  }) async {
    var client = http.Client();
    print(name);
    print(surename);
    print(emailAddress);
    print(password);
    print(passwordController);
    print(role);
    var jsosan = {
      "name": name,
      "surname": surename,
      "email": emailAddress,
      "password": password,
      "password1": passwordController,
      "role": role
    };
    // Await the http get response, then decode the json-formatted response.
    var response = await http.post(
      Uri.parse('$scheme://$ip:$host/api/user'),
      headers: {"Content-Type": "application/json"},
      body: json.encode({
        "name": name,
        "surname": surename,
        "email": emailAddress,
        "password": password,
        "password1": passwordController,
        "role": role
      }),
    );
    if (response.statusCode == 200) {
      print(response.statusCode);
      print(response.body);
      return true;
    } else {
      return false;
    }
  }

  static Future<dynamic> getListMehanic({
    required String tamga,
  }) async {
    print("get $tamga");
    var client = http.Client();
    // Await the http get response, then decode the json-formatted response.
    var response = await http.get(
      Uri.parse('$scheme://$ip:$host/api/user/$tamga'),
      headers: {"Content-Type": "application/json"},
    );
    if (response.statusCode == 200) {
      List<Map<String, dynamic>> jsonList =
          List<Map<String, dynamic>>.from(jsonDecode(response.body));

      print(jsonList);
      List<ServiceMehanicEntity> mehanicList = jsonList
          .map((jsonItem) => ServiceMehanicEntity.fromJson(jsonItem))
          .toList();

      return mehanicList;
    } else {
      return false;
    }
  }
  Future<void> fetchUserProfile({
    required String tamga,
  }) async {
    final url =
        '172.20.10.6:8080/user/user?id=27'; // Замените на URL вашего API
    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        // Успешно получены данные профиля
        final userProfileData = response.body;
        // Обработайте userProfileData в соответствии с вашими потребностями
        print('User profile data: $userProfileData');
      } else {
        // Ошибка при получении данных профиля
        print('Failed to fetch user profile: ${response.statusCode}');
      }
    } catch (e) {
      // Обработка ошибок при отправке запроса
      print('Error fetching user profile: $e');
    }
  }
}


