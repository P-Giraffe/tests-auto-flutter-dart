import 'package:flutter/material.dart';
import 'package:demo/tools/strings_extensions.dart';

class SendEmailScreen extends StatefulWidget {
  const SendEmailScreen({Key? key}) : super(key: key);

  @override
  _SendEmailScreenState createState() => _SendEmailScreenState();
}

class _SendEmailScreenState extends State<SendEmailScreen> {
  String _message = "";
  String _email = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(children: [
        TextFormField(
          key: const Key("email-field"),
          decoration: const InputDecoration(
            icon: Icon(Icons.email),
            labelText: 'Votre adresse email',
            helperText: 'Entrez votre adresse pour recevoir un message',
          ),
          onChanged: (value) => _email = value,
        ),
        ElevatedButton(
            onPressed: _sendButtonTouched, child: const Text("Envoyer")),
        Text(_message)
      ]),
    ));
  }

  _sendButtonTouched() {
    setState(() {
      if (_email.isValidEmail) {
        _message = "Message envoyé à $_email";
      } else {
        _message = "Email invalide";
      }
    });
  }
}
