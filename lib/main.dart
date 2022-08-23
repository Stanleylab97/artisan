import 'package:artisan/models/populaire.dart';
import 'package:artisan/pages/detailsArtisan.dart';
import 'package:artisan/pages/search.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:artisan/models/artisan.dart';
import 'package:artisan/models/commune.dart';
import 'package:artisan/models/departement.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Populaire> _listItem = [
    Populaire(
        image: 'assets/images/populars/macon.jpg',
        nom: 'GUIDJA',
        prenom: 'Rock',
        profession: 'Maçon'),
    Populaire(
        image: 'assets/images/populars/menusier.jpg',
        nom: 'BADOU',
        prenom: 'Michael',
        profession: 'Menuisier'),
    Populaire(
        image: 'assets/images/populars/potier.jpg',
        nom: 'MEDONOU',
        prenom: 'Luc',
        profession: 'Potier'),
    Populaire(
        image: 'assets/images/populars/peintre.jpg',
        nom: 'ABOU',
        prenom: 'Aliou',
        profession: 'Peintre')
  ];

  @override
  Widget build(BuildContext context) {
    List<Artisan> x = Artisan.getArtisans();
    print(
        'Nombre d\'artisans: ${x.length} Départements: ${Departement.getDepartements().length} Communes : ${Commune.getCommunes().length} ');
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 15, left: 10, right: 10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset('assets/images/fda_logo.png',
                      width: size.width * .22, height: size.height * .1),
                  GestureDetector(
                    child: FaIcon(
                      FontAwesomeIcons.magnifyingGlass,
                      size: 30,
                    ),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Search()));
                    },
                  )
                ],
              ),
              SizedBox(height: size.height * .02),
              Container(
                width: size.width,
                height: size.height * .20,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(95, 146, 33, 1),
                    borderRadius: BorderRadius.circular(30)),
                child: Center(
                  child: Text(
                    'Trouver un artisan qualifié n’a jamais été aussi simple',
                    textAlign: TextAlign.center,
                    style:
                        GoogleFonts.satisfy(color: Colors.white, fontSize: 30),
                  ),
                ),
              ),
              SizedBox(height: size.height * .05),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: size.width * .35,
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(205, 54, 39, 1),
                        borderRadius: BorderRadius.circular(20)),
                    child: AutoSizeText(
                      'Populaires',
                      textAlign: TextAlign.center,
                      style:
                          GoogleFonts.lexend(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ],
              ),
              SizedBox(height: size.height * .02),
              Expanded(
                  child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 4,
                mainAxisSpacing: 30,
                children: _listItem
                    .map((item) => GestureDetector(
                          child: Card(
                            color: Colors.transparent,
                            elevation: 0,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(20),
                                        topLeft: Radius.circular(20),
                                        bottomRight: Radius.circular(20),
                                      ),
                                      image: DecorationImage(
                                          image: AssetImage(item.image),
                                          fit: BoxFit.cover)),
                                  child: Transform.translate(
                                    offset: Offset(50, -50),
                                    child: Container(
                                      margin: EdgeInsets.symmetric(
                                          horizontal: 65, vertical: 63),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Colors.white),
                                      child: Icon(
                                        Icons.bookmark_border,
                                        size: 15,
                                      ),
                                    ),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    AutoSizeText(
                                      item.nom + ' ' + item.prenom,
                                      style: GoogleFonts.lexend(
                                          color: Colors.black, fontSize: 15),
                                    )
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      item.profession,
                                      style: GoogleFonts.lexend(
                                          color: Colors.grey[700],
                                          fontSize: 13),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                          onTap: () {
                            // Navigator.push(context, MaterialPageRoute(builder: (context) =>  DetailArtisan(artisan:item)));
                          },
                        ))
                    .toList(),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
