import 'dart:ui';

import 'package:artisan/models/artisan.dart';
import 'package:artisan/models/populaire.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailArtisan extends StatefulWidget {
  DetailArtisan({Key? key, required this.artisan}) : super(key: key);
  late Artisan artisan;

  @override
  State<DetailArtisan> createState() => _DetailArtisanState();
}

class _DetailArtisanState extends State<DetailArtisan> {
  @override
  Widget build(BuildContext context) {
   
    Row firstCard(BuildContext context) {
      return Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Card(
                  elevation: 8,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 8.0, right: 8.0, left: 8.0, bottom: 10),
                    child: Container(
                      width: MediaQuery.of(context).size.width * .93,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * .5,
                                height:
                                    MediaQuery.of(context).size.height * .28,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage("assets/images/populars/peintre.jpg"),
                                        fit: BoxFit.cover)),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      FaIcon(FontAwesomeIcons.hands),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(widget.artisan.professionName)
                                    ],
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Row(
                                    children: [
                                      FaIcon(FontAwesomeIcons.transgender),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(widget.artisan.gender == "F" ? "Femme":"Homme")
                                    ],
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Row(
                                    children: [
                                      FaIcon(FontAwesomeIcons.audioDescription),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text('Description :')
                                    ],
                                  ),
                                 SizedBox(
                                  height: MediaQuery.of(context).size.height * .1,
                                   child: SingleChildScrollView(
                                    scrollDirection: Axis.vertical,
                                    child: Text(widget.artisan.BusinessDesc,
                                    overflow: TextOverflow.ellipsis,
                                     textDirection: TextDirection.ltr, textAlign: TextAlign.justify,
                                      maxLines: 3,),),
                                 )
                                ],
                              )
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                               widget.artisan.Surname+ ' '+widget.artisan.forename,
                                style: GoogleFonts.inter(
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(width: 40),
                              FaIcon(FontAwesomeIcons.phone),
                              SizedBox(
                                width: 10,
                              ),
                              Text(widget.artisan.phone)
                            ],
                          ),
                          Row(
                            children: [
                              FaIcon(
                                FontAwesomeIcons.mapMarkerAlt,
                                color: Colors.grey[500],
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                widget.artisan.address,
                                style: GoogleFonts.inter(
                                    fontSize: 14, color: Colors.grey[500]),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  )),
            ],
          ),
        ],
      );
    }

     Widget _tabSection(BuildContext context) {
      return DefaultTabController(
          length: 3,
          child: Column(
            children: [
              Container(
                height: 45,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 168, 168, 161),
                    borderRadius: BorderRadius.circular(25.0)),
                child: TabBar(
                  indicator: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(25.0)),
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.black,
                  tabs: const [
                    Tab(
                      text: 'Localisation',
                    ),
                    Tab(
                      text: 'Identité',
                    ),
                    Tab(
                      text: 'Parents',
                    )
                  ],
                ),
              ),
              Container(
                  height: MediaQuery.of(context).size.height * .4,
                  child: TabBarView(
                    children: [
                     Padding(
                       padding: const EdgeInsets.only(left: 30, right: 10, top: 40),
                       child: Column(children: [
                        Row(children: [
                          Text("Département : ",  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                          SizedBox(width: MediaQuery.of(context).size.width * .1255),
                           Text(widget.artisan.addrDept,  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 18)),
                        ],),
                        SizedBox(height: MediaQuery.of(context).size.height * .03),
                        Row(children: [
                          Text("Ville : ", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                          SizedBox(width: MediaQuery.of(context).size.width * .3),
                           Text(widget.artisan.birthVilCode,  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 18)),
                        ],),
                         SizedBox(height: MediaQuery.of(context).size.height * .03),
                        Row(children: [
                          Text("Commune : ", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                          SizedBox(width: MediaQuery.of(context).size.width * .18),
                           Text(widget.artisan.commune,  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 18)),
                        ],),
                         SizedBox(height: MediaQuery.of(context).size.height * .03),
                        Row(children: [
                          Text("Adresse 1 : ", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                          SizedBox(width: MediaQuery.of(context).size.width * .18),
                           Text(widget.artisan.workAddr1==""?"Non renseigné":widget.artisan.workAddr1,  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 18)),
                        ],),
                         SizedBox(height: MediaQuery.of(context).size.height * .03),
                         Row(children: [
                          Text("Adresse 2: ", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                          SizedBox(width: MediaQuery.of(context).size.width * .2),
                           Text(widget.artisan.workAddr2==""?"Non renseigné":widget.artisan.workAddr2,  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 18)),
                        ],) 

                       ],),
                     ),
                    Padding(
                       padding: const EdgeInsets.only(left: 30, right: 10, top: 40),
                       child: Column(children: [
                        Row(children: [
                          Text("PSN : ",  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                          SizedBox(width: MediaQuery.of(context).size.width * .28),
                           Text(widget.artisan.PSN,  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 18)),
                        ],),
                        SizedBox(height: MediaQuery.of(context).size.height * .03),
                        Row(children: [
                          Text("LEPI : ", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                          SizedBox(width: MediaQuery.of(context).size.width * .28),
                           Text(widget.artisan.lepiCardNum,  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 18)),
                        ],),
                         SizedBox(height: MediaQuery.of(context).size.height * .03),
                        Row(children: [
                          Text("Surnom : ", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                          SizedBox(width: MediaQuery.of(context).size.width * .22),
                           Text(widget.artisan.forename1 ==""?"Non renseigné":widget.artisan.forename1,  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 18)),
                        ],),
                         SizedBox(height: MediaQuery.of(context).size.height * .03),
                        Row(children: [
                          Text("Lieu de naissance: ", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                          SizedBox(width: MediaQuery.of(context).size.width * .03),
                           Text(widget.artisan.birthPlace,  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 18)),
                        ],),
                        /*  SizedBox(height: MediaQuery.of(context).size.height * .03),
                         Row(children: [
                          Text("Adresse 2: ", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                          SizedBox(width: MediaQuery.of(context).size.width * .2),
                           Text("Rue 201, Marina",  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 18)),
                        ],) 
 */
                       ],),
                     ),
                      Padding(
                       padding: const EdgeInsets.only(left: 30, right: 10, top: 20),
                       child: Column(children: [
                      Center(child: Text("--------------------Père--------------------",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),),
                        Row(children: [
                          Text("Nom : ",  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                          SizedBox(width: MediaQuery.of(context).size.width * .15),
                           Text(widget.artisan.fatherSurname,  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 18)),
                        ],),
                        SizedBox(height: MediaQuery.of(context).size.height * .03),
                        Row(children: [
                          Text("Prénom : ", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                          SizedBox(width: MediaQuery.of(context).size.width * .1),
                           Text(widget.artisan.fatherForename,  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 18)),
                        ],),
                         SizedBox(height: MediaQuery.of(context).size.height * .03),
                        Row(children: [
                          Text("Anniversaire : ", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                          SizedBox(width: MediaQuery.of(context).size.width * .003),
                           Text(widget.artisan.fatherBirthDate.substring(0,8),  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 18)),
                        ],),
                         SizedBox(height: MediaQuery.of(context).size.height * .03),
                          Center(child: Text("------------------Mère------------------",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),),
                        Row(children: [
                          Text("Nom : ", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                          SizedBox(width: MediaQuery.of(context).size.width * .15),
                           Text(widget.artisan.motherSurname,  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 18)),
                        ],),
                         SizedBox(height: MediaQuery.of(context).size.height * .03),
                         Row(children: [
                          Text("Prénom: ", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                          SizedBox(width: MediaQuery.of(context).size.width * .10),
                           Text(widget.artisan.motherForename,  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 18)),
                        ],) ,
                         SizedBox(height: MediaQuery.of(context).size.height * .03),
                        Row(children: [
                          Text("Anniversaire : ", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                          SizedBox(width: MediaQuery.of(context).size.width * .003),
                           Text(widget.artisan.motherBirthDate.substring(0,8),  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 18)),
                        ],) 

                       ],),
                     ),
                    ],
                  ))
            ],
          ));
    }


    return Scaffold(
        appBar: AppBar(
          leading: Center(
            child: GestureDetector(
              child: FaIcon(
                FontAwesomeIcons.arrowLeft,
                color: Colors.white,
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ),
          title: Text('Détail de l\'artisan'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          firstCard(context),
          SizedBox(
            height: MediaQuery.of(context).size.height * .007,
          ),
          Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
            '# ',
            style: TextStyle(fontWeight: FontWeight.w900, fontSize: 22),
          ),   Text(
            'ID: ',
            style: TextStyle(fontWeight: FontWeight.normal, fontSize: 18),
          ),   Text(
             widget.artisan.regNum,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
          )
                ],
              )),
          SizedBox(
            height: MediaQuery.of(context).size.height * .007,
          ),
          _tabSection(context)
        ])));
  }
}
