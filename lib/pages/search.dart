import 'dart:convert';

import 'package:artisan/pages/detailsArtisan.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
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

  late TextEditingController controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    setState(() {
      listArtisans = filteredArtisans = Artisan.getArtisans();
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  void _filteredArtisans(value) {
    setState(() {
      filteredArtisans = listArtisans
          .where((artisan) =>
              artisan.professionName
                  .toLowerCase()
                  .contains(value.toLowerCase()) ||
              artisan.Surname.toLowerCase().contains(value.toLowerCase()) ||
              artisan.forename.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

  void _AdvancedFilter(ville, metier) {
    setState(() {
      filteredArtisans = listArtisans
          .where((artisan) =>
              artisan.birthVilCode
                  .toLowerCase()
                  .contains(ville.toLowerCase()) &&
              artisan.professionName
                  .toLowerCase()
                  .contains(metier.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Stack(children: [
      Positioned.fill(
          child: Column(
        children: [
          Column(
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
                  offset: Offset(0, 18),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        children: [
                          TextField(
                              controller: controller,
                              //focusNode: focusNode,
                              // onEditingComplete: onEditingComplete,
                              onChanged: (value) {
                                if (value.length > 0)
                                  setState(() {
                                    isSearching == true;
                                  });

                                if (value.length == 0)
                                  setState(() {
                                    isSearching == false;
                                  });
                                _filteredArtisans(value);
                              },
                              decoration: InputDecoration(
                                  fillColor: Colors.white,
                                  filled: true,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    borderSide:
                                        BorderSide(color: Colors.grey[300]!),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    borderSide:
                                        BorderSide(color: Colors.grey[300]!),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    borderSide:
                                        BorderSide(color: Colors.grey[300]!),
                                  ),
                                  hintText: "Rechercher un artisan",
                                  hintStyle: TextStyle(color: Colors.black45),
                                  prefixIcon: Icon(
                                    Icons.search,
                                    color: Colors.black,
                                  ),
                                  suffixIcon: isSearching == false
                                      ? IconButton(
                                          icon:
                                              FaIcon(FontAwesomeIcons.sliders),
                                          onPressed: () {},
                                        )
                                      : IconButton(
                                          icon: Icon(Icons.cancel),
                                          onPressed: () {
                                            setState(() {
                                              isSearching = !isSearching;
                                              controller.clear();
                                              filteredArtisans = listArtisans;
                                            });
                                          },
                                        ))),
                          SizedBox(
                            height: size.height * .01,
                          ),
                          filteredArtisans.length > 1
                              ? Text(
                                  '${filteredArtisans.length} Résultats trouvés',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white))
                              : Text(
                                  '${filteredArtisans.length}  Résultat trouvé',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white))
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Expanded(
              child: filteredArtisans.length == 0
                  ? Center(
                      child: Lottie.asset(
                          'assets/animations/lf30_editor_8djg3wcl.json'))
                  : ListView.builder(
                      itemBuilder: (BuildContext context, int index) {
                        Artisan item = filteredArtisans[index];
                        return InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        DetailArtisan(artisan: item)));
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
                    )),
          /*  Stack(
                    children: [ DraggableScrollableSheet(builder: (BuildContext context, ScrollController scroller){
                      return Container(color: Colors.white,height:  size.height* .3,);
                    }, minChildSize: size.height* .3,
                    initialChildSize: size.height* .4,),
       ] ) */
        ],
      ))
    ]));
  }
}
