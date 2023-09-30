import 'package:flutter/material.dart';
import 'package:praktikum_pert4/model/produk.dart';
import 'package:praktikum_pert4/ui/produk_form.dart';

class ProdukDetail extends StatefulWidget {
  Produk? produk;

  ProdukDetail({Key? key, this.produk}) : super(key: key);

  @override
  State<ProdukDetail> createState() => _ProdukDetailState();
}

class _ProdukDetailState extends State<ProdukDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Produk'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              "Kode : ${widget.produk!.kodeProduk}",
              style: const TextStyle(fontSize: 20.0),
            ),
            Text(
              "Nama : ${widget.produk!.namaProduk}",
              style: const TextStyle(fontSize: 18.0),
            ),
            Text(
              "Harga : Rp. ${widget.produk!.hargaProduk.toString()}",
              style: const TextStyle(fontSize: 18.0),
            ),
            _tombolHapusEdit()
          ],
        ),
      ),
    );
  }

  // Membuat tombol edit dan hapus
  Widget _tombolHapusEdit() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        // Tombol edit
        OutlinedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          ProdukForm(produk: widget.produk!)));
            },
            child: const Text("EDIT")),

        // Tombol hapus
        OutlinedButton(
            onPressed: () => confirmHapus(), child: const Text("DELETE")),
      ],
    );
  }

  // Method confirm hapus
  void confirmHapus() {
    AlertDialog alertDialog = AlertDialog(
      content: const Text("Yakin ingin menghapus data ini?"),
      actions: [
        // Tombol hapus
        OutlinedButton(onPressed: () {}, child: const Text("Ya")),

        // Tombol batal
        OutlinedButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("Batal")),
      ],
    );

    showDialog(context: context, builder: (context) => alertDialog);
  }
}
