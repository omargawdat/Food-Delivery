import 'package:flutter/material.dart';
import 'package:foodapp/Screens/login.dart';
import 'package:foodapp/Screens/register.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Align(
              alignment: Alignment.topRight,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFFFAF2E7),
                  shape: const StadiumBorder(),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                ),
                child: const Text('Skip',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueGrey)),
              ),
            ),
            Image.asset('assets/images/title.png'),
            Image.asset(
              'assets/images/Take Away-amico.png',
              height: 300,
              width: 250,
            ),
            const Text('Get food delivery to your doorstep asap',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
            const SizedBox(
              height: 15.0,
            ),
            const Text(
                'we have young and professional delivery team that will bring your food as soon as possible to your doorstep',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w100)),
            const SizedBox(
              height: 20.0,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                side: const BorderSide(color: Colors.blue),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                minimumSize: const Size.fromHeight(60),
                primary: Colors.teal,
                onPrimary: Colors.white,
                onSurface: Colors.grey,
              ),
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Login()),
                );
              },
              child: const Text(
                'Get Started',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text('Does not have account?'),
                TextButton(
                  child: const Text(
                    'Sign up',
                    style: TextStyle(fontSize: 15),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Register()),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
