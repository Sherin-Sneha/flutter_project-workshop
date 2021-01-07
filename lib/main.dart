import 'package:flutter/material.dart';
import 'drawer.dart';

void main() {
  runApp(MaterialApp(
     debugShowCheckedModeBanner: false,
     theme: ThemeData(
        primarySwatch: myColour,
      ),
     home: HomeScreen()));
}

class StackList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Stack();
  }
}

class _Stack extends State<StackList> {
  TextEditingController _stackController = new TextEditingController();

  List<int> stack = new List<int>();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Enter Element",
              textAlign: TextAlign.center,
            ),
            TextFormField(
              controller: _stackController,
            ),
            Padding(
              padding: EdgeInsets.all(10),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RaisedButton(
                    child: Text("PUSH"),
                    color: Colors.cyanAccent,
                    onPressed: () {
                      stack.add(int.parse(_stackController.text));
                      print(stack.toString());
                      setState(() {});
                    }),
                Padding(
                  padding: EdgeInsets.all(10),
                ),
                RaisedButton(
                    child: Text("POP"),
                    color: Colors.cyanAccent,
                    onPressed: () {
                      try {
                        stack.removeLast();
                      } on RangeError catch (e) {
                        print("Underflow detected!");
                      }

                      print(stack.toString());
                      setState(() {});
                    }),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(10),
            ),
            Text(
              "Elements in the stack are:",
              textAlign: TextAlign.center,
            ),
            Column(
              children: returnStackElements(),
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> returnStackElements() {
    List<Widget> elementsToReturn = [];
    stack.reversed.forEach((element) {
      elementsToReturn.add(Text(element.toString()));
    });
    return elementsToReturn;
  }
}
const MaterialColor myColour=const MaterialColor(
  0xFF4DD0E1,
  const<int,Color>{
    50: const Color(0xFF4DD0E1),
    100: const Color(0xFF4DD0E1),
    200: const Color(0xFF4DD0E1),
    300: const Color(0xFF4DD0E1),
    400: const Color(0xFF4DD0E1),
    500: const Color(0xFF4DD0E1),
    600: const Color(0xFF4DD0E1),
    700: const Color(0xFF4DD0E1),
    800: const Color(0xFF4DD0E1),
    900: const Color(0xFF4DD0E1),
  },
);