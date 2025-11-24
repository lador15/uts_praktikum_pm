import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String fullName = "Marsa Dhiaulhaq Farras";
  static const String npm = "122005002";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UTS Mobile Programming',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('UTS Mobile Programming'),
        ),
        body: Center(
          child: Container(
            color: Colors.yellow,
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  'Foto Profil Saya',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 12),

                // FOTO PROFIL (ASSET)
                SizedBox(
                  width: 160,
                  height: 160,
                  child: ClipOval(
                    child: Image.asset(
                      'assets/foto_saya.jpeg', // pastikan file ini ada
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                const SizedBox(height: 12),

                Text(
                  fullName,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF0B63A8),
                  ),
                  textAlign: TextAlign.center,
                ),

                const SizedBox(height: 6),

                Text(
                  npm,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Color(0xFF0B63A8),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
