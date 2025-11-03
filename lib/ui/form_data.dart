import 'package:flutter/material.dart';
import 'tampil_data.dart';

class FormDataPage extends StatefulWidget {
  const FormDataPage({super.key});

  @override
  State<FormDataPage> createState() => _FormDataPageState();
}

class _FormDataPageState extends State<FormDataPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController namaController = TextEditingController();
  final TextEditingController nimController = TextEditingController();
  final TextEditingController tahunController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Input Data")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                controller: namaController,
                decoration: const InputDecoration(labelText: "Nama"),
                validator: (value) => value!.isEmpty ? "Masukkan nama" : null,
              ),
              TextFormField(
                controller: nimController,
                decoration: const InputDecoration(labelText: "NIM"),
                validator: (value) => value!.isEmpty ? "Masukkan NIM" : null,
              ),
              TextFormField(
                controller: tahunController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(labelText: "Tahun Lahir"),
                validator: (value) =>
                    value!.isEmpty ? "Masukkan tahun lahir" : null,
              ),
              const SizedBox(height: 20),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => TampilDataPage(
                            nama: namaController.text,
                            nim: nimController.text,
                            tahunLahir: int.parse(tahunController.text),
                          ),
                        ),
                      );
                    }
                  },
                  child: const Text("Simpan"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
