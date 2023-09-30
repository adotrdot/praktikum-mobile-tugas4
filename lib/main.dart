import 'package:flutter/material.dart';
import 'package:praktikum_pert4/ui/login_page.dart';
import 'package:praktikum_pert4/ui/produk_page.dart';
import 'package:praktikum_pert4/ui/registrasi_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Toko Kita',
      debugShowCheckedModeBanner: false,
      home: ProdukPage(),
    );
  }
}
