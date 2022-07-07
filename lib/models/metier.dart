class Metier{

late String code;
late String nom;

Metier({required this.code, required this.nom});

 factory Metier.fromJson(dynamic json) {
    return Metier(code: json['CODE_METIER_ARTISAN'] as String, nom: json['NOM METIER'] as String);
 }


   static List<Metier> getMetiers(){
    var x={
    
 {
  "CODE_METIER_ARTISAN": "1",
  "NOM METIER": "Fabricants d’assaisonnements"
 },
 {
  "CODE_METIER_ARTISAN": "7",
  "NOM METIER": "Fabricants d’autres produits à base de farine"
 },
 {
  "CODE_METIER_ARTISAN": "11",
  "NOM METIER": "Fabricants de gari, de tapioca"
 },
 {
  "CODE_METIER_ARTISAN": "14",
  "NOM METIER": "Fabricants d’huile à base de graines"
 },
 {
  "CODE_METIER_ARTISAN": "15",
  "NOM METIER": "Fabricants d’huile à base de noix"
 },
 {
  "CODE_METIER_ARTISAN": "20",
  "NOM METIER": "Transformateurs et conservateurs de poissons, de crustacées, de mollusques"
 },
 {
  "CODE_METIER_ARTISAN": "29",
  "NOM METIER": "Fabricants de boissons non alcoolisées"
 },
 {
  "CODE_METIER_ARTISAN": "30",
  "NOM METIER": "Boulangers"
 },
 {
  "CODE_METIER_ARTISAN": "32",
  "NOM METIER": "Fabricants de pâtes alimentaires"
 },
 {
  "CODE_METIER_ARTISAN": "38",
  "NOM METIER": "Fabricants de bouillies"
 },
 {
  "CODE_METIER_ARTISAN": "70",
  "NOM METIER": "Maçons"
 },
 {
  "CODE_METIER_ARTISAN": "78",
  "NOM METIER": "Constructeurs de bâtiments en terre de barre"
 },
 {
  "CODE_METIER_ARTISAN": "84",
  "NOM METIER": "Carreleurs"
 },
 {
  "CODE_METIER_ARTISAN": "89",
  "NOM METIER": "Électriciens bâtiment"
 },
 {
  "CODE_METIER_ARTISAN": "94",
  "NOM METIER": "Peintres-bâtiments"
 },
 {
  "CODE_METIER_ARTISAN": "105",
  "NOM METIER": "Vitriers"
 },
 {
  "CODE_METIER_ARTISAN": "118",
  "NOM METIER": "Forgerons"
 },
 {
  "CODE_METIER_ARTISAN": "121",
  "NOM METIER": "Tourneurs"
 },
 {
  "CODE_METIER_ARTISAN": "135",
  "NOM METIER": "Électriciens auto moto"
 },
 {
  "CODE_METIER_ARTISAN": "137",
  "NOM METIER": "Mécaniciens de moteurs hors-bords"
 },
 {
  "CODE_METIER_ARTISAN": "140",
  "NOM METIER": "Peintres autos moto"
 },
 {
  "CODE_METIER_ARTISAN": "142",
  "NOM METIER": "Réparateur  et mécanicien de cyclomoteurs,"
 },
 {
  "CODE_METIER_ARTISAN": "147",
  "NOM METIER": "Réparateurs et mécaniciens de véhicules"
 },
 {
  "CODE_METIER_ARTISAN": "150",
  "NOM METIER": "Vulcanisateurs"
 },
 {
  "CODE_METIER_ARTISAN": "154",
  "NOM METIER": "Conducteurs de taxis motos\/charrette \/ tricycles\/quadricycle"
 },
 {
  "CODE_METIER_ARTISAN": "160",
  "NOM METIER": "Électroniciens"
 },
 {
  "CODE_METIER_ARTISAN": "161",
  "NOM METIER": "Fabricants et réparateurs  de machines-outils"
 },
 {
  "CODE_METIER_ARTISAN": "183",
  "NOM METIER": "Rebobineurs"
 },
 {
  "CODE_METIER_ARTISAN": "197",
  "NOM METIER": "Machinistes en menuiserie bois"
 },
 {
  "CODE_METIER_ARTISAN": "198",
  "NOM METIER": "Menuisiers"
 },
 {
  "CODE_METIER_ARTISAN": "210",
  "NOM METIER": "Tisserands"
 },
 {
  "CODE_METIER_ARTISAN": "212",
  "NOM METIER": "Brodeurs,"
 },
 {
  "CODE_METIER_ARTISAN": "219",
  "NOM METIER": "Tailleurs \/ Couturiers,"
 },
 {
  "CODE_METIER_ARTISAN": "224",
  "NOM METIER": "Cordonniers"
 },
 {
  "CODE_METIER_ARTISAN": "233",
  "NOM METIER": "Imprimeurs,"
 },
 {
  "CODE_METIER_ARTISAN": "234",
  "NOM METIER": "Photographes"
 },
 {
  "CODE_METIER_ARTISAN": "238",
  "NOM METIER": "Techniciens de laboratoire photos"
 },
 {
  "CODE_METIER_ARTISAN": "240",
  "NOM METIER": "Installateurs\/réparateurs de matériel audiovisuel,"
 },
 {
  "CODE_METIER_ARTISAN": "245",
  "NOM METIER": "Coiffeurs"
 },
 {
  "CODE_METIER_ARTISAN": "246",
  "NOM METIER": "Tresseurs Modernes"
 },
 {
  "CODE_METIER_ARTISAN": "251",
  "NOM METIER": "Fabricants de cosmétiques et assimilés"
 },
 {
  "CODE_METIER_ARTISAN": "255",
  "NOM METIER": "Esthéticiens"
 },
 {
  "CODE_METIER_ARTISAN": "274",
  "NOM METIER": "Joailliers"
 },
 {
  "CODE_METIER_ARTISAN": "278",
  "NOM METIER": "fabricants de cachets"
 },
 {
  "CODE_METIER_ARTISAN": "282",
  "NOM METIER": "Sculpteurs et décorateurs sur tous matériaux"
 },
 {
  "CODE_METIER_ARTISAN": "292",
  "NOM METIER": "Calligraphes"
 },
 {
  "CODE_METIER_ARTISAN": "298",
  "NOM METIER": "Fabricants d’objets de décoration d’intérieur,"
 },
 {
  "CODE_METIER_ARTISAN": "311",
  "NOM METIER": "Spécialistes en art graphique"
 }

    };

 var metiersObjsJson = x;
    return metiersObjsJson.map((metierJson) => Metier.fromJson(metierJson)).toList();
  }
}








