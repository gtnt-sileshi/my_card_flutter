import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal,
        // appBar: AppBar(
        //   backgroundColor: Colors.red,
        //   title: Text('My Card', style: TextStyle(color: Colors.white)),
        //   centerTitle: true,
        // ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage(
                  'assets/images/profile1.png',
                ),
              ),
              Text(
                'Getinet S. Zeleke',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 40,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'FULL STACK DEVELOPER',
                style: TextStyle(
                  fontFamily: 'Source Sans 3',
                  fontSize: 14,
                  color: Colors.teal.shade100,
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold,
                  // decoration: TextDecoration.underline,
                ),
              ),
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  color: Colors.teal.shade100,
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Colors.teal.shade900,
                    ),
                    title: Text(
                      '+251922685862',
                      style: TextStyle(
                        fontFamily: 'Source Sans 3',
                        fontSize: 16,
                        color: Colors.teal.shade900,
                        letterSpacing: 2.5,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.email,
                      color: Colors.teal.shade900,
                    ),
                    title: Text(
                      'gtntsileshi@gmail.com',
                      style: TextStyle(
                        fontFamily: 'Source Sans 3',
                        fontSize: 16,
                        color: Colors.teal.shade900,
                        letterSpacing: 2.5,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),

        floatingActionButton: FloatingActionButton(
          onPressed: () async {
            const url = 'https://t.me/gtnt_slsh';
            if (await canLaunchUrl(Uri.parse(url))) {
              await launchUrl(Uri.parse(url));
            } else {
              //show error message
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('Could not launch $url'),
                ),
              );
            }
          },
          child: Icon(Icons.telegram),
          backgroundColor: Colors.white,
        ),
      ),
    );
  }
}
