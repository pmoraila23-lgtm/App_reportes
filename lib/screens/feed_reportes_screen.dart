import 'package:flutter/material.dart';
import '../widgets/report_card.dart';

class FeedReportesScreen extends StatelessWidget {
  const FeedReportesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Lista de reportes de ejemplo
    final reportes = [
      {
        "nombre": "Juan Pérez",
        "ubicacion": "Parque Central",
        "tiempo": "2h",
        "descripcion": "Alguien tiró basura en el parque.",
        "imagen": "",
      },
      {
        "nombre": "María López",
        "ubicacion": "Calle 5",
        "tiempo": "1h",
        "descripcion": "Se rompió una señal de tránsito.",
        "imagen": "https://picsum.photos/200/300",
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Reportes"),
      ),
      body: ListView.builder(
        itemCount: reportes.length,
        itemBuilder: (context, index) {
          final reporte = reportes[index];
          return ReportCard(
            nombre: reporte["nombre"]!,
            ubicacion: reporte["ubicacion"]!,
            tiempo: reporte["tiempo"]!,
            descripcion: reporte["descripcion"]!,
            imagen: reporte["imagen"]!,
          );
        },
      ),
    );
  }
}
