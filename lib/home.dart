import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  Home({super.key});

  List<String> nameList =[
    "India",
    "USA",
    "Canada",
    "London",
    "Africa",
    "Garmany",
    "Brazil",
    "France",
    "Belgium",
    "Australia",
    "Mexico",
  ];
  List f1List =[
    "assets/india.png",
    "assets/usa.png",
    "assets/canada.png",
    "assets/london.png",
    "assets/africa.png",
    "assets/gramany.png",
    "assets/brazil.png",
    "assets/franch.png",
    "assets/belgium.png",
    "assets/Australia.png",
    "assets/mexico.png",
  ];
  List<String> c1List = [
    "INR ( ₹ )",
    "Dollar (💲)",
    "CAD (C💲)",
    "Pound  (£)",
    "Rand (®️)",
    "Euro (€)",
    "BRL (R💲)",
    "Euro (€)",
    "Euro (€)",
    "AUD (AU💲)",
    "Euro (€)",
  ];
  List a1List = [
    Colors.amberAccent,
    Colors.blueAccent,
    Colors.redAccent,
    Colors.cyanAccent,
    Colors.orangeAccent,
    Colors.indigoAccent,
    Colors.pinkAccent,
    Colors.grey,
    Colors.greenAccent,
    Colors.purpleAccent,
    Colors.limeAccent,

  ];

  int i =0;
  int j =0;
  int k =0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Home"),
        backgroundColor: Colors.grey,
      ),
      body: Column(
        children: nameList.map((e) => Detail(e, f1List[i++],c1List[j++],a1List[k++],context)).toList(),
      ),
    );
  }
}

Widget Detail(String name,f1,c1,a1,BuildContext context){
  return InkWell(
    onTap: () {
      List s1 = [
        f1,
        name,
        c1,
      ];
      Navigator.pushNamed(context, "detail1", arguments: s1);
    },
    child: Center(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Container(
              width: 170,
              height: 50,
              decoration: BoxDecoration(
                color: a1,
                borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(10), right: Radius.circular(10),
                ),
              ),
              alignment: Alignment.center,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Text("${name}",style: TextStyle(fontSize: 30),),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    ),
  );

}