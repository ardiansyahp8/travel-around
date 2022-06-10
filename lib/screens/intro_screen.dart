import 'package:flutter/material.dart';
import 'package:travel_around_app/screens/home_screen.dart';

class IntroScreen extends StatelessWidget {
  final String routeName = '/intro';

  const IntroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Image(
            image: AssetImage('assets/images/travel.jpg'),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 12.0),
            child: Column(
              children: [
                Text(
                  'Time to Travel Around',
                  style: TextStyle(
                    fontSize: 36.0,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  'Lets Explore',
                  style: TextStyle(
                      fontSize: 36.0,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.secondary),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  alignment: Alignment.centerRight,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.popAndPushNamed(
                            context, const HomeScreen().routeName);
                      },
                      child: Container(
                        width: 150.0,
                        height: 48.0,
                        child: const Padding(
                          padding: EdgeInsets.only(right: 32.0),
                          child: Center(
                            child: Text(
                              'Explore Now',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.primary,
                          borderRadius: BorderRadius.circular(24.0),
                        ),
                      ),
                    ),
                    Container(
                      child: const Center(
                        child: Icon(Icons.navigate_next_outlined),
                      ),
                      width: 40.0,
                      height: 40.0,
                      margin: const EdgeInsets.only(right: 4.0),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(24.0)),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 6.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 150.0,
                  height: 48.0,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 14.0, right: 6.0),
                        child: Icon(
                          Icons.play_circle,
                          color: Theme.of(context).colorScheme.onSecondary,
                        ),
                      ),
                      const Text(
                        'Play Videos',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.secondary,
                    borderRadius: BorderRadius.circular(24.0),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
