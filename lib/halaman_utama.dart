import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'halaman_list_berita.dart';

class HalamanUtama extends StatelessWidget {
  HalamanUtama({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.network('lib/logo.png', height: 150),
          ),
          SizedBox(height: 100),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 30,
                width: 120,
                child: ElevatedButton(
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const ListBerita(kategori: "terbaru")),
                    );
                  },
                  child: Text("TERBARU"),
                ),
              ),
              SizedBox(width: 10),
              SizedBox(
                height: 30,
                width: 120,
                child: ElevatedButton(
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const ListBerita(kategori: "nasional")),
                    );
                  },
                  child: Text("NASIONAL"),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 30,
                width: 120,
                child: ElevatedButton(
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const ListBerita(kategori: "olahraga")),
                    );
                  },
                  child: Text("OLAHRAGA"),
                ),
              ),
              SizedBox(width: 10),
              SizedBox(
                height: 30,
                width: 120,
                child: ElevatedButton(
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const ListBerita(kategori: "teknologi")),
                    );
                  },
                  child: Text("TEKNOLOGI"),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
