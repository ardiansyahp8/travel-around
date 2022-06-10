import 'package:flutter/material.dart';
import '../models/categories.dart';
import '../models/places.dart';

class HomeScreen extends StatelessWidget {
  final String routeName = '/home';

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(14.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: const [
                        CircleAvatar(
                          radius: 18,
                          backgroundImage:
                              AssetImage('assets/images/profile.png'),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 14.0),
                          child: Text(
                            'Hi, M. Ardiansyah Pratama',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16.0,
                            ),
                          ),
                        )
                      ],
                    ),
                    const Icon(Icons.notifications),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 14.0, top: 24.0),
                child: Row(
                  children: const [
                    Flexible(
                      child: Text(
                        'Let\'s Go Travel Around!',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 36.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 60.0,
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 26.0, horizontal: 14.0),
                child: Container(
                  child: Row(
                    children: [
                      const Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Jakarta, Indonesia',
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 14.0, vertical: 18.0),
                          ),
                          style: TextStyle(fontSize: 18.0),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(right: 14.0),
                        child: const CircleAvatar(
                          child: Icon(Icons.search_outlined),
                        ),
                      )
                    ],
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14.0),
                child: Row(
                  children: const [
                    Text(
                      'Categories',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20.0),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 14.0, vertical: 26.0),
                child: Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 100,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: tripCategories.length,
                          itemBuilder: (BuildContext context, index) {
                            return Container(
                              margin: const EdgeInsets.only(right: 14.0),
                              padding: const EdgeInsets.all(14.0),
                              height: 120.0,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.all(12.0),
                                    margin: const EdgeInsets.only(right: 14.0),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12.0),
                                      color: Theme.of(context)
                                          .colorScheme
                                          .background,
                                    ),
                                    child: Image(
                                      image: AssetImage(
                                          tripCategories[index].assetImage),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8.0),
                                    child: Text(
                                      tripCategories[index].name,
                                      style: const TextStyle(
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14.0),
                child: Row(
                  children: const [
                    Text(
                      'Top Trips',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20.0),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 14.0, vertical: 26.0),
                child: Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 280.0,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: places.length,
                          itemBuilder: (BuildContext context, index) {
                            return GestureDetector(
                              onTap: (() {
                                Navigator.pushNamed(
                                  context,
                                  '/detail',
                                  arguments: {
                                    'name': places[index].name,
                                    'categoryName': places[index].categoryName,
                                    'cost': places[index].cost,
                                    'costQuantifier':
                                        places[index].costQuantifier,
                                    'duration': places[index].duration,
                                    'rating': places[index].rating,
                                    'description': places[index].description,
                                    'assetImage': places[index].assetImage,
                                  },
                                );
                              }),
                              child: Container(
                                margin: const EdgeInsets.only(right: 14.0),
                                padding: const EdgeInsets.all(14.0),
                                width: 184.0,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                child: Column(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(12.0),
                                      child: Image(
                                        height: 160.0,
                                        width: 160.0,
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                            places[index].assetImage),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 8.0),
                                      child: Column(
                                        children: [
                                          Row(
                                            children: [
                                              Flexible(
                                                child: Text(
                                                  places[index].name,
                                                  style: const TextStyle(
                                                    fontSize: 16.0,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: const [
                                              Flexible(
                                                child: Text(
                                                  'Monument',
                                                  style: TextStyle(
                                                    fontSize: 14.0,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
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
