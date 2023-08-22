import 'package:flutter/material.dart';

//! make the statefull widgets
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

//* Variables
double margin = 0;
double width = 200;
Color mycolor = Colors.yellowAccent;
bool _istrue = false;

double opacity = 1; //! remeber you can't assigen more than 1 for opacity value

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedContainer(
        duration: const Duration(seconds: 1),
        color: mycolor,
        width: width,
        margin: EdgeInsets.all(margin),

        //* Button Section
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 70),
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    //! please practice(_istrue = !_istrue )..... =! operator . it is very usefull.
                    _istrue = !_istrue;
                    if (_istrue == true) {
                      margin = 80;
                    } else {
                      margin = 0;
                      width = 200;
                    }
                  });
                },
                child: const Text("Animate Margin"),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    mycolor = Colors.blueAccent;
                  });
                },
                child: const Text("Change Color"),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    width = 400;
                  });
                },
                child: const Text("Change width"),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    opacity = 0;
                  });
                },
                child: const Text("Change opacity"),
              ),
              AnimatedOpacity(
                opacity: opacity,
                duration: const Duration(seconds: 1),
                child: const Text(
                  "My Text",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
