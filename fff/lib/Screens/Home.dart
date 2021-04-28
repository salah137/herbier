import 'package:flutter/material.dart';
import '../Layouts/ItemCreator.dart';
import '../Modles/data.dart';
import 'SearchScreen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  static var searched = TextEditingController();
  bool typing = false;

  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: typing ? TextBox() : Text("Herbier"),
        leading: IconButton(
          icon: Icon(typing ? Icons.done : Icons.search),
          onPressed: () {
            setState(() {
              if (typing) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) {
                      return Search(
                        id: searched.text,
                      );
                    },
                  ),
                );
                typing = !typing;

              } else {
                typing = !typing;
              }
            });
          },
        ),
      ),
      body: ListView.builder(
        itemBuilder: (_, i) {
          return Column(
            children: [
              ItemCreator(
                plant: plantes[i],
              ),
              SizedBox(
                height: 20,
              )
            ],
          );
        },
        itemCount: plantes.length,
      ),
    );
  }
}

class TextBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      color: Colors.white,
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
        child: TextField(
          controller: _HomeScreenState.searched,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            hintText: 'Entre Id of Item',
            border: OutlineInputBorder(
              borderRadius: const BorderRadius.all(
                const Radius.circular(10.0),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
