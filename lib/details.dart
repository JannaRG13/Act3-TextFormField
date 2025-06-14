import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Details extends StatelessWidget {
  Details(
      {super.key, required this.productName, required this.productDescription});

  String productName, productDescription;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "Details",
          ),
          //Pop and navigate to previous screen
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back)),
        ),
        body: Container(
          padding: const EdgeInsets.all(4.0),
          child: ListView(
            children: [
              //Dynamic Tile
              ListTile(
                shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1.0, color: Colors.grey.shade300)),
                leading: IconButton(
                  icon: const Icon(Icons.chair, color: Color.fromARGB(255, 217, 117, 236)),
                  onPressed: () {},
                ),
                title: Text(
                  productName,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 18.0),
                ),
                subtitle: Text(productDescription),
                trailing: const Icon(
                  Icons.delete,
                  color: Colors.grey,
                ),
              ),

              //Static Tiles for design
              ListTile(
                shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1.0, color: Colors.grey.shade300)),
                leading: IconButton(
                  icon: const Icon(Icons.chair, color: Color.fromARGB(255, 217, 117, 236)),
                  onPressed: () {},
                ),
                title: const Text(
                  "1",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
                ),
                subtitle: const Text("Agencia 1"),
                trailing: const Icon(
                  Icons.delete,
                  color: Colors.grey,
                ),
              ),
              ListTile(
                shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1.0, color: Colors.grey.shade300)),
                leading: IconButton(
                  icon: const Icon(Icons.chair, color: Color.fromARGB(255, 217, 117, 236)),
                  onPressed: () {},
                ),
                title: const Text(
                  "2",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
                ),
                subtitle: const Text("Agencia 2"),
                trailing: const Icon(
                  Icons.delete,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ));
  }
}