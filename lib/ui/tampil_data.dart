import 'package:flutter/material.dart';
import 'dart:math';

class TampilDataPage extends StatelessWidget {
  final String nama;
  final String nim;
  final int tahunLahir;

  const TampilDataPage({
    super.key,
    required this.nama,
    required this.nim,
    required this.tahunLahir,
  });

  int hitungUmur() {
    int tahunSekarang = DateTime.now().year;
    return max(0, tahunSekarang - tahunLahir);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Perkenalan")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(
          "Nama saya $nama, NIM $nim, dan umur saya adalah ${hitungUmur()} tahun.",
          style: const TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
