import 'package:flutter/material.dart';

class JadwalPage extends StatelessWidget {
  const JadwalPage({super.key});

  static const List<Map<String, String>> jadwalKuliah = [
    {
      "mataKuliah": "Pemrograman Mobile",
      "dosen": "Bambang Widodo",
      "waktu": "08.00 - 10.00",
    },
    {
      "mataKuliah": "Struktur Data",
      "dosen": "Yudistira",
      "waktu": "10.00 - 12.00",
    },
    {
      "mataKuliah": "Pemrograman Web",
      "dosen": "Krisnamurti",
      "waktu": "13.00 - 15.00",
    },
    {
      "mataKuliah": "Database",
      "dosen": "Yogi Purnama",
      "waktu": "15.00 - 17.00",
    },
    {
      "mataKuliah": "Cyber Security",
      "dosen": "Suryani",
      "waktu": "17.00 - 19.00",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        for (int i = 0; i < jadwalKuliah.length; i++) ...[
          ListTile(
            leading: CircleAvatar(
              backgroundImage: const AssetImage("assets/images/avatar.jpg"),
              child: Text(
                jadwalKuliah[i]["mataKuliah"]![0],
                style: const TextStyle(color: Colors.white),
              ),
            ),
            title: Text(jadwalKuliah[i]["mataKuliah"]!),
            subtitle: Text(jadwalKuliah[i]["dosen"]!),
            trailing: Text(jadwalKuliah[i]["waktu"]!),
          ),
          if (i < jadwalKuliah.length - 1)
            const Divider(color: Colors.black),
        ],
      ],
    );
  }
}