import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'colors.dart' as app_colors;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Design To Spec',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          color: app_colors.Colors.appBar,
          titleTextStyle: TextStyle(
              fontFamily: 'Retro', color: app_colors.Colors.text, fontSize: 24),
          iconTheme: IconThemeData(color: app_colors.Colors.mainBackground),
        ),
        fontFamily: 'Retro',
      ),
      home: const MyHomePage(title: 'Trees & Wood'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Widget contentTab(
      {required String name, required String path, required String text}) {
    return Padding(
      padding: EdgeInsets.all(5),
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    backgroundColor: app_colors.Colors.textAreas,
                    title: Text(name,
                        style: TextStyle(
                          color: app_colors.Colors.text,
                        )),
                    content: Container(
                        color: app_colors.Colors.text,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: app_colors.Colors.text,
                                  width: 5,
                                ),
                                color: app_colors.Colors.itemBackground,
                              ),
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                path,
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(height: 8),
                            Container(
                              width: double.infinity,
                              height: 200,
                              child: SingleChildScrollView(
                                  child: Padding(
                                padding: EdgeInsets.all(8),
                                child: Text(
                                  text,
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.black,
                                  ),
                                ),
                              )),
                            ),
                          ],
                        )),
                    actions: <Widget>[
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text('Close'),
                      ),
                    ],
                  );
                },
              );
            },
            child: Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                border: Border.all(
                  color: app_colors.Colors.text,
                  width: 5,
                ),
                color: app_colors.Colors.itemBackground,
              ),
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: app_colors.Colors.text,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Expanded(
                    child: Image.asset(
                      path,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: 200,
            height: 200,
            color: app_colors.Colors.textAreas,
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Text(
                text,
                style: TextStyle(
                  fontSize: 12,
                  color: app_colors.Colors.text,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Padding(
              padding: EdgeInsets.all(8),
              child: SvgPicture.asset(
                'assets/images/pickaxe.svg',
                colorFilter:
                    ColorFilter.mode(app_colors.Colors.text, BlendMode.srcIn),
              )),
          title: Text(widget.title),
          actions: [
            IconButton(
              icon: Icon(Icons.account_circle),
              onPressed: () async {
                return showDialog<void>(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text('About'),
                      content: Text(
                          'Created By: Thomas Berrios\n\nBased on the work done in 235;s design to spec homework.\n\nFebruary 2025'),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text('Ok'),
                        ),
                      ],
                    );
                  },
                );
              },
            ),
          ],
        ),
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/valley.jpg'),
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
            Expanded(
                child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: Column(children: [
                  Container(
                    decoration: BoxDecoration(
                      color: app_colors.Colors.textAreas,
                    ),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: app_colors.Colors.text,
                              width: 5,
                            ),
                            gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                app_colors.Colors.gradientLight,
                                app_colors.Colors.gradientDark,
                              ],
                            ),
                          ),
                          child: Padding(
                              padding: EdgeInsets.all(24),
                              child: Image.asset('assets/images/oaktree.png')),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'The Oak Tree',
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: app_colors.Colors.text,
                                ),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                'Lorem ipsum odor amet, consectetuer adipiscing elit.\n\nMaximus aenean penatibus efficitur himenaeos nostra.\n\nPhasellus nibh porta; himenaeos non urna sapien est. Tincidunt libero ornare metus sodales dolor amet augue lacinia nunc.',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: "Arial",
                                  color: app_colors.Colors.text,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 300),
                  Container(
                    color: app_colors.Colors.mainBackground,
                    child: Column(
                      children: [
                        contentTab(
                            name: "planks",
                            path: "assets/images/planks.png",
                            text:
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut sit amet urna sagittis, auctor dolor sit amet, faucibus tellus. Phasellus placerat, leo in egestas imperdiet, lectus tortor cursus nibh, eu venenatis justo augue non nisi. Integer auctor, quam fermentum finibus tempus, dolor orci condimentum nunc, quis tincidunt magna enim a nisi. Phasellus ante neque, tincidunt eu tempus eu, dapibus vitae urna. Proin turpis sapien, egestas eu diam eget, pulvinar vehicula sem. Ut ut erat tempor, vulputate sem vitae, placerat nulla. Aenean id quam quis magna feugiat posuere nec sit amet mauris. "),
                        contentTab(
                            name: "sticks",
                            path: "assets/images/stick.png",
                            text:
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut sit amet urna sagittis, auctor dolor sit amet, faucibus tellus. Phasellus placerat, leo in egestas imperdiet, lectus tortor cursus nibh, eu venenatis justo augue non nisi. Integer auctor, quam fermentum finibus tempus, dolor orci condimentum nunc, quis tincidunt magna enim a nisi. Phasellus ante neque, tincidunt eu tempus eu, dapibus vitae urna. Proin turpis sapien, egestas eu diam eget, pulvinar vehicula sem. Ut ut erat tempor, vulputate sem vitae, placerat nulla. Aenean id quam quis magna feugiat posuere nec sit amet mauris. "),
                        contentTab(
                            name: "chests",
                            path: "assets/images/chest.png",
                            text:
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut sit amet urna sagittis, auctor dolor sit amet, faucibus tellus. Phasellus placerat, leo in egestas imperdiet, lectus tortor cursus nibh, eu venenatis justo augue non nisi. Integer auctor, quam fermentum finibus tempus, dolor orci condimentum nunc, quis tincidunt magna enim a nisi. Phasellus ante neque, tincidunt eu tempus eu, dapibus vitae urna. Proin turpis sapien, egestas eu diam eget, pulvinar vehicula sem. Ut ut erat tempor, vulputate sem vitae, placerat nulla. Aenean id quam quis magna feugiat posuere nec sit amet mauris. "),
                        contentTab(
                            name: "stairs",
                            path: "assets/images/stairs.png",
                            text:
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut sit amet urna sagittis, auctor dolor sit amet, faucibus tellus. Phasellus placerat, leo in egestas imperdiet, lectus tortor cursus nibh, eu venenatis justo augue non nisi. Integer auctor, quam fermentum finibus tempus, dolor orci condimentum nunc, quis tincidunt magna enim a nisi. Phasellus ante neque, tincidunt eu tempus eu, dapibus vitae urna. Proin turpis sapien, egestas eu diam eget, pulvinar vehicula sem. Ut ut erat tempor, vulputate sem vitae, placerat nulla. Aenean id quam quis magna feugiat posuere nec sit amet mauris. ")
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    child: Container(
                      width: double.infinity,
                      height: 300,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/trees.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Container(
                              child: Text(
                                'Trees are pretty cool right?',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  shadows: [
                                    Shadow(
                                      blurRadius: 10.0,
                                      color: Colors.black,
                                      offset: Offset(2.0, 2.0),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text(
                              'Copyright 2025\nRIT School of Interactive Games and Media',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                shadows: [
                                  Shadow(
                                    blurRadius: 10.0,
                                    color: Colors.black,
                                    offset: Offset(2.0, 2.0),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ]),
              ),
            )),
          ],
        ));
  }
}
