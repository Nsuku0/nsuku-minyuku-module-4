import 'package:bridgeup/register.dart';
import 'package:bridgeup/dashboard.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
  home: Home(),
));

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  gotoSecondActivity(BuildContext context){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const MyApp()),
    );
  }
  gotoHomeActivity(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const Dashboard()),
    );
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(

          title: const Text('Login',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),),
          centerTitle: true,
          backgroundColor: Colors.blueGrey
      ),

      body: Column(

        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[

          Expanded(child: Image.asset('assets/bridgelogo.jpg')) ,
          Container(
            //color: Colors.redAccent,
            padding: const EdgeInsets.all(30.0),
            child: const TextField(

              decoration: InputDecoration(
                hintText: 'Please enter Email',
                contentPadding:
                EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide:
                  BorderSide(color: Colors.lightBlueAccent, width: 1.0),
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide:
                  BorderSide(color: Colors.lightBlueAccent, width: 2.0),
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
                ),
              ),
            ),
          ),
          Container(
            //color: Colors.redAccent,
            padding: const EdgeInsets.all(30.0),
            child: const TextField(

              decoration: InputDecoration(
                hintText: 'Please enter Password',
                contentPadding:
                EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide:
                  BorderSide(color: Colors.lightBlueAccent, width: 1.0),
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide:
                  BorderSide(color: Colors.lightBlueAccent, width: 2.0),
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
                ),
              ),
            ),
          ),
          Container(
            //padding: const EdgeInsets.symmetric(vertical: 0.5),
            alignment: Alignment.centerRight,
            child: TextButton(onPressed: (){}, child: const Text('Forgot Password?')),
          ),
          SizedBox(
              height: 50,
              width: 1000,
              child: ElevatedButton(onPressed: () {gotoHomeActivity(context);}, child: const Text('LOGIN'))),

          Container(
            margin: const EdgeInsets.symmetric(vertical: 20),
            padding: const EdgeInsets.all(15),
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'Don\'t have an account ?',
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  width: 10,
                ),
                TextButton(onPressed: () { gotoSecondActivity(context); },
                  child: const Text(
                    'Register',
                    style: TextStyle(
                        color: Color(0xfff79c4f),
                        fontSize: 13,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
          ),
          /*TextButton(onPressed: (){}, child: const Text("Don't have an account?")),
                  SizedBox(
                      height: 50,
                      child: ElevatedButton(onPressed: () {}, child: const Text('REGISTER'))),*/
          const SizedBox(height: 50,),


        ],
      ),

    );
  }
}