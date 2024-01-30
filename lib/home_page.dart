import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

  
class MyObject {
  int _value;

  MyObject({required int value}) : _value = value;

  void increase() {
    _value++;
  }

  void decrease() {
    _value--;
  }

  int get value => this._value;

  set value(int newValue) {
    this._value = newValue;
  }
}

class _homepageState extends State<homepage> {
  late MyObject _myObject;
  String? title;

  @override
  void initState() {
    super.initState();
    _myObject = MyObject(value: 0);
    _myObject.value = 10; // Đặt giá trị thành 10
  }
  
  @override
  Widget build(BuildContext contexxt) {
    int value =  _myObject.value;
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back_ios_new_outlined),
        title: const Text('MY APP'),
        backgroundColor: Colors.blue,
        actions: const [
          Icon(Icons.notifications),
          Icon(Icons.settings),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Text(
              'body',
              style: TextStyle(
                fontSize: 24,
              ),
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              IconButton(
                onPressed: () {
                  _myObject.decrease();
                  title = _myObject.value.toString();
                  setState(() {});
                },
                icon: const Icon(Icons.remove),
              ),
              Text(
                '$value',
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
              IconButton(
                onPressed: () {
                  _myObject.increase();
                  title = _myObject.value.toString();
                  setState(() {});
                },
                icon: const Icon(Icons.add),
              ),
            ],
          )
        ],
      ),
    );
  }
}
// const: complice, ko phải hằng số sẽ ko nhận
//final: runtime
