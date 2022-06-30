import 'package:flutter/material.dart';

class AuthButton extends StatelessWidget {
  const AuthButton({
    required this.text,
    Key? key,
  }) : super(key: key);

  final String text;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          side: BorderSide( color: Colors.blue),
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          minimumSize: Size.fromHeight(50),
          primary: Colors.blue,
          onPrimary: Colors.white,
          onSurface: Colors.grey,
        ),
        onPressed: () {},
        child: Text(text, style: TextStyle(fontSize: 20)),
      ),
    );
  }
}
