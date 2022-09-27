import 'dart:convert';
import 'dart:ui';
import 'package:artisan/main.dart';
import 'package:artisan/services/sql_helper.dart';
import 'package:another_flushbar/flushbar.dart';
import 'package:artisan/models/commune.dart';
import 'package:artisan/models/departement.dart';
import 'package:artisan/models/metier.dart';
import 'package:artisan/pages/detailsArtisan.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:searchfield/searchfield.dart';
import 'package:sliding_up_panel2/sliding_up_panel2.dart';
import 'package:substring_highlight/substring_highlight.dart';
import '../models/arrondissement.dart';
import '../models/artisan.dart' show Artisan, UserModel;

class Search extends StatefulWidget {
  final String? metier, departement, commune, arrondissement;
  const Search(
      {Key? key,
      this.metier,
      this.departement,
      this.commune,
      this.arrondissement})
      : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  bool isSearching = false;

  late List<Artisan> listArtisans;

  late List<Artisan> filteredArtisans;

  late TextEditingController controller = TextEditingController();
  late TextEditingController metierC = TextEditingController();
  late TextEditingController depC = TextEditingController();
  late TextEditingController commC = TextEditingController();
  late TextEditingController arrC = TextEditingController();

  late List<String> param = ['', '', '', ''];

  bool? _filterKind = false;

  double _fabHeight = 0;
  double _panelHeightOpen = 0;
  double _panelHeightClosed = 95.0;
  late final ScrollController scrollController;
  late final PanelController panelController;

  @override
  void initState() {
    scrollController = ScrollController();
    panelController = PanelController();
    super.initState();
    listArtisans = filteredArtisans = Artisan.getArtisans();
    if(widget.metier != null){
 if (widget.commune == null && widget.arrondissement == null) {
      filteredArtisans = listArtisans
          .where((artisan) =>
              artisan.professionCode == widget.metier &&
              artisan.addrDept == widget.departement)
          .toList();
          
                    print('département');
                    print("${filteredArtisans.length}");
    } else if (widget.commune != null && widget.arrondissement == null) {
      filteredArtisans = listArtisans
          .where((artisan) =>
              artisan.professionCode == widget.metier &&
              artisan.addrDept == widget.departement &&
              artisan.commune == widget.commune)
          .toList();
                    print('commune');
    } else if (widget.commune != null && widget.arrondissement != null) {
      filteredArtisans = listArtisans
          .where((artisan) =>
                  artisan.professionCode == widget.metier &&
                  artisan.addrDept == widget.departement &&
                  artisan.commune == widget.commune //&&
              //artisan.arrd == widget.arrondissement.toString()
              )
          .toList();
          print('arrondissement');
    }
    }else{

      listArtisans = filteredArtisans = Artisan.getArtisans();
      print("default");
    
    }
   
   
  }

