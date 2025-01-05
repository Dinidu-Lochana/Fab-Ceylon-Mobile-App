import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  static const String _baseUrl = 'http://localhost:4000/api/customers';

  // Login API call
  static Future<Map<String, dynamic>> login(String contactNumber, String password) async {
    final response = await http.post(
      Uri.parse('$_baseUrl/login'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({'contactNumber': contactNumber, 'password': password}),
    );
    
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Failed to login');
    }
  }

  // Signup API call
  static Future<void> signup(String name, String contactNumber, String password) async {
    final response = await http.post(
      Uri.parse('$_baseUrl/signup'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({'name': name, 'contactNumber': contactNumber, 'password': password}),
    );

    if (response.statusCode != 200) {
      throw Exception('Failed to sign up');
    }
  }
}
