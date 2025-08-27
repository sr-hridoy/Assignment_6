# List_View
import 'package:flutter/material.dart';
import 'package:project_61a/single_item_page.dart';

class ListviewPage extends StatelessWidget {
  const ListviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    var myItems = [
      {
        "img":
            "https://upload.wikimedia.org/wikipedia/commons/3/32/Buffalo2010_096.jpg",
        "title": "Waterfall",
      },
      {
        "img":
            "https://upload.wikimedia.org/wikipedia/commons/3/35/Pic_du_Taillon_Sheep_Pyrenees_France_20060820a.jpg",
        "title": "Mountain",
      },
      {
        "img":
            "https://upload.wikimedia.org/wikipedia/commons/0/01/Central_pyrenees.jpg",
        "title": "Snow",
      },
      {
        "img":
            "https://upload.wikimedia.org/wikipedia/commons/3/36/Catalonia_StQuirzeBesora_Ter_river.jpg",
        "title": "River",
      },
      {
        "img":
            "https://upload.wikimedia.org/wikipedia/commons/e/ef/8_natur2.jpg",
        "title": "Forest",
      },
      {
        "img":
            "https://upload.wikimedia.org/wikipedia/commons/9/9a/Cape_may.jpg",
        "title": "Sunset",
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("ListView"),
        backgroundColor: Colors.blueGrey,
      ),
      body: ListView.builder(
        itemCount: myItems.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SingleItemPage(
                    image: myItems[index]['img']!,
                    title: myItems[index]['title']!,
                  ),
                ),
              );
            },
            child: Card(
              color: Colors.blueGrey,
              margin: const EdgeInsets.all(8),
              child: Row(
                children: [
                  Image.network(
                    myItems[index]['img']!,
                    width: 150,
                    height: 150,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(width: 20),
                  Text(
                    myItems[index]['title']!,
                    style: const TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
