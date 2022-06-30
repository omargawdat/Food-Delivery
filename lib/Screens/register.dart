import 'package:flutter/material.dart';
import 'package:foodapp/Screens/login.dart';
import 'package:foodapp/myWidgets/signin_register.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(220),
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/background.jpg'),
                fit: BoxFit.fill),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              'Welcome to Fashion Daily',
              style: TextStyle(fontWeight: FontWeight.w200),
            ),
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                const Text(
                  'Register',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
                TextButton(
                  child: const Text(
                    'Help',
                    style: TextStyle(fontSize: 15),
                  ),
                  onPressed: () {},
                ),
              ],
            ),
            SizedBox(height: 15),
            TextField(
              decoration: InputDecoration(
                hintText: 'Email',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(0),
                ),
              ),
            ),
            const SizedBox(height: 10),
            IntlPhoneField(
              decoration: const InputDecoration(
                labelText: 'Phone Number',
                border: OutlineInputBorder(
                  borderSide: BorderSide(),
                ),
              ),
              initialCountryCode: 'EG',
              onChanged: (phone) {},
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(0),
                ),
              ),
              obscureText: true,
              enableSuggestions: false,
              autocorrect: false,
            ),
            const AuthButton(text: 'Sign In'),
            Row(children: const <Widget>[
              Expanded(child: Divider(thickness: 1)),
              Text(
                "    Or    ",
                style: TextStyle(color: Colors.grey),
              ),
              Expanded(child: Divider(thickness: 1)),
            ]),
            SignInButton(Buttons.Google,
                onPressed: () {},
                padding: EdgeInsets.symmetric(horizontal: 60, vertical: 5)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text('Have any account?'),
                TextButton(
                  child: const Text(
                    'Sign in here',
                    style: TextStyle(fontSize: 15),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Login()),
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
