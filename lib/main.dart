=== FILE 2: lib/main.dart ===
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: AyatViewScreen(),
    );
  }
}

class AyatViewScreen extends StatefulWidget {
  const AyatViewScreen({super.key});

  @override
  State<AyatViewScreen> createState() => _AyatViewScreenState();
}

class _AyatViewScreenState extends State<AyatViewScreen> {
  bool showIndo = true;
  bool showEng = true;
  bool showPegon = true;

  final List<Map<String, String>> words = [
    {
      "arabic": "عَمَّ",
      "id": "Tentang apakah",
      "en": "About what",
      "pegon": "Saking punapa"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Juz 30")),
      body: ListView.builder(
        itemCount: words.length,
        itemBuilder: (context, index) {
          final w = words[index];
          return ListTile(
            title: Text(w["arabic"]!, style: const TextStyle(fontSize: 22)),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (showIndo) Text("ID: ${w["id"]}"),
                if (showEng) Text("EN: ${w["en"]}"),
                if (showPegon) Text("Pegon: ${w["pegon"]}"),
              ],
            ),
          );
        },
      ),
    );
  }
}
