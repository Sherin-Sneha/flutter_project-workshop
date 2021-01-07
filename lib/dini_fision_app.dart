import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(BioData());
}

class BioData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xff151515),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                height: 450,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                  image: DecorationImage(
                    image: AssetImage("images/profile.jpg"),
                    alignment: Alignment.topCenter,
                    fit: BoxFit.fitWidth,
                    
                  ),
                  color: Colors.black45,
                ),
                padding:
                EdgeInsets.only(bottom: 10, top: 20, left: 20, right: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Dive  Deep  Fly  High",
                      style: TextStyle(
                        color: Colors.cyanAccent,
                        fontSize: 28,
                        fontWeight: FontWeight.w800,
                        fontFamily: "Seasideresortnf",
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                EdgeInsets.only(top: 20, left: 10, right: 10, bottom: 10),
              ),
              Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Flexible(
                        child: Padding(
                          padding: EdgeInsets.only(left: 8.0, top: 10, bottom: 20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 10),
                                child: InkWell(
// splashColor: Colors.deepPurpleAccent,
                                  onTap: () {
                                    launch(
                                        "https://marinebio.org/oceans/deep-sea/");
                                  },
                                  child: Container(
                                      padding: EdgeInsets.all(15),
                                      decoration: const BoxDecoration(
                                        gradient:LinearGradient(
                                            begin:Alignment.topCenter,
                                            end:Alignment.bottomCenter,
                                            stops:[0.7,1],
                                            colors: [Colors.black,Colors.cyanAccent]
                                        ),
                                        border: Border(
                                          top: BorderSide(
                                              width: 3.0,
                                              color: Color(0xff00fdff)
                                          ),
                                          left: BorderSide(
                                              width: 3.0,
                                              color: Color(0xff00fdff)
                                          ),
                                          right: BorderSide(
                                              width: 3.0,
                                              color: Color(0xff00fdff)
                                          ),
                                          bottom: BorderSide(
                                              width: 3.0,
                                              color: Color(0xff00fdff)
                                          ),
                                        ),borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                      ),

                                      child: Column(
                                        children: [
                                          Text(
                                            "TWILIGHT ZONE ",
                                            style: TextStyle(
                                                color: Colors.cyanAccent,
                                                fontFamily: "ChickenQuiche",
                                                fontSize: 20),
                                          ),
                                          Padding(
                                              padding: EdgeInsets.only(bottom: 10)),
                                          Text(
                                            "Deep sea starts where the sunlight starts to fade",
                                            style: TextStyle(
                                                color: Colors.white70,
                                                fontSize: 15),
                                          ),
                                        ],
                                      )),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 10),
                                child: InkWell(
// splashColor: Colors.deepPurpleAccent,
                                  onTap: () {
                                    launch(
                                        "http://www.seasky.org/sea-gallery/sea-gallery-01-menu.html");
                                  },
                                  child: Container(
                                      padding: EdgeInsets.all(15),
                                      decoration: const BoxDecoration(
                                        gradient:LinearGradient(
                                            begin:Alignment.topCenter,
                                            end:Alignment.bottomCenter,
                                            stops:[0.7,1],
                                            colors: [Colors.black,Colors.cyanAccent]
                                        ),
                                        border: Border(
                                          top: BorderSide(
                                              width: 3.0,
                                              color: Color(0xff00fdff)
                                          ),
                                          left: BorderSide(
                                              width: 3.0,
                                              color: Color(0xff00fdff)
                                          ),
                                          right: BorderSide(
                                              width: 3.0,
                                              color: Color(0xff00fdff)
                                          ),
                                          bottom: BorderSide(
                                              width: 3.0,
                                              color: Color(0xff00fdff)
                                          ),
                                        ),borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                      ),
                                      child: Column(
                                        children: [
                                          Text(
                                            "SALT AQUARIUM",
                                            style: TextStyle(
                                                color: Colors.cyanAccent,
                                                fontFamily: "ChickenQuiche",
                                                fontSize: 20),
                                          ),
                                          Padding(
                                              padding: EdgeInsets.only(bottom: 10)),
                                          Text(
                                            "Explore the diversity of life on a coral reef and discover the bizarre creatures",
                                            style: TextStyle(
                                                color: Colors.white70,
                                                fontSize: 15),
                                          ),
                                        ],
                                      )),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 10),
                                child: InkWell(
// splashColor: Colors.deepPurpleAccent,
                                  onTap: () {
                                    launch(
                                        "https://dinishibas.github.io/inidinad/");
                                  },
                                  child: Container(
                                      padding: EdgeInsets.all(15),
                                      decoration: const BoxDecoration(
                                        gradient:LinearGradient(
                                            begin:Alignment.topCenter,
                                            end:Alignment.bottomCenter,
                                            stops:[0.7,1],
                                            colors: [Colors.black,Colors.cyanAccent]
                                        ),
                                        border: Border(
                                          top: BorderSide(
                                              width: 3.0,
                                              color: Color(0xff00fdff)
                                          ),
                                          left: BorderSide(
                                              width: 3.0,
                                              color: Color(0xff00fdff)
                                          ),
                                          right: BorderSide(
                                              width: 3.0,
                                              color: Color(0xff00fdff)
                                          ),
                                          bottom: BorderSide(
                                              width: 3.0,
                                              color: Color(0xff00fdff)
                                          ),
                                        ),borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                      ),
                                      child: Column(
                                        children: [
                                          Text(
                                            "HEAVENS ABOVE",
                                            style: TextStyle(
                                                color: Colors.cyanAccent,
                                                fontFamily: "ChickenQuiche",
                                                fontWeight: FontWeight.w600,
                                                fontSize: 20),
                                          ),
                                          Padding(
                                              padding: EdgeInsets.only(bottom: 10)),
                                          Text(
                                            "Something incredible is waiting to be known...",
                                            style: TextStyle(
                                                color: Colors.white70,
                                                fontSize: 15),
                                          ),
                                        ],
                                      )),
                                ),
                              ),
                            ],
                          ),
                        )),
                    Padding(
                      padding: EdgeInsets.only(left: 5, right: 5),
                    ),
                    Flexible(
                        child: Padding(
                          padding: const EdgeInsets.only(
                              right: 8.0, top: 10, bottom: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 10),
                                child: InkWell(
// splashColor: Colors.deepPurpleAccent,
                                  onTap: () {
                                    launch(
                                        "http://www.seasky.org/space-gallery/space-gallery-05-01.html");
                                  },
                                  child: Container(
                                      padding: EdgeInsets.all(15),
                                      decoration: const BoxDecoration(
                                        gradient:LinearGradient(
                                            begin:Alignment.topCenter,
                                            end:Alignment.bottomCenter,
                                            stops:[0.7,1],
                                            colors: [Colors.black,Colors.cyanAccent]
                                        ),
                                        border: Border(
                                          top: BorderSide(
                                              width: 3.0,
                                              color: Color(0xff00fdff)
                                          ),
                                          left: BorderSide(
                                              width: 3.0,
                                              color: Color(0xff00fdff)
                                          ),
                                          right: BorderSide(
                                              width: 3.0,
                                              color: Color(0xff00fdff)
                                          ),
                                          bottom: BorderSide(
                                              width: 3.0,
                                              color: Color(0xff00fdff)
                                          ),
                                        ),borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                      ),
                                      child: Column(
                                        children: [
                                          Text(
                                            "SPACE GALLERY ",
                                            style: TextStyle(
                                                color: Colors.cyanAccent,
                                                fontFamily: "ChickenQuiche",
                                                fontSize: 20),
                                          ),
                                          Padding(
                                              padding: EdgeInsets.only(bottom: 10)),
                                          Text(
                                            "The best way to appreciate the sky is to experiencing by yourself",
                                            style: TextStyle(
                                                color: Colors.white70,
                                                fontSize: 15),
                                          ),
                                        ],
                                      )),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 10),
                                child: InkWell(
// splashColor: Colors.deepPurpleAccent,
                                  onTap: () {
                                    launch("https://youtu.be/vhA5kSon9CA");
                                  },
                                  child: Container(
                                      padding: EdgeInsets.all(15),
                                      decoration: const BoxDecoration(
                                        gradient:LinearGradient(
                                            begin:Alignment.topCenter,
                                            end:Alignment.bottomCenter,
                                            stops:[0.7,1],
                                            colors: [Colors.black,Colors.cyanAccent]
                                        ),
                                        border: Border(
                                          top: BorderSide(
                                              width: 3.0,
                                              color: Color(0xff00fdff)
                                          ),
                                          left: BorderSide(
                                              width: 3.0,
                                              color: Color(0xff00fdff)
                                          ),
                                          right: BorderSide(
                                              width: 3.0,
                                              color: Color(0xff00fdff)
                                          ),
                                          bottom: BorderSide(
                                              width: 3.0,
                                              color: Color(0xff00fdff)
                                          ),
                                        ),borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                      ),
                                      child: Column(
                                        children: [
                                          Text(
                                            "THE PLEIADES",
                                            style: TextStyle(
                                                color: Colors.cyanAccent,
                                                fontFamily: "ChickenQuiche",
                                                fontSize: 20),
                                          ),
                                          Padding(
                                              padding: EdgeInsets.only(bottom: 10)),
                                          Text(
                                            "Explore the night sky | Episode 1 | Journey to the Mysterious Deep"
                                            ,
                                            style: TextStyle(
                                                color: Colors.white70,
                                                fontSize: 15),
                                          ),
                                        ],
                                      )),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 10),
                                child: InkWell(
// splashColor: Colors.deepPurpleAccent,
                                  onTap: () {
                                    launch("https://forms.gle/QCjt8eNBiP3xGxCv8");
                                  },
                                  child: Container(
                                      padding: EdgeInsets.all(15),
                                      decoration: const BoxDecoration(
                                        gradient:LinearGradient(
                                            begin:Alignment.topCenter,
                                            end:Alignment.bottomCenter,
                                            stops:[0.7,1],
                                            colors: [Colors.black,Colors.cyanAccent]
                                        ),
                                        border: Border(
                                          top: BorderSide(
                                              width: 3.0,
                                              color: Color(0xff00fdff)
                                          ),
                                          left: BorderSide(
                                              width: 3.0,
                                              color: Color(0xff00fdff)
                                          ),
                                          right: BorderSide(
                                              width: 3.0,
                                              color: Color(0xff00fdff)
                                          ),
                                          bottom: BorderSide(
                                              width: 3.0,
                                              color: Color(0xff00fdff)
                                          ),
                                        ),borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                      ),
                                      child: Column(
                                        children: [
                                          Text(
                                            "TALK TO US",
                                            style: TextStyle(
                                                color: Colors.cyanAccent,
                                                fontFamily: "ChickenQuiche",
                                                fontSize: 20),
                                          ),
                                          Padding(
                                              padding: EdgeInsets.only(bottom: 10)),
                                          Text(
                                            "Thanks for visiting us... Feel free to share your feedbacks here",
                                            style: TextStyle(
                                                color: Colors.white70,
                                                fontSize: 15),
                                          ),
                                        ],
                                      )),
                                ),
                              ),

                            ],
                          ),
                        )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}