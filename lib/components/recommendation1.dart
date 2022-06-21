import 'package:flutter/material.dart';

class RecommendationItem extends StatelessWidget {
  final String title;
  final String price;
  final Color color;
  // final Function onTap;
  final VoidCallback onTap;

  const RecommendationItem(
      {Key? key,
      required this.title,
      required this.price,
      required this.color,
      required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap, // onTap;
      child: Container(
        height: 180,
        width: 140,
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        margin: const EdgeInsets.only(right: 4),
        decoration: BoxDecoration(
            color: color,
            borderRadius: const BorderRadius.all(Radius.circular(14))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _icon(color),
            const SizedBox(height: 16),
            const Text("23 June 2022", style: TextStyle(color: Colors.white)),
            const SizedBox(height: 14),
            _destination1(),
            const SizedBox(height: 10),
            _price(price)
          ],
        ),
      ),
    );
  }
}

Widget _price(String price) {
  return Container(
    child: Row(
      children: [
        Text(price, style: const TextStyle(color: Colors.white, fontSize: 20)),
        const SizedBox(width: 20),
        /*const Icon(Icons.keyboard_double_arrow_right,
            size: 26, color: Colors.white)*/
      ],
    ),
  );
}

Widget _destination1() {
  return Container(
    child: Row(
      children: const [
        Text("Engagement",
            style: TextStyle(
                fontSize: 16,
                color: Colors.white,
                fontWeight: FontWeight.w600)),
        SizedBox(width: 2),
        Icon(Icons.cake,size: 16, color: Colors.white),
        SizedBox(width: 5),
       /* Text("USA",
            style: TextStyle(
                fontSize: 18,
                color: Colors.white,
                fontWeight: FontWeight.w600)),*/
      ],
    ),
  );
}

Widget _icon(Color color) {
  return Container(
    height: 35,
    width: 35,
    decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10))),
    child: const Icon(Icons.flight, color: Colors.black, size: 23),
  );
}
