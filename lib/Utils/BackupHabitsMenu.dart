// ignore: file_names
import 'package:flutter/material.dart';
import 'package:habit/UtilsContent/TheForContent.dart';

class BackupHabitsScreen extends StatelessWidget {
  const BackupHabitsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Backup Habits'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            _buildBackup(
              context,
              title: 'Export your habits to a file. You can import them later.',
              buttonText: 'Export to file',
              icon: Icons.file_upload,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Theforcontent()));
              },
            ),
            const SizedBox(height: 20),
            _buildBackup(
              context,
              title: 'Import your habits from a file',
              buttonText: 'Import from file',
              icon: Icons.file_download,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Theforcontent()));
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBackup(
    BuildContext context, {
    required String title,
    required String buttonText,
    required IconData icon,
    required VoidCallback onPressed,
  }) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey[850],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 16),
          ),
          const SizedBox(height: 10),
          ElevatedButton.icon(
            onPressed: onPressed,
            icon: Icon(icon),
            label: Text(buttonText),
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(double.infinity, 50),
              backgroundColor: Colors.blue,
              textStyle: const TextStyle(fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}
