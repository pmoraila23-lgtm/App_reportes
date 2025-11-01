import 'package:flutter/material.dart';

class ReportCard extends StatelessWidget {
  final String nombre;
  final String ubicacion;
  final String tiempo;
  final String descripcion;
  final String imagen;

  const ReportCard({
    super.key,
    required this.nombre,
    required this.ubicacion,
    required this.tiempo,
    required this.descripcion,
    required this.imagen,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              leading: const CircleAvatar(child: Icon(Icons.person)),
              title: Text(nombre),
              subtitle: Text(ubicacion),
              trailing: Text(tiempo),
            ),
            const SizedBox(height: 8),
            Container(
              height: 180,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[200],
                image: imagen.isNotEmpty
                    ? DecorationImage(
                        image: NetworkImage(imagen),
                        fit: BoxFit.cover,
                      )
                    : null,
              ),
              alignment: Alignment.center,
              child: imagen.isEmpty
                  ? const Icon(Icons.camera_alt, size: 40, color: Colors.grey)
                  : null,
            ),
            const SizedBox(height: 8),
            Text(descripcion),
            const Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Icon(Icons.thumb_up_alt_outlined),
                Icon(Icons.comment_outlined),
                Icon(Icons.share_outlined),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
