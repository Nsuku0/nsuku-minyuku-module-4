import 'package:bridgeup/applications.dart';
import 'package:bridgeup/personInfo.dart';
import 'package:bridgeup/websites.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  gotoPersonActivity(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const PersonlInfo()),
    );
  }
  gotoWebsitesActivity(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const Websites()),
    );
  }

  gotoApplicationActivity(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const Applications()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        backgroundColor: Colors.blueGrey,
        automaticallyImplyLeading: false,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children:   [
          const Center(

            child: Text ('Welcome to BridgeUp',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),),
          ),

          SizedBox(
              height: 50,
              width: 1000,
              child: ElevatedButton(onPressed: () {gotoPersonActivity(context);}, child: const Text('UPLOAD/UPDATE PERSONAL INFORMATION'),
                // style: ElevatedButton.styleFrom(padding: const EdgeInsets.all(0.2) ),
              )),
          SizedBox(
              height: 50,
              width: 1000,
              child: ElevatedButton(onPressed: () {}, child: const Text('CHECK PROSPECTUS'),
                // style: ElevatedButton.styleFrom(padding: const EdgeInsets.all(0.2) ),
              )),
          SizedBox(
              height: 50,
              width: 1000,
              child: ElevatedButton(onPressed: () {gotoApplicationActivity(context);}, child: const Text('APPLY FOR ME'),
                // style: ElevatedButton.styleFrom(padding: const EdgeInsets.all(0.2) ),
              )),
          SizedBox(
              height: 50,
              width: 1000,
              child: ElevatedButton(onPressed: () {gotoWebsitesActivity(context);}, child: const Text('APPLY FOR YOURSELF'),
                // style: ElevatedButton.styleFrom(padding: const EdgeInsets.all(0.2) ),
              )),
          SizedBox(
              height: 50,
              width: 1000,
              child: ElevatedButton(onPressed: () {}, child: const Text('RAISE MONEY FOR APPLICATIONS'),
                // style: ElevatedButton.styleFrom(padding: const EdgeInsets.all(0.2) ),
              )),




        ],
      ),
    );
  }

}