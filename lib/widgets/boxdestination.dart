import 'package:flutter/material.dart';

class BoxDestination extends StatelessWidget {
  const BoxDestination({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(horizontal: 17),
      height: MediaQuery.of(context).size.height * 0.22,
      width: MediaQuery.of(context).size.width * 0.85,
      decoration: const BoxDecoration(
         /*image: DecorationImage(
          image: AssetImage(
              'assets/img.jpg'),
          fit: BoxFit.fill,
        ),*/
          color: Color.fromARGB(255, 220, 223, 224),
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(width: 10),
              _iconDestination(),
              const SizedBox(
                width: 16,
                height: 10,
              ),
              _originAndDestionation(),
              const SizedBox(width: 55),
              //_originAndDestionationIcon()
            ],
          )
        ],
      ),
    );
  }
}

/*Widget _originAndDestionationIcon() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: const [
      Text("UK", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
      SizedBox(height: 15),
      Icon(Icons.swap_vert,
          color: Color.fromARGB(255, 139, 143, 143), size: 40),
      SizedBox(height: 15),
      Text("KTM", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
    ],
  );
}*/

Widget _originAndDestionation() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      RichText(
        text: const TextSpan(children: [
          TextSpan(
              text: "Balloon Ride / Safari",
              style: TextStyle(
                  color: Color.fromARGB(255, 12, 8, 1), fontSize: 20,fontWeight: FontWeight.w500)),
          TextSpan(
            text: "",
            style: TextStyle(
                fontSize: 20, color: Color.fromARGB(255, 14, 6, 29), fontWeight: FontWeight.w500),
          )
        ]),
      ),
      const SizedBox(height: 65),
      RichText(
        text: const TextSpan(children: [
          TextSpan(
              text: " \n\n",
              style: TextStyle(
                  color: Color.fromARGB(255, 19, 14, 3), fontSize: 16,fontWeight: FontWeight.w500)),
          TextSpan(
            text: "\$1000 per flight",
            style: TextStyle(
                fontSize: 18, color: Colors.black, fontWeight: FontWeight.w500),
          )
        ]),
      ),
    ],
  );
}

Widget _iconDestination() {
  return Container(
    
    child: Column(
      children: const [
        Icon(Icons.location_on,
            color: Color.fromARGB(255, 231, 49, 17), size: 30),
        Icon(Icons.fiber_manual_record,
            color: Color.fromARGB(255, 224, 91, 68), size: 12),
        Icon(Icons.fiber_manual_record,
            color: Color.fromARGB(255, 218, 118, 101), size: 12),
        Icon(Icons.fiber_manual_record,
            color: Color.fromARGB(255, 224, 150, 137), size: 12),
        Icon(Icons.fiber_manual_record,
            color: Color.fromARGB(255, 107, 180, 98), size: 12),
        Icon(Icons.fiber_manual_record,
            color: Color.fromARGB(255, 69, 158, 74), size: 12),
        Icon(Icons.fiber_manual_record,
            color: Color.fromARGB(255, 43, 165, 43), size: 12),
        Icon(Icons.airplanemode_active,
            color: Color.fromARGB(255, 29, 192, 7), size: 30),
      ],
      
  
    ),
    
  );
}