  @override
  void dispose() {
    scrollController.dispose();
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
    _panelHeightOpen = size.height * .668;

    return WillPopScope(
      onWillPop: () async {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => MyHomePage()));
        return true;
      },
      child: Scaffold(
        appBar: AppBar(
          leading: GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MyHomePage()));
            },
            child: Icon(Icons.arrow_back),
          ),
          title: Text(
            'Liste des artisans',
            style: TextStyle(color: Colors.white),
          ),
          actions: [
            IconButton(
              onPressed: () {
                showSearch(
                  context: context,
                  delegate: CustomSearchDelegate(),
                );
              },
              icon: const Icon(FontAwesomeIcons.magnifyingGlass),
            )
          ],
        ),
        body: Stack(
          alignment: Alignment.topCenter,
          children: <Widget>[
            SlidingUpPanel(
              snapPoint: .5,
              disableDraggableOnScrolling: false,
              header: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ForceDraggableWidget(
                      child: Container(
                        width: 100,
                        height: 40,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SizedBox(
                              height: 12.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                  width: 30,
                                  height: 7,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(12.0))),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              maxHeight: _panelHeightOpen,
              minHeight: size.height * .07,
              parallaxEnabled: true,
              parallaxOffset: .5,
              body: ArtisanList(filteredArtisans: filteredArtisans),
              controller: panelController,
              scrollController: scrollController,
              panelBuilder: () => _panel(metierC, depC, commC, arrC),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0)),
              onPanelSlide: (double pos) => setState(() {}),
              color: Colors.green.withOpacity(0.9),
            ),
          ],
        ),
      ),
    );
  }

  Widget _panel(metierC, depC, commC, arrC) {
    return MediaQuery.removePadding(
        context: context,
        removeTop: true,
        child: ListView(
          physics: PanelScrollPhysics(controller: panelController),
          controller: scrollController,
          children: <Widget>[
            SizedBox(
              height: MediaQuery.of(context).size.height * .037,
            ),
            Row(
              children: <Widget>[
                SizedBox(width: MediaQuery.of(context).size.width * 0.28),
                Center(
                  child: Text(
                    "Recherche avancée",
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 20.0,
                        color: Colors.white),
                  ),
                ),
                SizedBox(width: MediaQuery.of(context).size.width * 0.08),
                InkWell(
                    child: FaIcon(
                      FontAwesomeIcons.arrowRotateRight,
                      color: Colors.white,
                    ),
                    onTap: () {
                      setState(() {
                        param = ['', '', '', ''];
                        metierC.clear();
                        depC.clear();
                        commC.clear();
                        arrC.clear();
                        print('Values cleaned');
                      });
                    })
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.001),
            Container(
              padding: const EdgeInsets.only(left: 24.0, right: 24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 20, bottom: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Métier:",
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        Expanded(
                          child: Container(
                            child: SearchField(
                              controller: metierC,
                              onSuggestionTap: (x) {
                                param[0] = Metier.getMetiers()
                                    .firstWhere(
                                        (element) => element.nom == x.searchKey)
                                    .code;

                                print(param[0]);
                              },
                              hint: 'Entrez le métier',
                              searchStyle: TextStyle(
                                fontSize: 18,
                                color: Colors.white.withOpacity(0.8),
                              ),
                              //onSuggestionTap:,
                              suggestions: Metier.getMetiers()
                                  .map((e) => SearchFieldListItem(e.nom,
                                      child: Text(e.nom)))
                                  .toList(),
                              searchInputDecoration: InputDecoration(
                                  hintStyle: TextStyle(color: Colors.white),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.white, width: 1),
                                      borderRadius: BorderRadius.circular(10)),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.white, width: 2),
                                      borderRadius: BorderRadius.circular(10))),
                              itemHeight: 50,
                              suggestionsDecoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  CompleteFilter(
                      param: param, depC: depC, commC: commC, arrC: arrC),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .00001,
                  ),
                  InkWell(
                    hoverColor: Colors.orange,
                    splashColor: Colors.red,
                    focusColor: Colors.yellow,
                    highlightColor: Colors.purple,
                    onTap: () {
                      setState(() {
                        if (param[0] != "" && param[1] != "") {
                          if (param[2] != "" && param[3] != "") {
                            print(
                                'Metier: ${param[0]} de  ${param[1]} in commune ${param[2]} & arrondissement ${param[3]}');
                            SQLHelper.saveResearch(
                                metierC.text,
                                param[0],
                                depC.text,
                                param[1],
                                commC.text,
                                param[2],
                                arrC.text,
                                param[3]);
                            filteredArtisans = listArtisans
                                .where((artisan) =>
                                        artisan.professionCode == param[0] &&
                                        artisan.addrDept == param[1] &&
                                        artisan.commune == param[2] //&&
                                    //artisan.addrDept == param[3]
                                    )
                                .toList();
                          }

                          if (param[2] != "" && param[3] == "") {
                            print(
                                'Metier: ${param[0]} de  ${param[1]} in commune ${param[2]}');
                            SQLHelper.saveResearch(
                                metierC.text,
                                param[0],
                                depC.text,
                               param[1],
                                commC.text,
                                param[2],
                                null,
                                null);
                            filteredArtisans = listArtisans
                                .where((artisan) =>
                                        artisan.professionCode == param[0] &&
                                        artisan.addrDept == param[1] &&
                                        artisan.commune == param[2] //&&
                                    //artisan.addrDept == param[3]
                                    )
                                .toList();
                          }

                          if (param[2] == "" && param[3] == "") {
                            print(
                                'Metier: ${param[0]} de departemement  ${param[1]} ');
                            SQLHelper.saveResearch(
                                metierC.text,
                                param[0],
                                depC.text,
                                param[1],
                                null,
                                null,
                                null,
                                null);
                            filteredArtisans = listArtisans
                                .where((artisan) =>
                                    artisan.professionCode == param[0] &&
                                    artisan.addrDept == param[1])
                                .toList();
                          }
                        } else {
                          Flushbar(
                            message:
                                "Veuillez définir le métier et le département",
                            icon: Icon(
                              Icons.info_outline,
                              size: 28.0,
                              color: Colors.blue[300],
                            ),
                            duration: Duration(seconds: 3),
                          )..show(context);
                        }
                      });
                      setState(() {
                        param = ['', '', '', ''];
                        metierC.clear();
                        depC.clear();
                        commC.clear();
                        arrC.clear();
                      });
                      panelController.close();
                    },
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      width: 200,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      alignment: Alignment.center,
                      child: const Text('Appliquer'),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 24,
            ),
          ],
        ));
  }
}

