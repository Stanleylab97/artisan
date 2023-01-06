import 'package:artisan/models/populaire.dart';
import 'package:artisan/pages/detailsArtisan.dart';
import 'package:artisan/pages/launcher.dart';
import 'package:artisan/pages/search.dart';
import 'package:artisan/services/sql_helper.dart';
import 'package:artisan/widgets/stats_widgets.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:artisan/models/artisan.dart';
import 'package:artisan/models/commune.dart';
import 'package:artisan/models/departement.dart';
import 'package:lottie/lottie.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';
import 'models/arrondissement.dart';

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
      home: const Launcher(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

    List<Map<String, dynamic>> _journals = [];

  bool _isLoading = true;



void loadHistoric() async {
    final data = await SQLHelper.getLatestSearch();
    SharedPreferences prefs=await SharedPreferences.getInstance();
    prefs.setInt('nbsearch', data.length);
    setState(() {
      _journals = data;
      _isLoading = false;
      print("Historique: $_journals");
    });
  }


@override
  void initState() {
   
    super.initState();
     loadHistoric();
  }
  @override
  Widget build(BuildContext context) {
    List<Artisan> x = Artisan.getArtisans();
    
    Size size = MediaQuery.of(context).size;

    Future<void> _launchInBrowser(Uri url) async {
      if (!await launchUrl(
        url,
        mode: LaunchMode.externalApplication,
      )) {
        throw 'Could not launch $url';
      }
    }

    final Uri toLaunch =
        Uri(scheme: 'https', host: 'www.fda.bj', path: 'headers/');
    Future<void>? _launched;

    String getHistoricText(tab){
        if(tab['com_id']==null && tab['arr_id'] ==null)
          return "${tab['metier']} du département \"${tab['departement']}\"";
        else if(tab['com_id'] !=null && tab['arr_id'] ==null)  
        return "${tab['metier']} de la commune \"${tab['commune']}\"";
        else if(tab['com_id'] !=null && tab['arr_id'] !=null)
          return "${tab['metier']} de l'arrondissement de ${tab['arrondissement']}";
        else 
        return "";
    }

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                        child: Image.asset('assets/images/MPMEPE-01.png',
                            width: size.width * .25),
                        onTap: (() async {
                          final url = Uri.parse('https://pmepe.gouv.bj/');
                          if (await canLaunchUrl(url))
                            await launchUrl(url);
                          else
                            throw 'Could not launch';
                        })),
                    GestureDetector(
                      child: FaIcon(
                        FontAwesomeIcons.magnifyingGlass,
                        size: 30,
                      ),
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Search()));
                      },
                    ),
                    GestureDetector(
                        child: Image.asset('assets/images/fda_logo.png',
                            width: size.width * .22, height: size.height * .1),
                        onTap: (() async {
                          final url = Uri.parse('https://fda.bj/');
                          if (await canLaunchUrl(url))
                            await launchUrl(url);
                          else
                            throw 'Could not launch';
                        })),
                  ],
                ),
              ),
             // SizedBox(height: size.height * .02),
              SliverToBoxAdapter(
                child: Container(
                  width: size.width,
                  height: size.height * .20,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(95, 146, 33, 1),
                      borderRadius: BorderRadius.circular(30)),
                  child: Center(
                    child: Text(
                      'Trouver un artisan qualifié n’a jamais été aussi simple',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.satisfy(color: Colors.white, fontSize: 30),
                    ),
                  ),
                ),
              ),
             
        
              SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 20,
                      bottom: 15,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        StatItem(
                          label: "Artisans",
                          value: "${x.length}",
                          haveBadge: true,
                          badge: MyBadge(
                            icon: Icons.arrow_upward,
                            text: "4%",
                            color: Colors.green,
                          ),
                        ),
                        StatItem(
                          label: "Communes",
                          value: "${Commune.getCommunes().length}",
                          haveBadge: false,
                         
                        ),
                        StatItem(
                          label: "Arrondissements",
                          value: "${Arrondissement.getArrondissements().length}",
                          haveBadge: false,
                        ),
                      ],
                    ),
                  ),
                ),
                 SliverToBoxAdapter(
               child: Padding(
                 padding: const EdgeInsets.only(top: 20, left: 8, right: 8, bottom: 50),
                 child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: size.width * .7,
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(205, 54, 39, 1),
                              borderRadius: BorderRadius.circular(5)),
                          child: AutoSizeText(
                            'Vos dernières recherches',
                            textAlign: TextAlign.center,
                            style:
                                GoogleFonts.lexend(color: Colors.white, fontSize: 20),
                          ),
                        ),
                      ],
                    ),
               )
              ),
              
             SliverToBoxAdapter(
              child: _journals.length>0 ? ListView.builder(
                shrinkWrap: true,
                itemCount: _journals.length,
                itemBuilder: (context, index){
                  final recherche= _journals[index];
                  return GestureDetector(
                    child: Card(
                      child: ListTile(
                        leading: Icon(Icons.history),
                        title: Text(getHistoricText(recherche)),
                        trailing: Icon(Icons.forward),
                      ),
                    ),
                    onTap: () {
                      if(recherche['com_id']==null && recherche['arr_id'] ==null)
 Navigator.push( context, MaterialPageRoute(builder: (context) => Search(metier: recherche['metier_id'].toString(), departement: recherche['dep_id'].toString())));
                    else if(recherche['com_id'] !=null && recherche['arr_id'] ==null)     
 Navigator.push( context, MaterialPageRoute(builder: (context) => Search(metier: recherche['metier_id'].toString(), departement: recherche['dep_id'].toString(), commune: recherche['com_id'].toString())));
                      else if(recherche['com_id'] !=null && recherche['arr_id'] !=null)
                      Navigator.push( context, MaterialPageRoute(builder: (context) => Search(metier: recherche['metier_id'].toString(), departement: recherche['dep_id'].toString(), commune: recherche['com_id'].toString(), arrondissement: recherche['arr_id'])));
                      else
                      Navigator.push( context, MaterialPageRoute(builder: (context) => Search()));
                     
                    },
                  );
                }) : Center(
                    child: Lottie.asset(
                        'assets/animations/historic_search.json')),
             )  
              
            ],
          ),
        ),
      ),
    );
  }
}
