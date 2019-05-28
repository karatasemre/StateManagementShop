
import 'package:flutter/material.dart';

class MyLoginScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Material(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 64),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Welcome", style: Theme.of(context).textTheme.display4,),
            SizedBox(height: 24,),
            _LoginTextField(hintText: "Login", obsecureText: false,),
            SizedBox(height: 12,),
            _LoginTextField(hintText: "Password", obsecureText: true,),
            SizedBox(height: 24,),
            Container(
              width: 200,
              color: Colors.yellow,
              child: FlatButton(
                onPressed: () => Navigator.pushReplacementNamed(context, '/catalog'),
                child: Text("Login", style: TextStyle(fontSize: 16),),
              ),
            )
          ],
        ),
      ),
    );
  }


}

class _LoginTextField extends StatelessWidget{

  final String hintText;
  final bool obsecureText;

  _LoginTextField({
    Key key,
    @required this.hintText,
    this.obsecureText = false,
}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return TextField(
      decoration: InputDecoration(
        hintText: hintText,
        fillColor: Colors.black12,
      ),
      obscureText: obsecureText,
    );
  }
}