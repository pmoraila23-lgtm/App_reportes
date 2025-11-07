
import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/report.dart';

class ApiService {
  final String baseUrl = 'http://localhost:9090';

  Future<List<Report>> getReports() async {
    final response = await http.get(
      Uri.parse('$baseUrl/reports'),
    );

    if (response.statusCode == 200) {
    
      final List<dynamic> data = jsonDecode(response.body);
      
    
      return data.map((item) => Report.fromJson(item)).toList();
    } else {
     
      throw Exception('Error al obtener los reportes');
    }
  }

  Future<Report> getReportById(int id) async {
    final response = await http.get(
      Uri.parse('$baseUrl/reports/$id'),
    );

    if (response.statusCode == 200) {
      final Map<String, dynamic> data = jsonDecode(response.body);
      return Report.fromJson(data);
    } else {
      throw Exception('Error al obtener el reporte');
    }
  }
}