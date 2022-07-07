class Commune{
  late String code,nom, departementCode; 
 Commune({required this.code, required this.nom, required this.departementCode});

factory Commune.fromJson(dynamic json) {
    return Commune(code: json['CODE'] as String, nom: json['NOM'] as String, departementCode: json['DEPARTEMENT_CODE'] as String);
 }

static List<Commune> getCommunes(){
 var x={
  {
  "CODE": "0101",
  "NOM": "BANIKOARA",
  "DEPARTEMENT_CODE": "01"
 },
 {
  "CODE": "0102",
  "NOM": "GOGOUNOU",
  "DEPARTEMENT_CODE": "01"
 },
 {
  "CODE": "0103",
  "NOM": "KANDI",
  "DEPARTEMENT_CODE": "01"
 },
 {
  "CODE": "0104",
  "NOM": "KARIMAMA",
  "DEPARTEMENT_CODE": "01"
 },
 {
  "CODE": "0105",
  "NOM": "MALANVILLE",
  "DEPARTEMENT_CODE": "01"
 },
 {
  "CODE": "0106",
  "NOM": "SEGBANA",
  "DEPARTEMENT_CODE": "01"
 },
 {
  "CODE": "0201",
  "NOM": "BOUKOUMBE",
  "DEPARTEMENT_CODE": "02"
 },
 {
  "CODE": "0202",
  "NOM": "COBLY",
  "DEPARTEMENT_CODE": "02"
 },
 {
  "CODE": "0203",
  "NOM": "KEROU",
  "DEPARTEMENT_CODE": "02"
 },
 {
  "CODE": "0204",
  "NOM": "KOUANDE",
  "DEPARTEMENT_CODE": "02"
 },
 {
  "CODE": "0205",
  "NOM": "MATERI",
  "DEPARTEMENT_CODE": "02"
 },
 {
  "CODE": "0206",
  "NOM": "NATITINGOU",
  "DEPARTEMENT_CODE": "02"
 },
 {
  "CODE": "0207",
  "NOM": "OUASSA-PEHUNCO",
  "DEPARTEMENT_CODE": "02"
 },
 {
  "CODE": "0208",
  "NOM": "TANGUIETA",
  "DEPARTEMENT_CODE": "02"
 },
 {
  "CODE": "0209",
  "NOM": "TOUKOUNTOUNA",
  "DEPARTEMENT_CODE": "02"
 },
 {
  "CODE": "0301",
  "NOM": "ABOMEY-CALAVI",
  "DEPARTEMENT_CODE": "03"
 },
 {
  "CODE": "0302",
  "NOM": "ALLADA",
  "DEPARTEMENT_CODE": "03"
 },
 {
  "CODE": "0303",
  "NOM": "KPOMASSE",
  "DEPARTEMENT_CODE": "03"
 },
 {
  "CODE": "0304",
  "NOM": "OUIDAH",
  "DEPARTEMENT_CODE": "03"
 },
 {
  "CODE": "0305",
  "NOM": "SO-AVA",
  "DEPARTEMENT_CODE": "03"
 },
 {
  "CODE": "0306",
  "NOM": "TOFFO",
  "DEPARTEMENT_CODE": "03"
 },
 {
  "CODE": "0307",
  "NOM": "TORI-BOSSITO",
  "DEPARTEMENT_CODE": "03"
 },
 {
  "CODE": "0308",
  "NOM": "ZE",
  "DEPARTEMENT_CODE": "03"
 },
 {
  "CODE": "0401",
  "NOM": "BEMBEREKE",
  "DEPARTEMENT_CODE": "04"
 },
 {
  "CODE": "0402",
  "NOM": "KALALE",
  "DEPARTEMENT_CODE": "04"
 },
 {
  "CODE": "0403",
  "NOM": "N'DALI",
  "DEPARTEMENT_CODE": "04"
 },
 {
  "CODE": "0404",
  "NOM": "NIKKI",
  "DEPARTEMENT_CODE": "04"
 },
 {
  "CODE": "0405",
  "NOM": "PARAKOU",
  "DEPARTEMENT_CODE": "04"
 },
 {
  "CODE": "0406",
  "NOM": "PERERE",
  "DEPARTEMENT_CODE": "04"
 },
 {
  "CODE": "0407",
  "NOM": "SINENDE",
  "DEPARTEMENT_CODE": "04"
 },
 {
  "CODE": "0408",
  "NOM": "TCHAOUROU",
  "DEPARTEMENT_CODE": "04"
 },
 {
  "CODE": "0501",
  "NOM": "BANTE",
  "DEPARTEMENT_CODE": "05"
 },
 {
  "CODE": "0502",
  "NOM": "DASSA-ZOUME",
  "DEPARTEMENT_CODE": "05"
 },
 {
  "CODE": "0503",
  "NOM": "GLAZOUE",
  "DEPARTEMENT_CODE": "05"
 },
 {
  "CODE": "0504",
  "NOM": "OUESSE",
  "DEPARTEMENT_CODE": "05"
 },
 {
  "CODE": "0505",
  "NOM": "SAVALOU",
  "DEPARTEMENT_CODE": "05"
 },
 {
  "CODE": "0506",
  "NOM": "SAVE",
  "DEPARTEMENT_CODE": "05"
 },
 {
  "CODE": "0601",
  "NOM": "APLAHOUE",
  "DEPARTEMENT_CODE": "06"
 },
 {
  "CODE": "0602",
  "NOM": "DJAKOTOMEY",
  "DEPARTEMENT_CODE": "06"
 },
 {
  "CODE": "0603",
  "NOM": "DOGBO",
  "DEPARTEMENT_CODE": "06"
 },
 {
  "CODE": "0604",
  "NOM": "KLOUEKANMEY",
  "DEPARTEMENT_CODE": "06"
 },
 {
  "CODE": "0605",
  "NOM": "LALO",
  "DEPARTEMENT_CODE": "06"
 },
 {
  "CODE": "0606",
  "NOM": "TOVIKLIN",
  "DEPARTEMENT_CODE": "06"
 },
 {
  "CODE": "0701",
  "NOM": "BASSILA",
  "DEPARTEMENT_CODE": "07"
 },
 {
  "CODE": "0702",
  "NOM": "COPARGO",
  "DEPARTEMENT_CODE": "07"
 },
 {
  "CODE": "0703",
  "NOM": "DJOUGOU",
  "DEPARTEMENT_CODE": "07"
 },
 {
  "CODE": "0704",
  "NOM": "OUAKE",
  "DEPARTEMENT_CODE": "07"
 },
 {
  "CODE": "0801",
  "NOM": "COTONOU",
  "DEPARTEMENT_CODE": "08"
 },
 {
  "CODE": "0901",
  "NOM": "ATHIEME",
  "DEPARTEMENT_CODE": "09"
 },
 {
  "CODE": "0902",
  "NOM": "BOPA",
  "DEPARTEMENT_CODE": "09"
 },
 {
  "CODE": "0903",
  "NOM": "COME",
  "DEPARTEMENT_CODE": "09"
 },
 {
  "CODE": "0904",
  "NOM": "GRAND-POPO",
  "DEPARTEMENT_CODE": "09"
 },
 {
  "CODE": "0905",
  "NOM": "HOUEYOGBE",
  "DEPARTEMENT_CODE": "09"
 },
 {
  "CODE": "0906",
  "NOM": "LOKOSSA",
  "DEPARTEMENT_CODE": "09"
 },
 {
  "CODE": "1001",
  "NOM": "ADJARRA",
  "DEPARTEMENT_CODE": "10"
 },
 {
  "CODE": "1002",
  "NOM": "ADJOHOUN",
  "DEPARTEMENT_CODE": "10"
 },
 {
  "CODE": "1003",
  "NOM": "AGUEGUES",
  "DEPARTEMENT_CODE": "10"
 },
 {
  "CODE": "1004",
  "NOM": "AKPRO-MISSERETE",
  "DEPARTEMENT_CODE": "10"
 },
 {
  "CODE": "1005",
  "NOM": "AVRANKOU",
  "DEPARTEMENT_CODE": "10"
 },
 {
  "CODE": "1006",
  "NOM": "BONOU",
  "DEPARTEMENT_CODE": "10"
 },
 {
  "CODE": "1007",
  "NOM": "DANGBO",
  "DEPARTEMENT_CODE": "10"
 },
 {
  "CODE": "1008",
  "NOM": "PORTO-NOVO",
  "DEPARTEMENT_CODE": "10"
 },
 {
  "CODE": "1009",
  "NOM": "SEME-PODJI",
  "DEPARTEMENT_CODE": "10"
 },
 {
  "CODE": "1101",
  "NOM": "ADJA-OUERE",
  "DEPARTEMENT_CODE": "11"
 },
 {
  "CODE": "1102",
  "NOM": "IFANGNI",
  "DEPARTEMENT_CODE": "11"
 },
 {
  "CODE": "1103",
  "NOM": "KETOU",
  "DEPARTEMENT_CODE": "11"
 },
 {
  "CODE": "1104",
  "NOM": "POBE",
  "DEPARTEMENT_CODE": "11"
 },
 {
  "CODE": "1105",
  "NOM": "SAKETE",
  "DEPARTEMENT_CODE": "11"
 },
 {
  "CODE": "1201",
  "NOM": "ABOMEY",
  "DEPARTEMENT_CODE": "12"
 },
 {
  "CODE": "1202",
  "NOM": "AGBANGNIZOUN",
  "DEPARTEMENT_CODE": "12"
 },
 {
  "CODE": "1203",
  "NOM": "BOHICON",
  "DEPARTEMENT_CODE": "12"
 },
 {
  "CODE": "1204",
  "NOM": "COVE",
  "DEPARTEMENT_CODE": "12"
 },
 {
  "CODE": "1205",
  "NOM": "DJIDJA",
  "DEPARTEMENT_CODE": "12"
 },
 {
  "CODE": "1206",
  "NOM": "OUINHI",
  "DEPARTEMENT_CODE": "12"
 },
 {
  "CODE": "1207",
  "NOM": "ZAGNANADO",
  "DEPARTEMENT_CODE": "12"
 },
 {
  "CODE": "1208",
  "NOM": "ZA-KPOTA",
  "DEPARTEMENT_CODE": "12"
 },
 {
  "CODE": "1209",
  "NOM": "ZOGBODOMEY",
  "DEPARTEMENT_CODE": "12"
 }
 };

 var communeObjsJson = x;
    return communeObjsJson.map((communeObjsJson) => Commune.fromJson(communeObjsJson)).toList();
  }

}

