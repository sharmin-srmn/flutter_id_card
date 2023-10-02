import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 510,
          width: 300,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(3),),
          ),
          child: Column(
            children: [
              Padding(
                //logo
                //padding: const EdgeInsets.all(18.0),
                padding: const EdgeInsets.symmetric(vertical: 25),
                child: Image.network(
                  'https://smuct.ac.bd/wp-content/uploads/2020/10/SMUCT-Logo-1-Converted.png',
                  scale: 5,
                ),
              ),
              const SizedBox(
                height: 18,
              ),
              // id image
              Container(
                height: 150,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 31, 6, 145),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RotatedBox(
                        quarterTurns: 3,
                        child: Text(
                          "STUDENT",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w700, letterSpacing: 3, fontSize: 20),
                        ),
                      ),
                      CircleAvatar(
                        radius: 75,
                        backgroundColor: Colors.amber,
                        child: CircleAvatar(
                          radius: 70,
                          foregroundImage: NetworkImage('https://raw.githubusercontent.com/sharmin-srmn/python/main/sharmin_flutter.jpg'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              //information
              const Padding(
                padding: EdgeInsets.all(15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Sharmin Akhter", style: TextStyle(fontSize: 16)),
                    Text(
                      "ID : 201071054",
                      style: TextStyle(color: Color.fromARGB(255, 31, 6, 145), fontSize: 15),
                    ),
                    Text(
                      "REG. NO. : 200007420",
                      style: TextStyle(color: Color.fromARGB(255, 31, 6, 145), fontSize: 15),
                    ),
                    Text("Dept Of Computer Science & Engineering (B.Sc. CSE)",style: TextStyle(fontWeight: FontWeight.bold) ,),
                    Text(
                      "Blood Group: ",
                      style: TextStyle(fontWeight: FontWeight.bold , fontSize: 15),
                    ),
                  ],
                ),
              ),
              // yellow line
              const Divider(
                color: Colors.amber,
                thickness: 3,
              ),
              //image of signature
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Image.network(
                  'https://onlinepngtools.com/images/examples-onlinepngtools/marilyn-monroe-signature.png',
                  scale: 8,

                ),
              ), 
              // bottom text
              const Text(

                "Registrar",
                style: TextStyle(color: Color.fromARGB(255, 36, 7, 167)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}