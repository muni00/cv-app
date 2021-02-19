import 'package:flutter/material.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';
// progress bar kullanabilmek için gerekli tanıtmalar yapıldı

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: MyCvApp());
  }
}

class MyCvApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            width: 1000, //profil sayfasının boyutları ayarlandı
            height: 500,
            decoration: BoxDecoration(color: Colors.red), //rengi verildi
            child: Column(
              children: [
                Padding(
                  //peding ile birbirleine yapışmaması sağlanır
                  padding: EdgeInsets.only(top: 30),
                  child: ClipOval(
                    child: Image.asset(
                      // pubspec.yaml de tanıtılan dosya çağırıldı
                      "assets/images/cv_resim.jpg",
                      width: 150,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Text(
                    "\nMuazzez Nihal BAHADIR",
                    style: TextStyle(fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold, decoration: TextDecoration.none),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Text(
                    "NECMETTİN ERBAKAN ÜNİVERSİTESİ",
                    style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold, decoration: TextDecoration.none),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 1000,
            height: 500,
            decoration: BoxDecoration(color: Colors.redAccent),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 50),
                  child: Text(
                    "ABOUT ME",
                    style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold, decoration: TextDecoration.none),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 50),
                  child: Text(
                    "Liseyi Giresun Hamdi Bozbağ Anadolu Lisesinde okudum üniversiteye de Necmettin Erbakan Üniversitesinde 3.sınıf olarak devam etmekteyim . \n"
                    "Web programlama ve Mobil uygulama geliştirme üzerine deneyimler ediniyorum . İlerleyen zaman içerisinde kendimi daha da geliştireceğimi düşünmekteyim.\n"
                    "Bunların haricinde illustrasyon , logo tasarımları ve TechnoVation Community hizmetinde çalışıyorum . ",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.none,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                )
              ],
            ),
          ),
          Container(
            width: 1000,
            height: 500,
            decoration: BoxDecoration(color: Colors.deepPurpleAccent),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 40),
                  child: Text(
                    "SKILLS",
                    style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold, decoration: TextDecoration.none),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        " C ",
                        style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold, decoration: TextDecoration.none),
                      ),
                      FAProgressBar(
                        //progress bar özelliklerinin girilmesi
                        currentValue: 90,
                        displayText: '%',
                        backgroundColor: Colors.black54,
                        animatedDuration: Duration(milliseconds: 500),
                        progressColor: Colors.orange,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        " C# :",
                        style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold, decoration: TextDecoration.none),
                      ),
                      FAProgressBar(
                        currentValue: 75,
                        displayText: '%',
                        backgroundColor: Colors.black54,
                        animatedDuration: Duration(milliseconds: 500),
                        progressColor: Colors.orange,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        " Java",
                        style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold, decoration: TextDecoration.none),
                      ),
                      FAProgressBar(
                        currentValue: 50,
                        displayText: '%',
                        backgroundColor: Colors.black54,
                        animatedDuration: Duration(milliseconds: 500),
                        progressColor: Colors.orange,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        " Python",
                        style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold, decoration: TextDecoration.none),
                      ),
                      FAProgressBar(
                        currentValue: 75,
                        displayText: '%',
                        backgroundColor: Colors.black54,
                        animatedDuration: Duration(milliseconds: 500),
                        progressColor: Colors.orange,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        " CSS / JavaScript / HTML",
                        style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold, decoration: TextDecoration.none),
                      ),
                      FAProgressBar(
                        currentValue: 80,
                        displayText: '%',
                        backgroundColor: Colors.black54,
                        animatedDuration: Duration(milliseconds: 500),
                        progressColor: Colors.orange,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