class CompleteFilter extends StatelessWidget {
  const CompleteFilter(
      {Key? key,
      required this.param,
      required this.depC,
      required this.commC,
      required this.arrC})
      : super(key: key);

  final List<String> param;
  final TextEditingController depC;
  final TextEditingController commC;
  final TextEditingController arrC;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 20, bottom: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Département:",
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              Expanded(
                child: Container(
                  child: SearchField(
                    controller: depC,
                    onSuggestionTap: (x) {
                      param[1] = Departement.getDepartements()
                          .firstWhere((element) => element.nom == x.searchKey)
                          .code;

                      print(param[1]);
                    },
                    hint: 'Entrez le département',
                    searchStyle: TextStyle(
                      fontSize: 18,
                      color: Colors.white.withOpacity(0.8),
                    ),
                    //onSuggestionTap:,
                    suggestions: Departement.getDepartements()
                        .map((e) =>
                            SearchFieldListItem(e.nom, child: Text(e.nom)))
                        .toList(),
                    searchInputDecoration: InputDecoration(
                        hintStyle: TextStyle(color: Colors.white),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.white, width: 1),
                            borderRadius: BorderRadius.circular(10)),
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.white, width: 2),
                            borderRadius: BorderRadius.circular(10))),
                    itemHeight: 50,
                    suggestionsDecoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 20, bottom: 20),
          child: Row(
            children: [
              Text(
                "Commune:",
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              SizedBox(
                width: 15,
              ),
              Expanded(
                child: Container(
                  child: SearchField(
                    controller: commC,
                    onSuggestionTap: (x) {
                      param[2] = Commune.getCommunes()
                          .firstWhere((element) => element.nom == x.searchKey)
                          .code;

                      param[1] = Commune.getCommunes()
                          .firstWhere((element) => element.nom == x.searchKey)
                          .departementCode;

                      depC.text = Departement.getDepartements()
                          .firstWhere((element) => element.code == param[1])
                          .nom;
                    },
                    hint: 'Saisissez la commune',
                    searchStyle: TextStyle(
                      fontSize: 18,
                      color: Colors.white.withOpacity(0.8),
                    ),
                    //onSuggestionTap:,
                    suggestions: param[1] != ""
                        ? Commune.getCommunes()
                            .where((commune) =>
                                commune.departementCode == param[1])
                            .map((e) =>
                                SearchFieldListItem(e.nom, child: Text(e.nom)))
                            .toList()
                        : Commune.getCommunes()
                            .map((e) =>
                                SearchFieldListItem(e.nom, child: Text(e.nom)))
                            .toList(),
                    searchInputDecoration: InputDecoration(
                        hintStyle: TextStyle(color: Colors.white),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.white, width: 1),
                            borderRadius: BorderRadius.circular(10)),
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.white, width: 2),
                            borderRadius: BorderRadius.circular(10))),
                    itemHeight: 50,
                    suggestionsDecoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 20, bottom: 20),
          child: Row(
            children: [
              Text(
                "Arrondissement:",
                style: TextStyle(fontSize: 11, color: Colors.white),
              ),
              SizedBox(
                width: 15,
              ),
              Expanded(
                child: Container(
                  child: SearchField(
                    controller: arrC,
                    onSuggestionTap: (x) {
                      param[3] = Arrondissement.getArrondissements()
                          .firstWhere((element) => element.nom == x.searchKey)
                          .code;

                      print(param[3]);
                    },
                    hint: 'Saisissez l\'arrondissement',
                    searchStyle: TextStyle(
                      fontSize: 18,
                      color: Colors.white.withOpacity(0.8),
                    ),
                    //onSuggestionTap:,
                    suggestions: param[2] != ""
                        ? Arrondissement.getArrondissements()
                            .where((arrondissemt) =>
                                arrondissemt.codeCommune == param[2])
                            .map((e) =>
                                SearchFieldListItem(e.nom, child: Text(e.nom)))
                            .toList()
                        : [],
                    searchInputDecoration: InputDecoration(
                        hintStyle: TextStyle(color: Colors.white),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.white, width: 1),
                            borderRadius: BorderRadius.circular(10)),
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.white, width: 2),
                            borderRadius: BorderRadius.circular(10))),
                    itemHeight: 50,
                    suggestionsDecoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class PanelWidget extends StatelessWidget {
  final ScrollController controller;

  PanelWidget({Key? key, required this.controller}) : super(key: key);
  @override
  Widget build(BuildContext context) => ListView();
}

class ArtisanList extends StatelessWidget {
  const ArtisanList({
    Key? key,
    required this.filteredArtisans,
  }) : super(key: key);

  final List<Artisan> filteredArtisans;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
                        child: Container(
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30)),
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
                        ),
                      );
                    },
                    itemCount: filteredArtisans.length,
                  )),
      ],
    );
  }
}

