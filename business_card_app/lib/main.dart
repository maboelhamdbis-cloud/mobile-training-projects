import 'package:flutter/material.dart';

void main() {
  runApp(const BusinessCard());
}

class BusinessCard extends StatelessWidget {
  const BusinessCard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFF2B475E),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 102,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  radius: 100,
                  backgroundImage: AssetImage('images/me.jpg'),
                ),
              ),

              SizedBox(height: 20),

              Text(
                'Mohammed Abo-Elhamd',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Pacifico',
                ),
              ),

              SizedBox(height: 10),

              Text(
                'FLUTTER DEVELOPER',
                style: TextStyle(
                  color: Color(0XFF6C8090),
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),

              Divider(
                color: Color(0XFF6C8090),
                thickness: 1,
                height: 5,
                indent: 20,
                endIndent: 20,
              ),

              Card(
                margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    size: 32,
                    color: Color(0xFF2B475E),
                  ),
                  title: Text(
                    '(+20) 1124527555',
                    style: TextStyle(fontSize: 22),
                  ),
                ),
              ),

              Card(
                margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    size: 32,
                    color: Color(0xFF2B475E),
                  ),
                  title: Text(
                    'm.aboelhamd.bis@gmail.com',
                    style: TextStyle(fontSize: 22),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
