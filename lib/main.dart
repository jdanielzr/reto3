import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var buttonStyle = ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
                side: BorderSide(color: Color.fromARGB(255, 136, 132, 190)))));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BotonesTOP(),
              Titulo(),
              SizedBox(
                height: 5.0,
              ),
              BotonesFollow(buttonStyle: buttonStyle),
              Divider(
                thickness: 1,
              ),
              Lastest(),
              Autor(),
              Noticia(),
            ],
          ),
        ),
      ),
    );
  }
}

class Noticia extends StatelessWidget {
  const Noticia({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "4 Hidden Philosophical Gems To Live By",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
          Text(
            "#3 The homeless dog philosopher of Ancient Greece and his lessons on freedom.",
            style: TextStyle(
                fontSize: 20, color: Color.fromARGB(255, 131, 125, 125)),
          ),
          SizedBox(
            height: 15.0,
          ),
          Image.network("https://miro.medium.com/max/720/0*lLf3LpIEGGHawDME"),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Photo by ",
              ),
              Text(
                "Aditya Saxena",
                style: TextStyle(
                  decoration: TextDecoration.underline,
                ),
              ),
              Text(
                " on ",
              ),
              Text(
                "Unsplash",
                style: TextStyle(
                  decoration: TextDecoration.underline,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class Autor extends StatelessWidget {
  const Autor({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [Icon(Icons.abc_sharp)],
          ),
          SizedBox(
            width: 10.0,
          ),
          Row(
            children: [
              Text(
                "Julian Basic",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                " in ",
              ),
              Text(
                "Mind Cafe",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                ".  19 hr ago",
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Lastest extends StatelessWidget {
  const Lastest({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(
            children: [
              Expanded(
                child: Row(
                  children: [
                    Text(
                      "LATEST",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              Container(
                width: 40,
                child: Row(
                  children: [
                    Icon(Icons.view_agenda_outlined),
                  ],
                ),
              ),
              Container(
                width: 40,
                child: Row(
                  children: [
                    Icon(Icons.menu),
                  ],
                ),
              ),
            ],
          )
        ]));
  }
}

class BotonesFollow extends StatelessWidget {
  const BotonesFollow({
    Key? key,
    required this.buttonStyle,
  }) : super(key: key);

  final ButtonStyle buttonStyle;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              ElevatedButton(
                style: buttonStyle,
                onPressed: () {},
                child: const Text('Follow'),
              )
            ],
          ),
          SizedBox(
            width: 10.0,
          ),
          Row(
            children: [
              Text("140k Followers"),
            ],
          ),
        ],
      ),
    );
  }
}

class Titulo extends StatelessWidget {
  const Titulo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20, top: 5, right: 20, bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "mind cafe",
            style: TextStyle(
              fontFamily: 'archeron',
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "Relaxed, inspiring essays about happiness. ",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

class BotonesTOP extends StatelessWidget {
  const BotonesTOP({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 20,
                child: Icon(Icons.arrow_back_ios),
              )
            ],
          ),
          Row(
            children: [
              CircleAvatar(
                child: Icon(Icons.more_horiz),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
