import 'package:flutter/material.dart';
import '../Modles/data.dart';
import '../Layouts/ItemCreator.dart';
class Search extends StatelessWidget {
  var usedItem;
  final id;

  Search({Key key, @required this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    for (var i in plantes) {
      if (i.id == id) {
        usedItem = i;
        break;
      }
      if(plantes.indexOf(i) == plantes.length-1 ){
        if(i.id == i){
          usedItem = i;
        }
        else{
          usedItem = "any";
        }
      }
    }
    return usedItem != "any"?Scaffold(
      appBar: AppBar(
        title: Text("Search"),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Center(child: ItemCreator(
          plant: usedItem,
        ),
    ),
      )):Container(
      alignment: Alignment.center,
      child: Scaffold(
        body: Center(
          child: Text("Invalid id", style: TextStyle(
            fontSize: 30,
            color: Colors.red
          ),),
        ),
      ),
    );
  }
}
