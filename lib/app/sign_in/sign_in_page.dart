import 'package:flutter/material.dart';
import 'package:flutter_buttons/app/sign_in/sign_in_button.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign in'),
        elevation: 2,
      ),
      body: _buildContent(),
      backgroundColor: Colors.grey[200],
    );
  }

  Widget _buildContent() {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'sign in',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.w600,
            ),
          ),
          separation(),
          separation(),
          separation(),
          SignIngButton(
            text: 'Sign in with Google',
            imagePath: 'images/google-logo.png',
            color: Colors.amber,
            onPressed: () {
              print('Pressed');
            },
          ),
          separation(),
          SignIngButton(
              text: 'Sign in with Facebook',
              imagePath: 'images/facebook-logo.png',
              textColor: Colors.white,
              color: Color(0xFF334D92),
              onPressed: () {
                print('Pressed facebook');
              }),
          separation(),
          SignIngButton(
              text: 'Sign in with Email',
              textColor: Colors.white,
              color: Colors.teal[700],
              onPressed: () {
                print('Pressed facebook');
              }),
          separation(),
          Text(
            'or',
            style: TextStyle(
              fontSize: 14,
              color: Colors.black,
            ),
            textAlign: TextAlign.center,
          ),
          separation(),
          SignIngButton(
            text: 'Go anonymous',
            textColor: Colors.black,
            color: Colors.brown,
            onPressed: () {},
          )
        ],
      ),
    );
  }

  SizedBox separation() => SizedBox(
        height: 12,
      );
}
