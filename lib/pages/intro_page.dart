import 'package:flutter/material.dart';
import 'package:packages/pages/home_page.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF031F2B),
      body: Column(
        children: [
          Expanded(
              child: Container(
                margin: EdgeInsets.all(12),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 200,
                      child: Image.asset(
                        "assets/img.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(height: 20,),
                    Text(
                      "Oddiy hayotdan qoching",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Atrofingizdagi ajoyib tajribalarni kashf eting\n va sizni qiziqarli yashashga majbur qiling!",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              )),
          InkWell(
            onTap: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (_){
                return HomePage();
              }));
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 22),
              height: 56,
              decoration: BoxDecoration(
                color: Color(0xFF5EDFFF),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Text(
                  "Boshladik",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w800),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 100,
          )
        ],
      ),
    );
  }
}
