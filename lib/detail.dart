import 'package:flutter/material.dart';

class Detail1 extends StatelessWidget {
  const Detail1({super.key});

  @override
  Widget build(BuildContext context) {
    List data= ModalRoute.of(context)!.settings.arguments as List;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("All Country List"),
        backgroundColor: Colors.grey,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Column(
            children: [
              Image.asset("${data[0]}",height: 200,width: 200,),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("${data[1]}",style: TextStyle(fontSize: 20),),
                  Text("${data[2]}",style: TextStyle(fontSize: 20),)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
