import 'package:flutter/material.dart';
import 'package:kp_mobile_project/evident_screen.dart';

class CreateID extends StatelessWidget {
  const CreateID({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: size.height,
            width: size.width,
            child: Container(color: Colors.red),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              // ignore: prefer_const_constructors
              Text(
                'Create ID',
                // ignore: prefer_const_constructors
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              const Padding(padding: EdgeInsets.only(top: 20)),
              // ignore: prefer_const_constructors
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                // ignore: prefer_const_constructors
                child: TextField(
                  // ignore: prefer_const_constructors
                  decoration: InputDecoration(
                      hintText: 'WIN0123001',
                      filled: true,
                      fillColor: Colors.red[50],
                      // ignore: prefer_const_constructors
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(width: 3, color: Colors.white))),
                ),
              ),
              const Padding(padding: EdgeInsets.only(top: 20)),
              // ignore: prefer_const_constructors
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                // ignore: prefer_const_constructors
                child: TextField(
                  // ignore: prefer_const_constructors
                  decoration: InputDecoration(
                      hintText: 'Masukkan Nama Pekerjaan',
                      labelText: 'Nama Pekerjaan',
                      filled: true,
                      fillColor: Colors.red[50],
                      // ignore: prefer_const_constructors
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(width: 3, color: Colors.white))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const EvidentScreen()));
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 50, vertical: 10),
                  ),
                  child: const Text(
                    'MASUK',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
