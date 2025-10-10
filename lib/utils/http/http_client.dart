import 'dart:convert';
import 'package:http/http.dart' as http;

class HttpHelper {
  static const String baseUrl = 'https://your-api-url.com/api';

  static Future<dynamic> getRequest(String endpoint) async {
    final url = Uri.parse('$baseUrl/$endpoint');
    try {
      final response = await http.get(url);
      return _handleResponse(response);
    } catch (e) {
      throw Exception('GET request failed: $e');
    }
  }

  static Future<dynamic> postRequest(String endpoint, Map<String, dynamic> body) async {
    final url = Uri.parse('$baseUrl/$endpoint');
    try {
      final response = await http.post(
        url,
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode(body),
      );
      return _handleResponse(response);
    } catch (e) {
      throw Exception('POST request failed: $e');
    }
  }

  static Future<dynamic> putRequest(String endpoint, Map<String, dynamic> body) async {
    final url = Uri.parse('$baseUrl/$endpoint');
    try {
      final response = await http.put(
        url,
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode(body),
      );
      return _handleResponse(response);
    } catch (e) {
      throw Exception('PUT request failed: $e');
    }
  }

  static Future<dynamic> deleteRequest(String endpoint) async {
    final url = Uri.parse('$baseUrl/$endpoint');
    try {
      final response = await http.delete(url);
      return _handleResponse(response);
    } catch (e) {
      throw Exception('DELETE request failed: $e');
    }
  }

  static dynamic _handleResponse(http.Response response) {
    final statusCode = response.statusCode;
    final body = response.body.isNotEmpty ? jsonDecode(response.body) : {};

    if (statusCode >= 200 && statusCode < 300) {
      return body;
    } else if (statusCode == 400) {
      throw Exception('Bad Request: ${body['message'] ?? 'Invalid data'}');
    } else if (statusCode == 401) {
      throw Exception('Unauthorized: ${body['message'] ?? 'Login required'}');
    } else if (statusCode == 404) {
      throw Exception('Not Found: ${body['message'] ?? 'Resource missing'}');
    } else if (statusCode >= 500) {
      throw Exception('Server Error: ${body['message'] ?? 'Try again later'}');
    } else {
      throw Exception('HTTP Error $statusCode: ${body.toString()}');
    }
  }
}
