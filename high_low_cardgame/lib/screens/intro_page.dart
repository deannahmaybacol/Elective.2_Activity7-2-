import 'package:flutter/material.dart';
import '../widgets/custom_popup.dart';
import '../widgets/showup.dart';
import 'main_page.dart';

class IntroPage extends StatelessWidget {
  static const String id = 'intro_page';

  const IntroPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var delayAmount = 500;
    return Scaffold(
      body: Center(
        child: Container(
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    Color.fromARGB(255, 191, 23, 209),
                    Color.fromARGB(255, 108, 6, 172),
                    Color.fromARGB(255, 75, 6, 172),
                  ]),
            ),
            child: Stack(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        ShowUp(
                          delay: delayAmount * 2,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const <Widget>[
                              Text(
                                '\n \nHI-LO Card Game',
                                style: TextStyle(
                                  decoration: TextDecoration.none,
                                  color: Colors.white,
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'IndieFlower',
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const SizedBox(
                          height: 60,
                          child: Image(
                            image: AssetImage('assets/Deckcard.png'),
                          ),
                        ),
                        const SizedBox(height: 25),
                        ShowUp(
                          delay: delayAmount * 4,
                          child: const Text(
                            '\nLet'
                            's see how good your guessing skills are\n\n',
                            style: TextStyle(
                                decoration: TextDecoration.none,
                                color: Colors.black,
                                fontSize: 12),
                          ),
                        ),
                        ShowUp(
                          delay: delayAmount * 5,
                          child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: SizedBox(
                                width: 100,
                                height: 50,
                                child: ElevatedButton(
                                  style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            const Color.fromARGB(
                                                255, 255, 68, 127)),
                                    shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(40.0),
                                        side: const BorderSide(
                                            color: Color.fromARGB(
                                                255, 240, 168, 105)),
                                      ),
                                    ),
                                  ),
                                  child: const Text(
                                    'Play',
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 3, 20, 12),
                                      fontFamily: 'IndieFlower',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                    ),
                                  ),
                                  onPressed: () {
                                    Navigator.push(context,
                                        FadeRoute(page: const MainPage()));
                                  },
                                ),
                              )),
                        ),
                        const SizedBox(height: 50),
                        ShowUp(
                          delay: delayAmount * 6,
                          child: const Text(
                            'Deannah May P. Bacol       BSCpE 3-A',
                            style: TextStyle(
                                decoration: TextDecoration.none,
                                fontSize: 16,
                                color: Colors.white54),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                ShowUp(
                  delay: delayAmount * 7,
                  child: CustomPopUp(),
                )
              ],
            )
            // this is custom built widget button for pop up.
            ),
      ),
    );
  }
}

class FadeRoute extends PageRouteBuilder {
  final Widget page;
  FadeRoute({required this.page})
      : super(
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              page,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              FadeTransition(
            opacity: animation,
            child: child,
          ),
        );
}
