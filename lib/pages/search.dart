import 'dart:convert';

import 'package:artisan/pages/detailsArtisan.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:substring_highlight/substring_highlight.dart';

import '../models/artisan.dart' show Artisan, UserModel;

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  bool isSearching = false;

  late List<Artisan> listArtisans;

  late List<Artisan> filteredArtisans;

  late TextEditingController controller=TextEditingController();

  

  @override
  void initState() {
    super.initState();
    setState(() {
      listArtisans = filteredArtisans= Artisan.getArtisans();
    });
  }
  
  void _filteredArtisans(value) {
    setState(() {
      filteredArtisans = listArtisans
          .where((artisan) =>
              artisan.professionName.toLowerCase().contains(value.toLowerCase()) ||  artisan.Surname.toLowerCase().contains(value.toLowerCase()) || artisan.forename.toLowerCase().contains(value.toLowerCase()) )
          .toList();
    });
  }



  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: SafeArea(
            child: Column(
      children: [
        Container(
          width: size.width,
          height: size.height * .13,
          decoration: BoxDecoration(
              // color: Color.fromRGBO(205, 54, 39, 0.7),
              image: DecorationImage(
                  image: AssetImage('assets/images/search/search.jpg'),
                  colorFilter: ColorFilter.mode(
                      Color.fromRGBO(205, 54, 39, 0.7).withOpacity(0.7),
                      BlendMode.modulate),
                  fit: BoxFit.cover)),
          child: Transform.translate(
            offset: Offset(0, 8),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                 controller: controller,
                  //focusNode: focusNode,
                  // onEditingComplete: onEditingComplete,
                  onChanged: (value) {
                  _filteredArtisans(value);
                  },
                  decoration: InputDecoration(
                    fillColor: Colors.white, filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(color: Colors.grey[300]!),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(color: Colors.grey[300]!),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(color: Colors.grey[300]!),
                    ),
                    hintText: "Quel métier cherchez-vous ?",
                    hintStyle: TextStyle(color: Colors.black45),
                    prefixIcon: Icon(Icons.search, color: Colors.black,),
                    suffixIcon:   isSearching ? IconButton( icon: Icon(Icons.cancel), 
                  onPressed: () {
                    setState(() {

                      this.isSearching = false;
                      controller.clear();
                      filteredArtisans = listArtisans;
                    });
                  },
                )
              : IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {
                    setState(() {
                      this.isSearching = true;
                    });
                  },
                ),)
                    
                  ),
                ),
              ),
            ),
          ),
        
        Expanded(
          child: ListView.builder(
            itemBuilder: (BuildContext context, int index) {
              Artisan item = filteredArtisans[index];
              return InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DetailArtisan(artisan: item)));
                },
                child: ListTile(
                  leading: FaIcon(
                    FontAwesomeIcons.circleUser,
                    size: 50,
                  ),
                  title: Text(item.Surname + " " + item.forename),
                  subtitle: Text(item.professionName),
                  trailing: GestureDetector(
                    child: FaIcon(FontAwesomeIcons.heart),
                    onTap: () {},
                  ),
                ),
              );
            },
            itemCount: filteredArtisans.length,
          ),
        )
      ],
    )));
  }
}
