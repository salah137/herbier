import 'package:flutter/material.dart';
import '../Modles/classforitems.dart';

class ItemCreator extends StatelessWidget {
  final Plante plant;

  const ItemCreator({Key key, this.plant}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (_) => InkWell(
        onTap: () {
          showBottomSheet(
            elevation: 200,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            context: context,
            builder: (_) {
              return ListView(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  CircleAvatar(
                    radius: 100,
                    backgroundImage: AssetImage(plant.imagePath),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Center(
                    child: Text(
                      plant.name,
                      style: TextStyle(fontSize: 50),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    margin: EdgeInsets.all(15),
                    child: Text(
                      plant.description,
                      style: TextStyle(fontSize: 20),
                    ),
                  )
                ],
              );
            },
          );
        },
        borderRadius: BorderRadius.circular(10),
        child:
            Container(
              alignment: Alignment.center,
              child: Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  Container(
                    height: 200,
                    width: 500,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(
                        plant.imagePath,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                    margin: EdgeInsets.all(10),
                    color: Colors.black87,
                    child: Text(
                      plant.name,
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  )
                ],
              ),
            ),

        ),
      );
  }
}
