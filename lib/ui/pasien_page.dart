import 'package:flutter/material.dart';
import 'package:data_klinik/model/home.dart';
import 'package:data_klinik/model/pasien.dart';
import 'package:data_klinik/ui/pasien_detail.dart';

class PasienPage extends StatefulWidget {
  final Home home;

  const PasienPage({super.key, required this.home});

  @override
  State<PasienPage> createState() => _PasienPageState();
}

class _PasienPageState extends State<PasienPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Data Pasien"),
      ),
      body: ListView(
        children: [
          GestureDetector(
            child: const Card(
              child: ListTile(
                title: Text("Dika s"),
              ),
            ),
            onTap: () {
              Pasien nina = Pasien(
                nomorRm: "001",
                namaPasien: "Dika s",
                tanggalLahirpasien: "1 Januari 2000",
                nomorTeleponpasien: "0851234567890",
                alamat: "Jakarta",
              );
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PasienDetai(pasien: nina),
                  ));
            },
          ),
        ],
      ),
    );
  }
}
