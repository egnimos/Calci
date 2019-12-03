import 'package:flutter/material.dart';

// import './models/calculation.dart';

// import 'package:calci/widgets/answer.dart';

// import './widgets/answer.dart';


class SumOfNumber extends StatefulWidget {
 

  @override
  _SumOfNumberState createState() => _SumOfNumberState();
}

class _SumOfNumberState extends State<SumOfNumber> {

  final _number1 = TextEditingController();
  final _number2 = TextEditingController();
  // var _isadded = false;

  var _sum ;
  // var _sub = 0;
  // var _multiply = 0;
  // var _divide = 0;

  var _n ;

  void  _submitData() {
      final a = int.parse(_number1.text);
      final b = int.parse(_number2.text);

      setState(() {
        
      if (_n == 1) {

        // setState(() {
        _sum = a+b;
        // });
        
      }

      if (_n == 2) {

      // setState(() {
       _sum = a-b;
      // });

      }

      if (_n == 3) {
        _sum = a*b;
      }

      if (_n == 4) {
        _sum = (a/b). toStringAsFixed(2);
      }

      });

    

    print(_n);
  }


  

  // @override
  // void initState() {
  //   setState(() {
  //     _isadded = true;
  //   });
  //   super.initState();
  // }

  

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sum The Numbers'),

      ),

      body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.end,
            
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[

                  Container(
                    width: 50,
                      child: TextField(
                      decoration: InputDecoration(
                        labelText: 'No',
                      ),
                      controller: _number1,
                      keyboardType: TextInputType.number,
                      onSubmitted: (_) => _submitData(),
                    ),
                  ),

                  // SizedBox(
                  //   width: 10,
                  // ),

                  // Text(
                  //   '+',
                  //   style: TextStyle(
                  //     fontSize: 20,
                  //   ),
                  //   ),

                  //   SizedBox(
                  //     width: 10,
                  //   ),

                  Container(
                    width: 50,
                      child: TextField(
                      decoration: InputDecoration(
                        labelText: 'No',
                      ),
                      controller: _number2,
                      keyboardType: TextInputType.number,
                      onSubmitted: (_) => _submitData(),
                    ),
                  ),

                 /*  SizedBox(
                    width: 10,
                  ),
 */
                  Text(
                    '=', 
                    style:TextStyle(
                      fontSize: 20
                    ),
                    ),

                    // SizedBox(
                    //   width: 10,
                    // ),

                  Container(
                    padding: EdgeInsets.all(10),
                    
                    decoration: BoxDecoration(
                    color: Theme.of(context).accentColor,
                    borderRadius: BorderRadius.circular(5),
                  ),
          
                  child: Text(
                    '$_sum',
                    style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                  ),
                ),

                ],
              ),

              SizedBox(
                height: 20,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[

                  Container(
                    width: 50,
                    child: RaisedButton(
                      child: Text(
                        '+',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      color: Colors.black,
                      textColor: Colors.white,
                      onPressed: () {
                        _n = 1;
                        _submitData();
                        
                      },
                      
                       
                    ),
                  ),

                  Container(
                    width: 50,
                    child: RaisedButton(
                      child: Text(
                        '-',
                        style:TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      color: Colors.blueGrey,
                      onPressed: () {
                        _n = 2;
                        _submitData();
                        
                      },
                    ),
                  ),

                  Container(
                    width: 50,
                    child: RaisedButton(
                      child: Text(
                        '*',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      color: Theme.of(context).primaryColor,
                      onPressed: () {
                        _n = 3;
                        _submitData();
                      },
                    ),
                  ),

                  Container(
                    width: 50,
                    child: RaisedButton(
                      child: Text(
                        '/',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                        ),
                        color: Colors.cyan,
                        onPressed: () {
                          _n = 4;
                          _submitData();
                        },
                    ),
                  ),

                ],
              )
            ],
          ),

      
   
    );
  }
}