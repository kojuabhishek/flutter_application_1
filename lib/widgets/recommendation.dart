import 'package:flutter_application_1/screens/reservation.dart';
import 'package:flutter/material.dart';

import '../components/recommendation.dart';
import '../components/recommendation1.dart';

class Recommendation extends StatelessWidget {
  const Recommendation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Packages",
            style: TextStyle(
                color: Colors.black,
                fontSize: 17,
                fontWeight: FontWeight.w600)),
        const SizedBox(height: 14),
        Container(
          height: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              RecommendationItem1(
                title: "Nepal",
                price: "\$ 2099",
                color: const Color.fromARGB(255, 126, 125, 65),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Reservations(
                              color: Color.fromARGB(255, 240, 136, 176))));
                },
              ),
              const SizedBox(
                width: 10,
              ),
              RecommendationItem(
                  title: "Nepal",
                  price: "\$ 1099",
                  color: const Color.fromARGB(255, 69, 79, 211),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Reservations(
                                color: Color.fromARGB(255, 8, 151, 187))));
                  }),
              const SizedBox(
                width: 10,
              ),
              RecommendationItem(
                  title: "",
                  price: "\$ 999",
                  color: const Color.fromARGB(248, 126, 179, 223),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Reservations(
                                color: Color.fromARGB(249, 204, 143, 85))));
                  })
            ],
          ),
        )
      ],
    );
  }
}
