import 'package:flutter/material.dart';

  class AboutMe extends StatelessWidget {
  const AboutMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Hero(
              tag: 'photo',
              child: Container(
                height: 300,
                width: 300,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage("assets/pic.jpg")
                    ),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.teal,
                          offset: Offset(0, 0),
                          blurRadius: 9,
                          spreadRadius: 10
                      )
                    ]
                ) ,
              ),
            ),
            const SizedBox(width: 40,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "MCA Student\nProfessional\nCS guy",
                  textAlign: TextAlign.right,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                ),),
                const SizedBox(height: 20,),
                Text("""
                Hello this is varzhene
                from mannargudi 
                """,
                textAlign: TextAlign.right,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black
                ),),
              ],
            )
          ],
        ),
      ),
    );
  }
}
