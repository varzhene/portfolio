import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "My portfolio",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),
        ),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Hi I am Varzhene",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold
                  ),
                ),
                const SizedBox(height: 20,),
                Text(
                  "Hello I am from SRM University !!",
                    style: TextStyle(
                    fontSize: 25,
                  color: Colors.red
                ),
                ),
                const SizedBox(height: 20,),
                TextButton(onPressed: () {
                  print("Hello world");
                  Navigator.pushNamed(context, '/about');
                },
                    child: Text("About me",style: TextStyle(color: Colors.black87,fontSize: 15,fontWeight: FontWeight.bold)),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.cyan)
                  ),
                ),
              ],
            ),
            SizedBox(width: 40,),
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
          ],
        ),
      ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: Container(
          height: 50,
          width: 300,
          decoration: BoxDecoration(
            color: Colors.cyan,
            borderRadius: BorderRadius.circular(50),
              boxShadow: [
              BoxShadow(
              color: Colors.blueGrey,
              offset: Offset(0, 0),
              blurRadius: 9,
              spreadRadius: 10
          ),
          ]
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
              onTap: () async {
                await launchUrl(Uri.parse("https://github.com/varzhene"));
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset('assets/github.png'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset('assets/email.png'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset('assets/linkedin.png'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset('assets/instagram.png'),
            ),
                ],
              ),
        ),
    );
  }
}
