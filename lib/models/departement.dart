class Departement{
  late String code, nom;

  Departement({required this.code, required this.nom});

factory Departement.fromJson(dynamic json) {
    return Departement(code: json['CODE'] as String, nom: json['NOM'] as String);
 }

  static List<Departement> getDepartements(){
    var x={
      {
  "NOM": "ALIBORI",
  "CODE": "01"
 },
 {
  "NOM": "ATACORA",
  "CODE": "02"
 },
 {
  "NOM": "ATLANTIQUE",
  "CODE": "03"
 },
 {
  "NOM": "BORGOU",
  "CODE": "04"
 },
 {
  "NOM": "COLLINES",
  "CODE": "05"
 },
 {
  "NOM": "COUFFO",
  "CODE": "06"
 },
 {
  "NOM": "DONGA",
  "CODE": "07"
 },
 {
  "NOM": "LITTORAL",
  "CODE": "08"
 },
 {
  "NOM": "MONO",
  "CODE": "09"
 },
 {
  "NOM": "OUEME",
  "CODE": "10"
 },
 {
  "NOM": "PLATEAU",
  "CODE": "11"
 },
 {
  "NOM": "ZOU",
  "CODE": "12"
 }
    };
 var departementsObjsJson = x;
    return departementsObjsJson.map((departementJson) => Departement.fromJson(departementJson)).toList();
  }

}