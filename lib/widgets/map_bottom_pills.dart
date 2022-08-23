import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';

import 'category_icon.dart';


class MapBottomPill extends StatelessWidget {
  
  //SubCategory? subCategory;
    late String name, prenom, metier;
  late LatLng position;
  MapBottomPill({required this.name, required this.prenom, required this.metier,  required this.position});

  @override
  Widget build(BuildContext context) {

   
   // this.subCategory = catSelection.selectedSubCategory;
    
    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(40),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 10,
            offset: Offset.zero
          )
        ]
      ),
      child: Column(
        children: [
          Container(
            color: Colors.white,
            child: Row(
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                     ClipOval(
                      child: FaIcon(FontAwesomeIcons.circleUser, size: 60),
                        
                        //fit: BoxFit.cover
                      ),
                     
                    Positioned(
                      bottom: -10,
                      right: -10,
                      child: CategoryIcon(
                        color: Color.fromRGBO(95, 146, 33, 1),
                        iconName: "AB",
                        size: 20,
                        padding: 5
                      ),
                    )
                  ],
                ),
                SizedBox(width: 20),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(metier,
                        style: TextStyle(
                          color: Colors.grey[700],
                          fontWeight: FontWeight.bold,
                          fontSize: 15
                        )
                      ),
                      Text(name +' '+ prenom),
                      Text('2km de vous',
                        style: TextStyle(
                          color: Colors.green
                        )
                      )
                    ],
                  ),
                ),
                Icon(Icons.location_pin, color: Color.fromRGBO(95, 146, 33, 1), size: 50)
              ],
            )
          ),
          
        ],
      )
    );
  }
}