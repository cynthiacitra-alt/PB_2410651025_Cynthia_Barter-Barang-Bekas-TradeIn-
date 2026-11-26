import 'dart:convert';
import 'package:http/http.dart' as http;

import '../models/task_item.dart';

class TaskApiService {
  final String url = 'https://jsonplaceholder.typicode.com/todos';

  Future<List<TaskItem>> fetchTasks() async {
    try {
      final response = await http
          .get(Uri.parse(url))
          .timeout(const Duration(seconds: 10));

      if (response.statusCode == 200) {
        final decodedData = jsonDecode(response.body);

        if (decodedData is List) {
          return decodedData.take(10).map((item) {
            return TaskItem.fromJson(item);
          }).toList();
        } else {
          throw Exception('Format data tidak sesuai. Response bukan List.');
        }
      } else {
        throw Exception('Server mengembalikan status ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Gagal memuat data. Periksa koneksi atau struktur data.');
    }
  }
}