import 'package:flutter/material.dart';
import 'dart:math';

import 'package:shimmer/shimmer.dart';

int ballnumber = 1;

void main() {
  runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.purple[50],
          appBar: AppBar(
            backgroundColor: Colors.blue[500],
            title: Text('Ask Me Anything'),
          ),
          body: BallPage(),
        ),
      ),
      );
}

class BallPage extends StatefulWidget  {
  const BallPage({Key? key}) : super(key: key);

  @override
  State<BallPage> createState() => MagisBall();
}



class MagisBall extends State<BallPage> {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Center(
        child: Row(
          children: [
            Expanded(child: Center(
              child: TextButton(
                onPressed: (){
                  setState(() {
                    ballnumber = Random().nextInt(5) + 1;
                    print('$ballnumber');
                  });
                },
                child: Image.asset('images/ball$ballnumber.png'),
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
