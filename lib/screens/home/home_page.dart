// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import '../../screens/widget/categoryButton.dart';
// TODO: ใส่รหัสนักศึกษาที่ค่าสตริงนี้
const studentId = '630710391';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var value1 = false;
  static const List<String> quoteList = [
    'what do you?',
    'how old are?',
    'Why?',
    'how many?,',
  ];
  static const List<String> quoteList1 = [
    'fadfad',
    'adfdggfg',
    'erwrew',
    '10',
  ];
  static const List<String> quoteList2 = [
    'rytyy',
    'hjgjhfj',
    'phg,',
    '20',
  ];
  static const List<String> quoteList3 = [
    'pyoui,',
    'nbl,n',
    'fg,hl',
    '30',
  ];
  static const List<String> quoteList4 = [
    'nbvplnp',
    'dfsdf',
    'dfsdfdsf',
    '40',
  ];
  static const List<String> quoteList5 = [
    'Question 1 of 30',
    'Question 2 of 30',
    'Question 3 of 30',
    'Question 4 of 30',
  ];
  var quote = quoteList[0];
  var quote1 = quoteList1[0];
  var quote2 = quoteList2[0];
  var quote3 = quoteList3[0];
  var quote4 = quoteList4[0];
  var quote5 = quoteList5[0];
  var n = 0;

  @override
  Widget build(BuildContext context) {

    var textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 20.0,
          ),

          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/bg_colorful.jpg"),
              opacity: 0.6,
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text('Good Morning',
                  textAlign: TextAlign.center, style: textTheme.headlineMedium),
              Text(studentId,
                  textAlign: TextAlign.center,
                  style: textTheme.headlineSmall!.copyWith(
                      fontWeight: FontWeight.bold, color: Colors.black87)),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    Expanded(child: CategoryButton(text: quote5,text1: quote,text2: quote1,text3: quote2,text4: quote3,text5: quote4)),
                    SizedBox(width: 30.0),
                  ],
                ),
              ),

              Spacer(),
              _buildButtonPanel(),
              SizedBox(height: 16.0),


            ],
          ),
        ),
      ),

    );

  }

  _buildQuizView() {

    // TODO: build UI
    return Center(

    );
  }

  _buildButtonPanel() {
    // TODO: build UI
    return Container(

      child: Row(
        children: [
          Text('ปุ่มกดได้นะครับ', style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold)),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: ElevatedButton(
                onPressed: () {
                  quote=quoteList[n-1];
                  quote1=quoteList1[n-1];
                  quote2=quoteList2[n-1];
                  quote3=quoteList3[n-1];
                  quote4=quoteList4[n-1];
                  quote5=quoteList5[n-1];
                  n=n-1;
                  setState(() {
                    value1 = !value1;
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Icon(
                    Icons.keyboard_arrow_left_rounded,
                  ),
                ),
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: ElevatedButton(
                onPressed: () {
                  quote=quoteList[n+1];
                  quote1=quoteList1[n+1];
                  quote2=quoteList2[n+1];
                  quote3=quoteList3[n+1];
                  quote4=quoteList4[n+1];
                  quote5=quoteList5[n+1];
                  n=n+1;
                  setState(() {
                    value1 = !value1;
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Icon(
                    Icons.keyboard_arrow_right_sharp,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),


    );
  }
}
