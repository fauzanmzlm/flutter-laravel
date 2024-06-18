import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  static const String baseUrl = 'http://192.168.0.19:8000/api';

  Future<String> testConnection() async {
    final response = await http.get(Uri.parse('$baseUrl/test-connection'));

    if (response.statusCode == 200) {
      return json.decode(response.body)['message'];
    } else {
      throw Exception('Failed to connect to the server');
    }
  }
}