class CustomSearchDelegate extends SearchDelegate {
  List<Artisan> listArtisans = Artisan.getArtisans();

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = '';
          },
          icon: Icon(
            Icons.clear,
            color: Colors.white,
          ))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          close(context, null);
        },
        icon: Icon(
          Icons.arrow_back_rounded,
          color: Colors.white,
        ));
  }

  @override
  Widget buildResults(BuildContext context) {
    List<Artisan> filteredArtisans = listArtisans
        .where((artisan) =>
            artisan.professionName
                .toLowerCase()
                .contains(query.toLowerCase()) ||
            artisan.Surname.toLowerCase().contains(query.toLowerCase()) ||
            artisan.forename.toLowerCase().contains(query.toLowerCase()))
        .toList();
    return Column(children: [
      Expanded(
          //height: size.height * .4,
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
    ]);
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<Artisan> filteredArtisans = listArtisans
        .where((artisan) =>
            artisan.professionName
                .toLowerCase()
                .contains(query.toLowerCase()) ||
            artisan.Surname.toLowerCase().contains(query.toLowerCase()) ||
            artisan.forename.toLowerCase().contains(query.toLowerCase()))
        .toList();
    return Column(children: [
      Expanded(
          //height: size.height * .4,
          child: filteredArtisans.length == 0
              ? Center(
                  child: Lottie.asset(
                      'assets/animations/lf30_editor_8djg3wcl.json'))
              : ListView.builder(
                  itemBuilder: (BuildContext context, int index) {
                    Artisan artisan = filteredArtisans[index];
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    DetailArtisan(artisan: artisan)));
                      },
                      child: ListTile(
                        leading: Hero(
                          tag: 'artisan',
                          child: FaIcon(
                            FontAwesomeIcons.circleUser,
                            size: 50,
                          ),
                        ),
                        title: Text(artisan.Surname + " " + artisan.forename),
                        subtitle: Text(artisan.professionName),
                        trailing: GestureDetector(
                          child: FaIcon(FontAwesomeIcons.heart),
                          onTap: () {},
                        ),
                      ),
                    );
                  },
                  itemCount: filteredArtisans.length,
                )),
    ]);
  }
}
