import 'package:flutter/material.dart';
import 'plants_description.dart';

class DescriotionContainer extends StatelessWidget {
  const DescriotionContainer({Key? key, required this.plantData}) : super(key: key);

  final PlantData plantData;

  @override
  Widget build(BuildContext context) {
    return Column(
      children:  [

        const Padding(
          padding: EdgeInsets.symmetric(vertical: 15),
          child: Divider(height: 20,color: Colors.black,thickness: 0.6),
        ),
        Text(plantData.title,style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.green
        ),),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 15.0),
          child: Container(
              height: 230,
              width: double.infinity,
              child: Image.asset(plantData.image,fit: BoxFit.fill)),
        ),
        Text(plantData.sesson,style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.red,
        ),),
        Padding(
          padding: const EdgeInsets.all(25.0),
          child: Text(plantData.description,style: const TextStyle(
            color: Colors.grey,
            fontSize: 20,
          ),),
        ),
        const SizedBox(height:30.0),
      ],
    );
  }
}
