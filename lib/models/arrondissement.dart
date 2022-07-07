class Arrondissement{
 late String code, nom, codeCommune;

 Arrondissement({required this.code, required this.nom, required this.codeCommune});

factory Arrondissement.fromJson(dynamic json) {
    return Arrondissement(code: json['CODE'] as String, nom: json['NOM'] as String, codeCommune: json['COMMUNE_CODE']);
 }

 static List<Arrondissement> getArrondissements(){
  var x={
     {
  "CODE": "010101",
  "NOM": "FOUNOUGO",
  "COMMUNE_CODE": "0101"
 },
 {
  "CODE": "010102",
  "NOM": "GOMPAROU",
  "COMMUNE_CODE": "0101"
 },
 {
  "CODE": "010103",
  "NOM": "GOUMORI",
  "COMMUNE_CODE": "0101"
 },
 {
  "CODE": "010104",
  "NOM": "KOKEY",
  "COMMUNE_CODE": "0101"
 },
 {
  "CODE": "010105",
  "NOM": "KOKIBOROU",
  "COMMUNE_CODE": "0101"
 },
 {
  "CODE": "010106",
  "NOM": "OUNET",
  "COMMUNE_CODE": "0101"
 },
 {
  "CODE": "010107",
  "NOM": "SOMPEROUKOU",
  "COMMUNE_CODE": "0101"
 },
 {
  "CODE": "010108",
  "NOM": "SOROKO",
  "COMMUNE_CODE": "0101"
 },
 {
  "CODE": "010109",
  "NOM": "TOURA",
  "COMMUNE_CODE": "0101"
 },
 {
  "CODE": "010151",
  "NOM": "BANIKOARA",
  "COMMUNE_CODE": "0101"
 },
 {
  "CODE": "010201",
  "NOM": "BAGOU",
  "COMMUNE_CODE": "0102"
 },
 {
  "CODE": "010202",
  "NOM": "GOUNAROU",
  "COMMUNE_CODE": "0102"
 },
 {
  "CODE": "010203",
  "NOM": "SORI",
  "COMMUNE_CODE": "0102"
 },
 {
  "CODE": "010204",
  "NOM": "SOUGOU-KPAN-TROSSI",
  "COMMUNE_CODE": "0102"
 },
 {
  "CODE": "010205",
  "NOM": "WARA",
  "COMMUNE_CODE": "0102"
 },
 {
  "CODE": "010251",
  "NOM": "GOGOUNOU",
  "COMMUNE_CODE": "0102"
 },
 {
  "CODE": "010301",
  "NOM": "ANGARADEBOU",
  "COMMUNE_CODE": "0103"
 },
 {
  "CODE": "010302",
  "NOM": "BENSEKOU",
  "COMMUNE_CODE": "0103"
 },
 {
  "CODE": "010303",
  "NOM": "DONWARI",
  "COMMUNE_CODE": "0103"
 },
 {
  "CODE": "010304",
  "NOM": "KASSAKOU",
  "COMMUNE_CODE": "0103"
 },
 {
  "CODE": "010305",
  "NOM": "SAAH",
  "COMMUNE_CODE": "0103"
 },
 {
  "CODE": "010306",
  "NOM": "SAM",
  "COMMUNE_CODE": "0103"
 },
 {
  "CODE": "010307",
  "NOM": "SONSORO",
  "COMMUNE_CODE": "0103"
 },
 {
  "CODE": "010351",
  "NOM": "KANDI 1",
  "COMMUNE_CODE": "0103"
 },
 {
  "CODE": "010352",
  "NOM": "KANDI 2",
  "COMMUNE_CODE": "0103"
 },
 {
  "CODE": "010353",
  "NOM": "KANDI 3",
  "COMMUNE_CODE": "0103"
 },
 {
  "CODE": "010401",
  "NOM": "BIRNI LAFIA",
  "COMMUNE_CODE": "0104"
 },
 {
  "CODE": "010402",
  "NOM": "BOGO-BOGO",
  "COMMUNE_CODE": "0104"
 },
 {
  "CODE": "010403",
  "NOM": "KOMPA",
  "COMMUNE_CODE": "0104"
 },
 {
  "CODE": "010404",
  "NOM": "MONSEY",
  "COMMUNE_CODE": "0104"
 },
 {
  "CODE": "010451",
  "NOM": "KARIMAMA",
  "COMMUNE_CODE": "0104"
 },
 {
  "CODE": "010501",
  "NOM": "GAROU",
  "COMMUNE_CODE": "0105"
 },
 {
  "CODE": "010502",
  "NOM": "GUENE",
  "COMMUNE_CODE": "0105"
 },
 {
  "CODE": "010503",
  "NOM": "MADECALI",
  "COMMUNE_CODE": "0105"
 },
 {
  "CODE": "010504",
  "NOM": "TOUMBOUTOU",
  "COMMUNE_CODE": "0105"
 },
 {
  "CODE": "010551",
  "NOM": "MALANVILLE",
  "COMMUNE_CODE": "0105"
 },
 {
  "CODE": "010601",
  "NOM": "LIBANTE",
  "COMMUNE_CODE": "0106"
 },
 {
  "CODE": "010602",
  "NOM": "LIBOUSSOU",
  "COMMUNE_CODE": "0106"
 },
 {
  "CODE": "010603",
  "NOM": "LOUGOU",
  "COMMUNE_CODE": "0106"
 },
 {
  "CODE": "010604",
  "NOM": "SOKOTINDJI",
  "COMMUNE_CODE": "0106"
 },
 {
  "CODE": "010651",
  "NOM": "SEGBANA",
  "COMMUNE_CODE": "0106"
 },
 {
  "CODE": "020101",
  "NOM": "DIPOLI",
  "COMMUNE_CODE": "0201"
 },
 {
  "CODE": "020102",
  "NOM": "KORONTIERE",
  "COMMUNE_CODE": "0201"
 },
 {
  "CODE": "020103",
  "NOM": "KOUSSOUCOINGOU",
  "COMMUNE_CODE": "0201"
 },
 {
  "CODE": "020104",
  "NOM": "MANTA",
  "COMMUNE_CODE": "0201"
 },
 {
  "CODE": "020105",
  "NOM": "NATA",
  "COMMUNE_CODE": "0201"
 },
 {
  "CODE": "020106",
  "NOM": "TABOTA",
  "COMMUNE_CODE": "0201"
 },
 {
  "CODE": "020151",
  "NOM": "BOUKOUMBE",
  "COMMUNE_CODE": "0201"
 },
 {
  "CODE": "020201",
  "NOM": "DATORI",
  "COMMUNE_CODE": "0202"
 },
 {
  "CODE": "020202",
  "NOM": "KOUNTORI",
  "COMMUNE_CODE": "0202"
 },
 {
  "CODE": "020203",
  "NOM": "TAPOGA",
  "COMMUNE_CODE": "0202"
 },
 {
  "CODE": "020251",
  "NOM": "COBLY",
  "COMMUNE_CODE": "0202"
 },
 {
  "CODE": "020301",
  "NOM": "BRIGNAMARO",
  "COMMUNE_CODE": "0203"
 },
 {
  "CODE": "020302",
  "NOM": "FIROU",
  "COMMUNE_CODE": "0203"
 },
 {
  "CODE": "020303",
  "NOM": "KAOBAGOU",
  "COMMUNE_CODE": "0203"
 },
 {
  "CODE": "020351",
  "NOM": "KEROU",
  "COMMUNE_CODE": "0203"
 },
 {
  "CODE": "020401",
  "NOM": "BIRNI",
  "COMMUNE_CODE": "0204"
 },
 {
  "CODE": "020402",
  "NOM": "CHABI-COUMA",
  "COMMUNE_CODE": "0204"
 },
 {
  "CODE": "020403",
  "NOM": "FOO-TANCE",
  "COMMUNE_CODE": "0204"
 },
 {
  "CODE": "020404",
  "NOM": "GUILMARO",
  "COMMUNE_CODE": "0204"
 },
 {
  "CODE": "020405",
  "NOM": "OROUKAYO",
  "COMMUNE_CODE": "0204"
 },
 {
  "CODE": "020451",
  "NOM": "KOUANDE",
  "COMMUNE_CODE": "0204"
 },
 {
  "CODE": "020501",
  "NOM": "DASSARI",
  "COMMUNE_CODE": "0205"
 },
 {
  "CODE": "020502",
  "NOM": "GOUANDE",
  "COMMUNE_CODE": "0205"
 },
 {
  "CODE": "020503",
  "NOM": "NODI",
  "COMMUNE_CODE": "0205"
 },
 {
  "CODE": "020504",
  "NOM": "TANTEGA",
  "COMMUNE_CODE": "0205"
 },
 {
  "CODE": "020505",
  "NOM": "TCHANHOUNCOSSI",
  "COMMUNE_CODE": "0205"
 },
 {
  "CODE": "020551",
  "NOM": "MATERI",
  "COMMUNE_CODE": "0205"
 },
 {
  "CODE": "020601",
  "NOM": "KOTOPOUNGA",
  "COMMUNE_CODE": "0206"
 },
 {
  "CODE": "020602",
  "NOM": "KOUABA",
  "COMMUNE_CODE": "0206"
 },
 {
  "CODE": "020603",
  "NOM": "KOUANDATA",
  "COMMUNE_CODE": "0206"
 },
 {
  "CODE": "020604",
  "NOM": "PERMA",
  "COMMUNE_CODE": "0206"
 },
 {
  "CODE": "020605",
  "NOM": "TCHOUMI-TCHOUMI",
  "COMMUNE_CODE": "0206"
 },
 {
  "CODE": "020651",
  "NOM": "NATITINGOU I",
  "COMMUNE_CODE": "0206"
 },
 {
  "CODE": "020652",
  "NOM": "NATITINGOU II",
  "COMMUNE_CODE": "0206"
 },
 {
  "CODE": "020653",
  "NOM": "NATITINGOU III",
  "COMMUNE_CODE": "0206"
 },
 {
  "CODE": "020654",
  "NOM": "PEPORIYAKOU",
  "COMMUNE_CODE": "0206"
 },
 {
  "CODE": "020701",
  "NOM": "GNEMASSON",
  "COMMUNE_CODE": "0207"
 },
 {
  "CODE": "020702",
  "NOM": "TOBRE",
  "COMMUNE_CODE": "0207"
 },
 {
  "CODE": "020751",
  "NOM": "PEHUNCO",
  "COMMUNE_CODE": "0207"
 },
 {
  "CODE": "020801",
  "NOM": "COTIAKOU",
  "COMMUNE_CODE": "0208"
 },
 {
  "CODE": "020802",
  "NOM": "N'DAHONTA",
  "COMMUNE_CODE": "0208"
 },
 {
  "CODE": "020803",
  "NOM": "TAIACOU",
  "COMMUNE_CODE": "0208"
 },
 {
  "CODE": "020804",
  "NOM": "TANONGOU",
  "COMMUNE_CODE": "0208"
 },
 {
  "CODE": "020851",
  "NOM": "TANGUIETA",
  "COMMUNE_CODE": "0208"
 },
 {
  "CODE": "020901",
  "NOM": "KOUARFA",
  "COMMUNE_CODE": "0209"
 },
 {
  "CODE": "020902",
  "NOM": "TAMPEGRE",
  "COMMUNE_CODE": "0209"
 },
 {
  "CODE": "020951",
  "NOM": "TOUKOUNTOUNA",
  "COMMUNE_CODE": "0209"
 },
 {
  "CODE": "030101",
  "NOM": "AKASSATO",
  "COMMUNE_CODE": "0301"
 },
 {
  "CODE": "030102",
  "NOM": "GODOMEY",
  "COMMUNE_CODE": "0301"
 },
 {
  "CODE": "030103",
  "NOM": "GOLO-DJIGBE",
  "COMMUNE_CODE": "0301"
 },
 {
  "CODE": "030104",
  "NOM": "HEVIE",
  "COMMUNE_CODE": "0301"
 },
 {
  "CODE": "030105",
  "NOM": "KPANROUN",
  "COMMUNE_CODE": "0301"
 },
 {
  "CODE": "030106",
  "NOM": "OUEDO",
  "COMMUNE_CODE": "0301"
 },
 {
  "CODE": "030107",
  "NOM": "TOGBA",
  "COMMUNE_CODE": "0301"
 },
 {
  "CODE": "030108",
  "NOM": "ZINVIE",
  "COMMUNE_CODE": "0301"
 },
 {
  "CODE": "030151",
  "NOM": "ABOMEY-CALAVI",
  "COMMUNE_CODE": "0301"
 },
 {
  "CODE": "030201",
  "NOM": "AGBANOU",
  "COMMUNE_CODE": "0302"
 },
 {
  "CODE": "030202",
  "NOM": "AHOUANNONZOUN",
  "COMMUNE_CODE": "0302"
 },
 {
  "CODE": "030203",
  "NOM": "ATTOGON",
  "COMMUNE_CODE": "0302"
 },
 {
  "CODE": "030204",
  "NOM": "AVAKPA",
  "COMMUNE_CODE": "0302"
 },
 {
  "CODE": "030205",
  "NOM": "AYOU",
  "COMMUNE_CODE": "0302"
 },
 {
  "CODE": "030206",
  "NOM": "HINVI",
  "COMMUNE_CODE": "0302"
 },
 {
  "CODE": "030207",
  "NOM": "LISSEGAZOUN",
  "COMMUNE_CODE": "0302"
 },
 {
  "CODE": "030208",
  "NOM": "LON-AGONMEY",
  "COMMUNE_CODE": "0302"
 },
 {
  "CODE": "030209",
  "NOM": "SEKOU",
  "COMMUNE_CODE": "0302"
 },
 {
  "CODE": "030210",
  "NOM": "TOKPA",
  "COMMUNE_CODE": "0302"
 },
 {
  "CODE": "030251",
  "NOM": "ALLADA CENTRE",
  "COMMUNE_CODE": "0302"
 },
 {
  "CODE": "030252",
  "NOM": "TOGOUDO",
  "COMMUNE_CODE": "0302"
 },
 {
  "CODE": "030301",
  "NOM": "AGANMALOME",
  "COMMUNE_CODE": "0303"
 },
 {
  "CODE": "030302",
  "NOM": "AGBANTO",
  "COMMUNE_CODE": "0303"
 },
 {
  "CODE": "030303",
  "NOM": "AGONKANME",
  "COMMUNE_CODE": "0303"
 },
 {
  "CODE": "030304",
  "NOM": "DEDOME",
  "COMMUNE_CODE": "0303"
 },
 {
  "CODE": "030305",
  "NOM": "DEKANME",
  "COMMUNE_CODE": "0303"
 },
 {
  "CODE": "030306",
  "NOM": "SEGBEYA",
  "COMMUNE_CODE": "0303"
 },
 {
  "CODE": "030307",
  "NOM": "SEGBOHOUE",
  "COMMUNE_CODE": "0303"
 },
 {
  "CODE": "030308",
  "NOM": "TOKPA-DOME",
  "COMMUNE_CODE": "0303"
 },
 {
  "CODE": "030351",
  "NOM": "KPOMASSE CENTRE",
  "COMMUNE_CODE": "0303"
 },
 {
  "CODE": "030401",
  "NOM": "AVLEKETE",
  "COMMUNE_CODE": "0304"
 },
 {
  "CODE": "030402",
  "NOM": "DJEGBADJI",
  "COMMUNE_CODE": "0304"
 },
 {
  "CODE": "030403",
  "NOM": "GAKPE",
  "COMMUNE_CODE": "0304"
 },
 {
  "CODE": "030404",
  "NOM": "HOUAKPE-DAHO",
  "COMMUNE_CODE": "0304"
 },
 {
  "CODE": "030405",
  "NOM": "PAHOU",
  "COMMUNE_CODE": "0304"
 },
 {
  "CODE": "030406",
  "NOM": "SAVI",
  "COMMUNE_CODE": "0304"
 },
 {
  "CODE": "030451",
  "NOM": "OUIDAH I",
  "COMMUNE_CODE": "0304"
 },
 {
  "CODE": "030452",
  "NOM": "OUIDAH II",
  "COMMUNE_CODE": "0304"
 },
 {
  "CODE": "030453",
  "NOM": "OUIDAH III",
  "COMMUNE_CODE": "0304"
 },
 {
  "CODE": "030454",
  "NOM": "OUIDAH IV",
  "COMMUNE_CODE": "0304"
 },
 {
  "CODE": "030501",
  "NOM": "AHOMEY-LOKPO",
  "COMMUNE_CODE": "0305"
 },
 {
  "CODE": "030502",
  "NOM": "DEKANMEY",
  "COMMUNE_CODE": "0305"
 },
 {
  "CODE": "030503",
  "NOM": "GANVIE 1",
  "COMMUNE_CODE": "0305"
 },
 {
  "CODE": "030504",
  "NOM": "GANVIE 2",
  "COMMUNE_CODE": "0305"
 },
 {
  "CODE": "030505",
  "NOM": "HOUEDO-AGUEKON",
  "COMMUNE_CODE": "0305"
 },
 {
  "CODE": "030506",
  "NOM": "VEKKY",
  "COMMUNE_CODE": "0305"
 },
 {
  "CODE": "030551",
  "NOM": "SO-AVA",
  "COMMUNE_CODE": "0305"
 },
 {
  "CODE": "030601",
  "NOM": "AGUE",
  "COMMUNE_CODE": "0306"
 },
 {
  "CODE": "030602",
  "NOM": "COLLI",
  "COMMUNE_CODE": "0306"
 },
 {
  "CODE": "030603",
  "NOM": "COUSSI",
  "COMMUNE_CODE": "0306"
 },
 {
  "CODE": "030604",
  "NOM": "DAME",
  "COMMUNE_CODE": "0306"
 },
 {
  "CODE": "030605",
  "NOM": "DJANGLANME",
  "COMMUNE_CODE": "0306"
 },
 {
  "CODE": "030606",
  "NOM": "HOUEGBO",
  "COMMUNE_CODE": "0306"
 },
 {
  "CODE": "030607",
  "NOM": "KPOME",
  "COMMUNE_CODE": "0306"
 },
 {
  "CODE": "030608",
  "NOM": "SEHOUE",
  "COMMUNE_CODE": "0306"
 },
 {
  "CODE": "030609",
  "NOM": "SEY",
  "COMMUNE_CODE": "0306"
 },
 {
  "CODE": "030651",
  "NOM": "TOFFO",
  "COMMUNE_CODE": "0306"
 },
 {
  "CODE": "030701",
  "NOM": "AVAME",
  "COMMUNE_CODE": "0307"
 },
 {
  "CODE": "030702",
  "NOM": "AZOHOUE-ALIHO",
  "COMMUNE_CODE": "0307"
 },
 {
  "CODE": "030703",
  "NOM": "AZOHOUE-CADA",
  "COMMUNE_CODE": "0307"
 },
 {
  "CODE": "030704",
  "NOM": "TORI-CADA",
  "COMMUNE_CODE": "0307"
 },
 {
  "CODE": "030705",
  "NOM": "TORI-GARE",
  "COMMUNE_CODE": "0307"
 },
 {
  "CODE": "030751",
  "NOM": "TORI-BOSSITO",
  "COMMUNE_CODE": "0307"
 },
 {
  "CODE": "030801",
  "NOM": "ADJAN",
  "COMMUNE_CODE": "0308"
 },
 {
  "CODE": "030802",
  "NOM": "DAWE",
  "COMMUNE_CODE": "0308"
 },
 {
  "CODE": "030803",
  "NOM": "DJIGBE",
  "COMMUNE_CODE": "0308"
 },
 {
  "CODE": "030804",
  "NOM": "DODJI-BATA",
  "COMMUNE_CODE": "0308"
 },
 {
  "CODE": "030805",
  "NOM": "HEKANME",
  "COMMUNE_CODE": "0308"
 },
 {
  "CODE": "030806",
  "NOM": "KOUNDOKPOE",
  "COMMUNE_CODE": "0308"
 },
 {
  "CODE": "030807",
  "NOM": "SEDJE-DENOU",
  "COMMUNE_CODE": "0308"
 },
 {
  "CODE": "030808",
  "NOM": "SEDJE-HOUEGOUDO",
  "COMMUNE_CODE": "0308"
 },
 {
  "CODE": "030809",
  "NOM": "TANGBO",
  "COMMUNE_CODE": "0308"
 },
 {
  "CODE": "030810",
  "NOM": "YOKPO",
  "COMMUNE_CODE": "0308"
 },
 {
  "CODE": "030851",
  "NOM": "ZE",
  "COMMUNE_CODE": "0308"
 },
 {
  "CODE": "040101",
  "NOM": "BEROUBOUAY",
  "COMMUNE_CODE": "0401"
 },
 {
  "CODE": "040102",
  "NOM": "BOUANRI",
  "COMMUNE_CODE": "0401"
 },
 {
  "CODE": "040103",
  "NOM": "GAMIA",
  "COMMUNE_CODE": "0401"
 },
 {
  "CODE": "040104",
  "NOM": "INA",
  "COMMUNE_CODE": "0401"
 },
 {
  "CODE": "040151",
  "NOM": "BEMBEREKE",
  "COMMUNE_CODE": "0401"
 },
 {
  "CODE": "040201",
  "NOM": "BASSO",
  "COMMUNE_CODE": "0402"
 },
 {
  "CODE": "040202",
  "NOM": "BOUCA",
  "COMMUNE_CODE": "0402"
 },
 {
  "CODE": "040203",
  "NOM": "DERASSI",
  "COMMUNE_CODE": "0402"
 },
 {
  "CODE": "040204",
  "NOM": "DUNKASSA",
  "COMMUNE_CODE": "0402"
 },
 {
  "CODE": "040205",
  "NOM": "PEONGA",
  "COMMUNE_CODE": "0402"
 },
 {
  "CODE": "040251",
  "NOM": "KALALE",
  "COMMUNE_CODE": "0402"
 },
 {
  "CODE": "040301",
  "NOM": "BORI",
  "COMMUNE_CODE": "0403"
 },
 {
  "CODE": "040302",
  "NOM": "GBEGOUROU",
  "COMMUNE_CODE": "0403"
 },
 {
  "CODE": "040303",
  "NOM": "OUENOU",
  "COMMUNE_CODE": "0403"
 },
 {
  "CODE": "040304",
  "NOM": "SIRAROU",
  "COMMUNE_CODE": "0403"
 },
 {
  "CODE": "040351",
  "NOM": "N'DALI",
  "COMMUNE_CODE": "0403"
 },
 {
  "CODE": "040401",
  "NOM": "BIRO",
  "COMMUNE_CODE": "0404"
 },
 {
  "CODE": "040402",
  "NOM": "GNONKOUROKALI",
  "COMMUNE_CODE": "0404"
 },
 {
  "CODE": "040403",
  "NOM": "OUENOU",
  "COMMUNE_CODE": "0404"
 },
 {
  "CODE": "040404",
  "NOM": "SEREKALI",
  "COMMUNE_CODE": "0404"
 },
 {
  "CODE": "040405",
  "NOM": "SUYA",
  "COMMUNE_CODE": "0404"
 },
 {
  "CODE": "040406",
  "NOM": "TASSO",
  "COMMUNE_CODE": "0404"
 },
 {
  "CODE": "040451",
  "NOM": "NIKKI",
  "COMMUNE_CODE": "0404"
 },
 {
  "CODE": "040501",
  "NOM": "1ER ARRONDISSEMENT",
  "COMMUNE_CODE": "0405"
 },
 {
  "CODE": "040502",
  "NOM": "2EME ARRONDISSEMENT",
  "COMMUNE_CODE": "0405"
 },
 {
  "CODE": "040503",
  "NOM": "3EME ARRONDISSEMENT",
  "COMMUNE_CODE": "0405"
 },
 {
  "CODE": "040601",
  "NOM": "GNINSY",
  "COMMUNE_CODE": "0406"
 },
 {
  "CODE": "040602",
  "NOM": "GUINAGOUROU",
  "COMMUNE_CODE": "0406"
 },
 {
  "CODE": "040603",
  "NOM": "KPEBIE",
  "COMMUNE_CODE": "0406"
 },
 {
  "CODE": "040604",
  "NOM": "PANE",
  "COMMUNE_CODE": "0406"
 },
 {
  "CODE": "040605",
  "NOM": "SONTOU",
  "COMMUNE_CODE": "0406"
 },
 {
  "CODE": "040651",
  "NOM": "PERERE",
  "COMMUNE_CODE": "0406"
 },
 {
  "CODE": "040701",
  "NOM": "FO-BOURE",
  "COMMUNE_CODE": "0407"
 },
 {
  "CODE": "040702",
  "NOM": "SEKERE",
  "COMMUNE_CODE": "0407"
 },
 {
  "CODE": "040703",
  "NOM": "SIKKI",
  "COMMUNE_CODE": "0407"
 },
 {
  "CODE": "040751",
  "NOM": "SINENDE",
  "COMMUNE_CODE": "0407"
 },
 {
  "CODE": "040801",
  "NOM": "ALAFIAROU",
  "COMMUNE_CODE": "0408"
 },
 {
  "CODE": "040802",
  "NOM": "BETEROU",
  "COMMUNE_CODE": "0408"
 },
 {
  "CODE": "040803",
  "NOM": "GORO",
  "COMMUNE_CODE": "0408"
 },
 {
  "CODE": "040804",
  "NOM": "KIKA",
  "COMMUNE_CODE": "0408"
 },
 {
  "CODE": "040805",
  "NOM": "SANSON",
  "COMMUNE_CODE": "0408"
 },
 {
  "CODE": "040806",
  "NOM": "TCHATCHOU",
  "COMMUNE_CODE": "0408"
 },
 {
  "CODE": "040851",
  "NOM": "TCHAOUROU",
  "COMMUNE_CODE": "0408"
 },
 {
  "CODE": "050101",
  "NOM": "AGOUA",
  "COMMUNE_CODE": "0501"
 },
 {
  "CODE": "050102",
  "NOM": "AKPASSI",
  "COMMUNE_CODE": "0501"
 },
 {
  "CODE": "050103",
  "NOM": "ATOKOLIBE",
  "COMMUNE_CODE": "0501"
 },
 {
  "CODE": "050104",
  "NOM": "BOBE",
  "COMMUNE_CODE": "0501"
 },
 {
  "CODE": "050105",
  "NOM": "GOUKA",
  "COMMUNE_CODE": "0501"
 },
 {
  "CODE": "050106",
  "NOM": "KOKO",
  "COMMUNE_CODE": "0501"
 },
 {
  "CODE": "050107",
  "NOM": "LOUGBA",
  "COMMUNE_CODE": "0501"
 },
 {
  "CODE": "050108",
  "NOM": "PIRA",
  "COMMUNE_CODE": "0501"
 },
 {
  "CODE": "050151",
  "NOM": "BANTE",
  "COMMUNE_CODE": "0501"
 },
 {
  "CODE": "050201",
  "NOM": "AKOFFODJOULE",
  "COMMUNE_CODE": "0502"
 },
 {
  "CODE": "050202",
  "NOM": "GBAFFO",
  "COMMUNE_CODE": "0502"
 },
 {
  "CODE": "050203",
  "NOM": "KERE",
  "COMMUNE_CODE": "0502"
 },
 {
  "CODE": "050204",
  "NOM": "KPINGNI",
  "COMMUNE_CODE": "0502"
 },
 {
  "CODE": "050205",
  "NOM": "LEMA",
  "COMMUNE_CODE": "0502"
 },
 {
  "CODE": "050206",
  "NOM": "PAOUINGNAN",
  "COMMUNE_CODE": "0502"
 },
 {
  "CODE": "050207",
  "NOM": "SOCLOGBO",
  "COMMUNE_CODE": "0502"
 },
 {
  "CODE": "050208",
  "NOM": "TRE",
  "COMMUNE_CODE": "0502"
 },
 {
  "CODE": "050251",
  "NOM": "DASSA I",
  "COMMUNE_CODE": "0502"
 },
 {
  "CODE": "050252",
  "NOM": "DASSA II",
  "COMMUNE_CODE": "0502"
 },
 {
  "CODE": "050301",
  "NOM": "AKLAMPA",
  "COMMUNE_CODE": "0503"
 },
 {
  "CODE": "050302",
  "NOM": "ASSANTE",
  "COMMUNE_CODE": "0503"
 },
 {
  "CODE": "050303",
  "NOM": "GOME",
  "COMMUNE_CODE": "0503"
 },
 {
  "CODE": "050304",
  "NOM": "KPAKPAZA",
  "COMMUNE_CODE": "0503"
 },
 {
  "CODE": "050305",
  "NOM": "MAGOUMI",
  "COMMUNE_CODE": "0503"
 },
 {
  "CODE": "050306",
  "NOM": "OUEDEME",
  "COMMUNE_CODE": "0503"
 },
 {
  "CODE": "050307",
  "NOM": "SOKPONTA",
  "COMMUNE_CODE": "0503"
 },
 {
  "CODE": "050308",
  "NOM": "THIO",
  "COMMUNE_CODE": "0503"
 },
 {
  "CODE": "050309",
  "NOM": "ZAFFE",
  "COMMUNE_CODE": "0503"
 },
 {
  "CODE": "050351",
  "NOM": "GLAZOUE",
  "COMMUNE_CODE": "0503"
 },
 {
  "CODE": "050401",
  "NOM": "CHALLA-OGOI",
  "COMMUNE_CODE": "0504"
 },
 {
  "CODE": "050402",
  "NOM": "DJEGBE",
  "COMMUNE_CODE": "0504"
 },
 {
  "CODE": "050403",
  "NOM": "GBANLIN",
  "COMMUNE_CODE": "0504"
 },
 {
  "CODE": "050404",
  "NOM": "IKEMON",
  "COMMUNE_CODE": "0504"
 },
 {
  "CODE": "050405",
  "NOM": "KILIBO",
  "COMMUNE_CODE": "0504"
 },
 {
  "CODE": "050406",
  "NOM": "LAMINOU",
  "COMMUNE_CODE": "0504"
 },
 {
  "CODE": "050407",
  "NOM": "ODOUGBA",
  "COMMUNE_CODE": "0504"
 },
 {
  "CODE": "050408",
  "NOM": "TOUI",
  "COMMUNE_CODE": "0504"
 },
 {
  "CODE": "050451",
  "NOM": "OUESSE",
  "COMMUNE_CODE": "0504"
 },
 {
  "CODE": "050501",
  "NOM": "DJALLOUKOU",
  "COMMUNE_CODE": "0505"
 },
 {
  "CODE": "050502",
  "NOM": "DOUME",
  "COMMUNE_CODE": "0505"
 },
 {
  "CODE": "050503",
  "NOM": "GOBADA",
  "COMMUNE_CODE": "0505"
 },
 {
  "CODE": "050504",
  "NOM": "KPATABA",
  "COMMUNE_CODE": "0505"
 },
 {
  "CODE": "050505",
  "NOM": "LAHOTAN",
  "COMMUNE_CODE": "0505"
 },
 {
  "CODE": "050506",
  "NOM": "LEMA",
  "COMMUNE_CODE": "0505"
 },
 {
  "CODE": "050507",
  "NOM": "LOGOZOHE",
  "COMMUNE_CODE": "0505"
 },
 {
  "CODE": "050508",
  "NOM": "MONKPA",
  "COMMUNE_CODE": "0505"
 },
 {
  "CODE": "050509",
  "NOM": "OTTOLA",
  "COMMUNE_CODE": "0505"
 },
 {
  "CODE": "050510",
  "NOM": "OUESSE",
  "COMMUNE_CODE": "0505"
 },
 {
  "CODE": "050511",
  "NOM": "TCHETTI",
  "COMMUNE_CODE": "0505"
 },
 {
  "CODE": "050551",
  "NOM": "SAVALOU-AGA",
  "COMMUNE_CODE": "0505"
 },
 {
  "CODE": "050552",
  "NOM": "SAVALOU-AGBADO",
  "COMMUNE_CODE": "0505"
 },
 {
  "CODE": "050553",
  "NOM": "SAVALOU-ATTAKE",
  "COMMUNE_CODE": "0505"
 },
 {
  "CODE": "050601",
  "NOM": "BESSE",
  "COMMUNE_CODE": "0506"
 },
 {
  "CODE": "050602",
  "NOM": "KABOUA",
  "COMMUNE_CODE": "0506"
 },
 {
  "CODE": "050603",
  "NOM": "OFFE",
  "COMMUNE_CODE": "0506"
 },
 {
  "CODE": "050604",
  "NOM": "OKPARA",
  "COMMUNE_CODE": "0506"
 },
 {
  "CODE": "050605",
  "NOM": "SAKIN",
  "COMMUNE_CODE": "0506"
 },
 {
  "CODE": "050651",
  "NOM": "ADIDO",
  "COMMUNE_CODE": "0506"
 },
 {
  "CODE": "050652",
  "NOM": "BONI",
  "COMMUNE_CODE": "0506"
 },
 {
  "CODE": "050653",
  "NOM": "PLATEAU",
  "COMMUNE_CODE": "0506"
 },
 {
  "CODE": "060101",
  "NOM": "ATOMEY",
  "COMMUNE_CODE": "0601"
 },
 {
  "CODE": "060102",
  "NOM": "AZOVE",
  "COMMUNE_CODE": "0601"
 },
 {
  "CODE": "060103",
  "NOM": "DEKPO-CENTRE",
  "COMMUNE_CODE": "0601"
 },
 {
  "CODE": "060104",
  "NOM": "GODOHOU",
  "COMMUNE_CODE": "0601"
 },
 {
  "CODE": "060105",
  "NOM": "KISSAMEY",
  "COMMUNE_CODE": "0601"
 },
 {
  "CODE": "060106",
  "NOM": "LONKLY",
  "COMMUNE_CODE": "0601"
 },
 {
  "CODE": "060151",
  "NOM": "APLAHOUE",
  "COMMUNE_CODE": "0601"
 },
 {
  "CODE": "060201",
  "NOM": "ADJINTIMEY",
  "COMMUNE_CODE": "0602"
 },
 {
  "CODE": "060202",
  "NOM": "BETOUMEY",
  "COMMUNE_CODE": "0602"
 },
 {
  "CODE": "060203",
  "NOM": "GOHOMEY",
  "COMMUNE_CODE": "0602"
 },
 {
  "CODE": "060204",
  "NOM": "HOUEGAMEY",
  "COMMUNE_CODE": "0602"
 },
 {
  "CODE": "060205",
  "NOM": "KINKINHOUE",
  "COMMUNE_CODE": "0602"
 },
 {
  "CODE": "060206",
  "NOM": "KOKOHOUE",
  "COMMUNE_CODE": "0602"
 },
 {
  "CODE": "060207",
  "NOM": "KPOBA",
  "COMMUNE_CODE": "0602"
 },
 {
  "CODE": "060208",
  "NOM": "SOKOUHOUE",
  "COMMUNE_CODE": "0602"
 },
 {
  "CODE": "060251",
  "NOM": "DJAKOTOMEY I",
  "COMMUNE_CODE": "0602"
 },
 {
  "CODE": "060252",
  "NOM": "DJAKOTOMEY II",
  "COMMUNE_CODE": "0602"
 },
 {
  "CODE": "060301",
  "NOM": "AYOMI",
  "COMMUNE_CODE": "0603"
 },
 {
  "CODE": "060302",
  "NOM": "DEVE",
  "COMMUNE_CODE": "0603"
 },
 {
  "CODE": "060303",
  "NOM": "HONTON",
  "COMMUNE_CODE": "0603"
 },
 {
  "CODE": "060304",
  "NOM": "LOKOGOHOUE",
  "COMMUNE_CODE": "0603"
 },
 {
  "CODE": "060305",
  "NOM": "MADJRE",
  "COMMUNE_CODE": "0603"
 },
 {
  "CODE": "060306",
  "NOM": "TOTCHANGNI CENTRE",
  "COMMUNE_CODE": "0603"
 },
 {
  "CODE": "060351",
  "NOM": "TOTA",
  "COMMUNE_CODE": "0603"
 },
 {
  "CODE": "060401",
  "NOM": "ADJAHONME",
  "COMMUNE_CODE": "0604"
 },
 {
  "CODE": "060402",
  "NOM": "AHOGBEYA",
  "COMMUNE_CODE": "0604"
 },
 {
  "CODE": "060403",
  "NOM": "AYAHOHOUE",
  "COMMUNE_CODE": "0604"
 },
 {
  "CODE": "060404",
  "NOM": "DJOTTO",
  "COMMUNE_CODE": "0604"
 },
 {
  "CODE": "060405",
  "NOM": "HONDJIN",
  "COMMUNE_CODE": "0604"
 },
 {
  "CODE": "060406",
  "NOM": "LANTA",
  "COMMUNE_CODE": "0604"
 },
 {
  "CODE": "060407",
  "NOM": "TCHIKPE",
  "COMMUNE_CODE": "0604"
 },
 {
  "CODE": "060451",
  "NOM": "KLOUEKANME",
  "COMMUNE_CODE": "0604"
 },
 {
  "CODE": "060501",
  "NOM": "ADOUKANDJI",
  "COMMUNE_CODE": "0605"
 },
 {
  "CODE": "060502",
  "NOM": "AHODJINNAKO",
  "COMMUNE_CODE": "0605"
 },
 {
  "CODE": "060503",
  "NOM": "AHOMADEGBE",
  "COMMUNE_CODE": "0605"
 },
 {
  "CODE": "060504",
  "NOM": "BANIGBE",
  "COMMUNE_CODE": "0605"
 },
 {
  "CODE": "060505",
  "NOM": "GNIZOUNME",
  "COMMUNE_CODE": "0605"
 },
 {
  "CODE": "060506",
  "NOM": "HLASSAME",
  "COMMUNE_CODE": "0605"
 },
 {
  "CODE": "060507",
  "NOM": "LOKOGBA",
  "COMMUNE_CODE": "0605"
 },
 {
  "CODE": "060508",
  "NOM": "TCHITO",
  "COMMUNE_CODE": "0605"
 },
 {
  "CODE": "060509",
  "NOM": "TOHOU",
  "COMMUNE_CODE": "0605"
 },
 {
  "CODE": "060510",
  "NOM": "ZALLI",
  "COMMUNE_CODE": "0605"
 },
 {
  "CODE": "060551",
  "NOM": "LALO",
  "COMMUNE_CODE": "0605"
 },
 {
  "CODE": "060601",
  "NOM": "ADJIDO",
  "COMMUNE_CODE": "0606"
 },
 {
  "CODE": "060602",
  "NOM": "AVEDJIN",
  "COMMUNE_CODE": "0606"
 },
 {
  "CODE": "060603",
  "NOM": "DOKO",
  "COMMUNE_CODE": "0606"
 },
 {
  "CODE": "060604",
  "NOM": "HOUEDOGLI",
  "COMMUNE_CODE": "0606"
 },
 {
  "CODE": "060605",
  "NOM": "MISSINKO",
  "COMMUNE_CODE": "0606"
 },
 {
  "CODE": "060606",
  "NOM": "TANNOU-GOLA",
  "COMMUNE_CODE": "0606"
 },
 {
  "CODE": "060651",
  "NOM": "TOVIKLIN",
  "COMMUNE_CODE": "0606"
 },
 {
  "CODE": "070101",
  "NOM": "ALEDJO",
  "COMMUNE_CODE": "0701"
 },
 {
  "CODE": "070102",
  "NOM": "MANIGRI",
  "COMMUNE_CODE": "0701"
 },
 {
  "CODE": "070103",
  "NOM": "PENESSOULOU",
  "COMMUNE_CODE": "0701"
 },
 {
  "CODE": "070151",
  "NOM": "BASSILA",
  "COMMUNE_CODE": "0701"
 },
 {
  "CODE": "070201",
  "NOM": "ANANDANA",
  "COMMUNE_CODE": "0702"
 },
 {
  "CODE": "070202",
  "NOM": "PABEGOU",
  "COMMUNE_CODE": "0702"
 },
 {
  "CODE": "070203",
  "NOM": "SINGRE",
  "COMMUNE_CODE": "0702"
 },
 {
  "CODE": "070251",
  "NOM": "COPARGO",
  "COMMUNE_CODE": "0702"
 },
 {
  "CODE": "070301",
  "NOM": "BAREI",
  "COMMUNE_CODE": "0703"
 },
 {
  "CODE": "070302",
  "NOM": "BARIENOU",
  "COMMUNE_CODE": "0703"
 },
 {
  "CODE": "070303",
  "NOM": "BELLEFOUNGOU",
  "COMMUNE_CODE": "0703"
 },
 {
  "CODE": "070304",
  "NOM": "BOUGOU",
  "COMMUNE_CODE": "0703"
 },
 {
  "CODE": "070305",
  "NOM": "KOLOCONDE",
  "COMMUNE_CODE": "0703"
 },
 {
  "CODE": "070306",
  "NOM": "ONKLOU",
  "COMMUNE_CODE": "0703"
 },
 {
  "CODE": "070307",
  "NOM": "PARTAGO",
  "COMMUNE_CODE": "0703"
 },
 {
  "CODE": "070308",
  "NOM": "PELEBINA",
  "COMMUNE_CODE": "0703"
 },
 {
  "CODE": "070309",
  "NOM": "SEROU",
  "COMMUNE_CODE": "0703"
 },
 {
  "CODE": "070351",
  "NOM": "DJOUGOU I",
  "COMMUNE_CODE": "0703"
 },
 {
  "CODE": "070352",
  "NOM": "DJOUGOU II",
  "COMMUNE_CODE": "0703"
 },
 {
  "CODE": "070353",
  "NOM": "DJOUGOU III",
  "COMMUNE_CODE": "0703"
 },
 {
  "CODE": "070401",
  "NOM": "BADJOUDE",
  "COMMUNE_CODE": "0704"
 },
 {
  "CODE": "070402",
  "NOM": "KOMDE",
  "COMMUNE_CODE": "0704"
 },
 {
  "CODE": "070403",
  "NOM": "SEMERE 1",
  "COMMUNE_CODE": "0704"
 },
 {
  "CODE": "070404",
  "NOM": "SEMERE 2",
  "COMMUNE_CODE": "0704"
 },
 {
  "CODE": "070405",
  "NOM": "TCHALINGA",
  "COMMUNE_CODE": "0704"
 },
 {
  "CODE": "070451",
  "NOM": "OUAKE",
  "COMMUNE_CODE": "0704"
 },
 {
  "CODE": "080101",
  "NOM": "1ER ARRONDISSEMENT",
  "COMMUNE_CODE": "0801"
 },
 {
  "CODE": "080102",
  "NOM": "2EME ARRONDISSEMENT",
  "COMMUNE_CODE": "0801"
 },
 {
  "CODE": "080103",
  "NOM": "3EME ARRONDISSEMENT",
  "COMMUNE_CODE": "0801"
 },
 {
  "CODE": "080104",
  "NOM": "4EME ARRONDISSEMENT",
  "COMMUNE_CODE": "0801"
 },
 {
  "CODE": "080105",
  "NOM": "5EME ARRONDISSEMENT",
  "COMMUNE_CODE": "0801"
 },
 {
  "CODE": "080106",
  "NOM": "6EME ARRONDISSEMENT",
  "COMMUNE_CODE": "0801"
 },
 {
  "CODE": "080107",
  "NOM": "7EME ARRONDISSEMENT",
  "COMMUNE_CODE": "0801"
 },
 {
  "CODE": "080108",
  "NOM": "8EME ARRONDISSEMENT",
  "COMMUNE_CODE": "0801"
 },
 {
  "CODE": "080109",
  "NOM": "9EME ARRONDISSEMENT",
  "COMMUNE_CODE": "0801"
 },
 {
  "CODE": "080110",
  "NOM": "10EME ARRONDISSEMENT",
  "COMMUNE_CODE": "0801"
 },
 {
  "CODE": "080111",
  "NOM": "11EME ARRONDISSEMENT",
  "COMMUNE_CODE": "0801"
 },
 {
  "CODE": "080112",
  "NOM": "12EME ARRONDISSEMENT",
  "COMMUNE_CODE": "0801"
 },
 {
  "CODE": "080113",
  "NOM": "13EME ARRONDISSEMENT",
  "COMMUNE_CODE": "0801"
 },
 {
  "CODE": "090101",
  "NOM": "ADOHOUN",
  "COMMUNE_CODE": "0901"
 },
 {
  "CODE": "090102",
  "NOM": "ATCHANNOU",
  "COMMUNE_CODE": "0901"
 },
 {
  "CODE": "090103",
  "NOM": "DEDEKPOE",
  "COMMUNE_CODE": "0901"
 },
 {
  "CODE": "090104",
  "NOM": "KPINNOU",
  "COMMUNE_CODE": "0901"
 },
 {
  "CODE": "090151",
  "NOM": "ATHIEME",
  "COMMUNE_CODE": "0901"
 },
 {
  "CODE": "090201",
  "NOM": "AGBODJI",
  "COMMUNE_CODE": "0902"
 },
 {
  "CODE": "090202",
  "NOM": "BADAZOUIN",
  "COMMUNE_CODE": "0902"
 },
 {
  "CODE": "090203",
  "NOM": "GBAKPODJI",
  "COMMUNE_CODE": "0902"
 },
 {
  "CODE": "090204",
  "NOM": "LOBOGO",
  "COMMUNE_CODE": "0902"
 },
 {
  "CODE": "090205",
  "NOM": "POSSOTOME",
  "COMMUNE_CODE": "0902"
 },
 {
  "CODE": "090206",
  "NOM": "YEGODOE",
  "COMMUNE_CODE": "0902"
 },
 {
  "CODE": "090251",
  "NOM": "BOPA",
  "COMMUNE_CODE": "0902"
 },
 {
  "CODE": "090301",
  "NOM": "AGATOGBO",
  "COMMUNE_CODE": "0903"
 },
 {
  "CODE": "090302",
  "NOM": "AKODEHA",
  "COMMUNE_CODE": "0903"
 },
 {
  "CODE": "090303",
  "NOM": "OUEDEME-PEDAH",
  "COMMUNE_CODE": "0903"
 },
 {
  "CODE": "090304",
  "NOM": "OUMAKO",
  "COMMUNE_CODE": "0903"
 },
 {
  "CODE": "090351",
  "NOM": "COME",
  "COMMUNE_CODE": "0903"
 },
 {
  "CODE": "090401",
  "NOM": "ADJAHA",
  "COMMUNE_CODE": "0904"
 },
 {
  "CODE": "090402",
  "NOM": "AGOUE",
  "COMMUNE_CODE": "0904"
 },
 {
  "CODE": "090403",
  "NOM": "AVLO",
  "COMMUNE_CODE": "0904"
 },
 {
  "CODE": "090404",
  "NOM": "DJANGLANMEY",
  "COMMUNE_CODE": "0904"
 },
 {
  "CODE": "090405",
  "NOM": "GBEHOUE",
  "COMMUNE_CODE": "0904"
 },
 {
  "CODE": "090406",
  "NOM": "SAZUE",
  "COMMUNE_CODE": "0904"
 },
 {
  "CODE": "090451",
  "NOM": "GRAND-POPO",
  "COMMUNE_CODE": "0904"
 },
 {
  "CODE": "090501",
  "NOM": "DAHE",
  "COMMUNE_CODE": "0905"
 },
 {
  "CODE": "090502",
  "NOM": "DOUTOU",
  "COMMUNE_CODE": "0905"
 },
 {
  "CODE": "090503",
  "NOM": "HONHOUE",
  "COMMUNE_CODE": "0905"
 },
 {
  "CODE": "090504",
  "NOM": "ZOUNGBONOU",
  "COMMUNE_CODE": "0905"
 },
 {
  "CODE": "090551",
  "NOM": "HOUEYOGBE",
  "COMMUNE_CODE": "0905"
 },
 {
  "CODE": "090552",
  "NOM": "SE",
  "COMMUNE_CODE": "0905"
 },
 {
  "CODE": "090601",
  "NOM": "AGAME",
  "COMMUNE_CODE": "0906"
 },
 {
  "CODE": "090602",
  "NOM": "HOUIN",
  "COMMUNE_CODE": "0906"
 },
 {
  "CODE": "090603",
  "NOM": "KOUDO",
  "COMMUNE_CODE": "0906"
 },
 {
  "CODE": "090604",
  "NOM": "OUEDEME-ADJA",
  "COMMUNE_CODE": "0906"
 },
 {
  "CODE": "090651",
  "NOM": "LOKOSSA",
  "COMMUNE_CODE": "0906"
 },
 {
  "CODE": "100101",
  "NOM": "AGLOGBE",
  "COMMUNE_CODE": "1001"
 },
 {
  "CODE": "100102",
  "NOM": "HONVIE",
  "COMMUNE_CODE": "1001"
 },
 {
  "CODE": "100103",
  "NOM": "MALANHOUI",
  "COMMUNE_CODE": "1001"
 },
 {
  "CODE": "100104",
  "NOM": "MEDEDJONOU",
  "COMMUNE_CODE": "1001"
 },
 {
  "CODE": "100151",
  "NOM": "ADJARRA 1",
  "COMMUNE_CODE": "1001"
 },
 {
  "CODE": "100152",
  "NOM": "ADJARRA 2",
  "COMMUNE_CODE": "1001"
 },
 {
  "CODE": "100201",
  "NOM": "AKPADANOU",
  "COMMUNE_CODE": "1002"
 },
 {
  "CODE": "100202",
  "NOM": "AWONOU",
  "COMMUNE_CODE": "1002"
 },
 {
  "CODE": "100203",
  "NOM": "AZOWLISSE",
  "COMMUNE_CODE": "1002"
 },
 {
  "CODE": "100204",
  "NOM": "DEME",
  "COMMUNE_CODE": "1002"
 },
 {
  "CODE": "100205",
  "NOM": "GANGBAN",
  "COMMUNE_CODE": "1002"
 },
 {
  "CODE": "100206",
  "NOM": "KODE",
  "COMMUNE_CODE": "1002"
 },
 {
  "CODE": "100207",
  "NOM": "TOGBOTA",
  "COMMUNE_CODE": "1002"
 },
 {
  "CODE": "100251",
  "NOM": "ADJOHOUN",
  "COMMUNE_CODE": "1002"
 },
 {
  "CODE": "100301",
  "NOM": "AVAGBODJI",
  "COMMUNE_CODE": "1003"
 },
 {
  "CODE": "100302",
  "NOM": "HOUEDOME",
  "COMMUNE_CODE": "1003"
 },
 {
  "CODE": "100303",
  "NOM": "ZOUNGAME",
  "COMMUNE_CODE": "1003"
 },
 {
  "CODE": "100401",
  "NOM": "GOME-SOTA",
  "COMMUNE_CODE": "1004"
 },
 {
  "CODE": "100402",
  "NOM": "KATAGON",
  "COMMUNE_CODE": "1004"
 },
 {
  "CODE": "100403",
  "NOM": "VAKON",
  "COMMUNE_CODE": "1004"
 },
 {
  "CODE": "100404",
  "NOM": "ZOUNGBOME",
  "COMMUNE_CODE": "1004"
 },
 {
  "CODE": "100451",
  "NOM": "AKPRO-MISSERETE",
  "COMMUNE_CODE": "1004"
 },
 {
  "CODE": "100501",
  "NOM": "ATCHOUKPA",
  "COMMUNE_CODE": "1005"
 },
 {
  "CODE": "100502",
  "NOM": "DJOMON",
  "COMMUNE_CODE": "1005"
 },
 {
  "CODE": "100503",
  "NOM": "GBOZOUME",
  "COMMUNE_CODE": "1005"
 },
 {
  "CODE": "100504",
  "NOM": "KOUTI",
  "COMMUNE_CODE": "1005"
 },
 {
  "CODE": "100505",
  "NOM": "OUANHO",
  "COMMUNE_CODE": "1005"
 },
 {
  "CODE": "100506",
  "NOM": "SADO",
  "COMMUNE_CODE": "1005"
 },
 {
  "CODE": "100551",
  "NOM": "AVRANKOU",
  "COMMUNE_CODE": "1005"
 },
 {
  "CODE": "100601",
  "NOM": "AFFAME",
  "COMMUNE_CODE": "1006"
 },
 {
  "CODE": "100602",
  "NOM": "ATCHONSA",
  "COMMUNE_CODE": "1006"
 },
 {
  "CODE": "100603",
  "NOM": "DAME-WOGON",
  "COMMUNE_CODE": "1006"
 },
 {
  "CODE": "100604",
  "NOM": "HOUNVIGUE",
  "COMMUNE_CODE": "1006"
 },
 {
  "CODE": "100651",
  "NOM": "BONOU",
  "COMMUNE_CODE": "1006"
 },
 {
  "CODE": "100701",
  "NOM": "DEKIN",
  "COMMUNE_CODE": "1007"
 },
 {
  "CODE": "100702",
  "NOM": "GBEKO",
  "COMMUNE_CODE": "1007"
 },
 {
  "CODE": "100703",
  "NOM": "HOUEDOMEY",
  "COMMUNE_CODE": "1007"
 },
 {
  "CODE": "100704",
  "NOM": "HOZIN",
  "COMMUNE_CODE": "1007"
 },
 {
  "CODE": "100705",
  "NOM": "KESSOUNOU",
  "COMMUNE_CODE": "1007"
 },
 {
  "CODE": "100706",
  "NOM": "ZOUNGUE",
  "COMMUNE_CODE": "1007"
 },
 {
  "CODE": "100751",
  "NOM": "DANGBO",
  "COMMUNE_CODE": "1007"
 },
 {
  "CODE": "100801",
  "NOM": "1ER ARRONDISSEMENT",
  "COMMUNE_CODE": "1008"
 },
 {
  "CODE": "100802",
  "NOM": "2EME ARRONDISSEMENT",
  "COMMUNE_CODE": "1008"
 },
 {
  "CODE": "100803",
  "NOM": "3EME ARRONDISSEMENT",
  "COMMUNE_CODE": "1008"
 },
 {
  "CODE": "100804",
  "NOM": "4EME ARRONDISSEMENT",
  "COMMUNE_CODE": "1008"
 },
 {
  "CODE": "100805",
  "NOM": "5EME ARRONDISSEMENT",
  "COMMUNE_CODE": "1008"
 },
 {
  "CODE": "100901",
  "NOM": "AGBLANGANDAN",
  "COMMUNE_CODE": "1009"
 },
 {
  "CODE": "100902",
  "NOM": "AHOLOUYEME",
  "COMMUNE_CODE": "1009"
 },
 {
  "CODE": "100903",
  "NOM": "DJEREGBE",
  "COMMUNE_CODE": "1009"
 },
 {
  "CODE": "100904",
  "NOM": "EKPE",
  "COMMUNE_CODE": "1009"
 },
 {
  "CODE": "100905",
  "NOM": "TOHOUE",
  "COMMUNE_CODE": "1009"
 },
 {
  "CODE": "100951",
  "NOM": "SEME-PODJI",
  "COMMUNE_CODE": "1009"
 },
 {
  "CODE": "110101",
  "NOM": "IKPINLE",
  "COMMUNE_CODE": "1101"
 },
 {
  "CODE": "110102",
  "NOM": "KPOULOU",
  "COMMUNE_CODE": "1101"
 },
 {
  "CODE": "110103",
  "NOM": "MASSE",
  "COMMUNE_CODE": "1101"
 },
 {
  "CODE": "110104",
  "NOM": "OKO-AKARE",
  "COMMUNE_CODE": "1101"
 },
 {
  "CODE": "110105",
  "NOM": "TATONNONKON",
  "COMMUNE_CODE": "1101"
 },
 {
  "CODE": "110151",
  "NOM": "ADJA-OUERE",
  "COMMUNE_CODE": "1101"
 },
 {
  "CODE": "110201",
  "NOM": "BANIGBE",
  "COMMUNE_CODE": "1102"
 },
 {
  "CODE": "110202",
  "NOM": "DAAGBE",
  "COMMUNE_CODE": "1102"
 },
 {
  "CODE": "110203",
  "NOM": "KO-KOUMOLOU",
  "COMMUNE_CODE": "1102"
 },
 {
  "CODE": "110204",
  "NOM": "LAGBE",
  "COMMUNE_CODE": "1102"
 },
 {
  "CODE": "110205",
  "NOM": "TCHAADA",
  "COMMUNE_CODE": "1102"
 },
 {
  "CODE": "110251",
  "NOM": "IFANGNI",
  "COMMUNE_CODE": "1102"
 },
 {
  "CODE": "110301",
  "NOM": "ADAKPLAME",
  "COMMUNE_CODE": "1103"
 },
 {
  "CODE": "110302",
  "NOM": "IDIGNY",
  "COMMUNE_CODE": "1103"
 },
 {
  "CODE": "110303",
  "NOM": "KPANKOU",
  "COMMUNE_CODE": "1103"
 },
 {
  "CODE": "110304",
  "NOM": "ODOMETA",
  "COMMUNE_CODE": "1103"
 },
 {
  "CODE": "110305",
  "NOM": "OKPOMETA",
  "COMMUNE_CODE": "1103"
 },
 {
  "CODE": "110351",
  "NOM": "KETOU",
  "COMMUNE_CODE": "1103"
 },
 {
  "CODE": "110401",
  "NOM": "AHOYEYE",
  "COMMUNE_CODE": "1104"
 },
 {
  "CODE": "110402",
  "NOM": "IGANA",
  "COMMUNE_CODE": "1104"
 },
 {
  "CODE": "110403",
  "NOM": "ISSABA",
  "COMMUNE_CODE": "1104"
 },
 {
  "CODE": "110404",
  "NOM": "TOWE",
  "COMMUNE_CODE": "1104"
 },
 {
  "CODE": "110451",
  "NOM": "POBE",
  "COMMUNE_CODE": "1104"
 },
 {
  "CODE": "110501",
  "NOM": "AGUIDI",
  "COMMUNE_CODE": "1105"
 },
 {
  "CODE": "110502",
  "NOM": "ITA-DJEBOU",
  "COMMUNE_CODE": "1105"
 },
 {
  "CODE": "110503",
  "NOM": "TAKON",
  "COMMUNE_CODE": "1105"
 },
 {
  "CODE": "110504",
  "NOM": "YOKO",
  "COMMUNE_CODE": "1105"
 },
 {
  "CODE": "110551",
  "NOM": "SAKETE 1",
  "COMMUNE_CODE": "1105"
 },
 {
  "CODE": "110552",
  "NOM": "SAKETE 2",
  "COMMUNE_CODE": "1105"
 },
 {
  "CODE": "120101",
  "NOM": "AGBOKPA",
  "COMMUNE_CODE": "1201"
 },
 {
  "CODE": "120102",
  "NOM": "DETOHOU",
  "COMMUNE_CODE": "1201"
 },
 {
  "CODE": "120103",
  "NOM": "SEHOUN",
  "COMMUNE_CODE": "1201"
 },
 {
  "CODE": "120104",
  "NOM": "ZOUNZONME",
  "COMMUNE_CODE": "1201"
 },
 {
  "CODE": "120151",
  "NOM": "DJEGBE",
  "COMMUNE_CODE": "1201"
 },
 {
  "CODE": "120152",
  "NOM": "HOUNLI",
  "COMMUNE_CODE": "1201"
 },
 {
  "CODE": "120153",
  "NOM": "VIDOLE",
  "COMMUNE_CODE": "1201"
 },
 {
  "CODE": "120201",
  "NOM": "ADANHONDJIGO",
  "COMMUNE_CODE": "1202"
 },
 {
  "CODE": "120202",
  "NOM": "ADINGNIGON",
  "COMMUNE_CODE": "1202"
 },
 {
  "CODE": "120203",
  "NOM": "KINTA",
  "COMMUNE_CODE": "1202"
 },
 {
  "CODE": "120204",
  "NOM": "KPOTA",
  "COMMUNE_CODE": "1202"
 },
 {
  "CODE": "120205",
  "NOM": "LISSAZOUNME",
  "COMMUNE_CODE": "1202"
 },
 {
  "CODE": "120206",
  "NOM": "SAHE",
  "COMMUNE_CODE": "1202"
 },
 {
  "CODE": "120207",
  "NOM": "SINWE",
  "COMMUNE_CODE": "1202"
 },
 {
  "CODE": "120208",
  "NOM": "TANVE",
  "COMMUNE_CODE": "1202"
 },
 {
  "CODE": "120209",
  "NOM": "ZOUNGOUNDO",
  "COMMUNE_CODE": "1202"
 },
 {
  "CODE": "120251",
  "NOM": "AGBANGNIZOUN",
  "COMMUNE_CODE": "1202"
 },
 {
  "CODE": "120301",
  "NOM": "AGONGOINTO",
  "COMMUNE_CODE": "1203"
 },
 {
  "CODE": "120302",
  "NOM": "AVOGBANNA",
  "COMMUNE_CODE": "1203"
 },
 {
  "CODE": "120303",
  "NOM": "GNIDJAZOUN",
  "COMMUNE_CODE": "1203"
 },
 {
  "CODE": "120304",
  "NOM": "LISSEZOUN",
  "COMMUNE_CODE": "1203"
 },
 {
  "CODE": "120305",
  "NOM": "OUASSAHO",
  "COMMUNE_CODE": "1203"
 },
 {
  "CODE": "120306",
  "NOM": "PASSAGON",
  "COMMUNE_CODE": "1203"
 },
 {
  "CODE": "120307",
  "NOM": "SACLO",
  "COMMUNE_CODE": "1203"
 },
 {
  "CODE": "120308",
  "NOM": "SODOHOME",
  "COMMUNE_CODE": "1203"
 },
 {
  "CODE": "120351",
  "NOM": "BOHICON I",
  "COMMUNE_CODE": "1203"
 },
 {
  "CODE": "120352",
  "NOM": "BOHICON II",
  "COMMUNE_CODE": "1203"
 },
 {
  "CODE": "120401",
  "NOM": "HOUEKO",
  "COMMUNE_CODE": "1204"
 },
 {
  "CODE": "120451",
  "NOM": "ADOGBE",
  "COMMUNE_CODE": "1204"
 },
 {
  "CODE": "120452",
  "NOM": "GOUNLI",
  "COMMUNE_CODE": "1204"
 },
 {
  "CODE": "120453",
  "NOM": "HOUIN-HOUNSO",
  "COMMUNE_CODE": "1204"
 },
 {
  "CODE": "120454",
  "NOM": "LAINTA-COGBE",
  "COMMUNE_CODE": "1204"
 },
 {
  "CODE": "120455",
  "NOM": "NAOGON",
  "COMMUNE_CODE": "1204"
 },
 {
  "CODE": "120456",
  "NOM": "SOLI",
  "COMMUNE_CODE": "1204"
 },
 {
  "CODE": "120457",
  "NOM": "ZOGBA",
  "COMMUNE_CODE": "1204"
 },
 {
  "CODE": "120501",
  "NOM": "AGONDJI",
  "COMMUNE_CODE": "1205"
 },
 {
  "CODE": "120502",
  "NOM": "AGOUNA",
  "COMMUNE_CODE": "1205"
 },
 {
  "CODE": "120503",
  "NOM": "DAN",
  "COMMUNE_CODE": "1205"
 },
 {
  "CODE": "120504",
  "NOM": "DOHOUIME",
  "COMMUNE_CODE": "1205"
 },
 {
  "CODE": "120505",
  "NOM": "GOBAIX",
  "COMMUNE_CODE": "1205"
 },
 {
  "CODE": "120506",
  "NOM": "HOUTO",
  "COMMUNE_CODE": "1205"
 },
 {
  "CODE": "120507",
  "NOM": "MONSOUROU",
  "COMMUNE_CODE": "1205"
 },
 {
  "CODE": "120508",
  "NOM": "MOUGNON",
  "COMMUNE_CODE": "1205"
 },
 {
  "CODE": "120509",
  "NOM": "OUMBEGAME",
  "COMMUNE_CODE": "1205"
 },
 {
  "CODE": "120510",
  "NOM": "SETTO",
  "COMMUNE_CODE": "1205"
 },
 {
  "CODE": "120511",
  "NOM": "ZOUNKON",
  "COMMUNE_CODE": "1205"
 },
 {
  "CODE": "120551",
  "NOM": "DJIDJA CENTRE",
  "COMMUNE_CODE": "1205"
 },
 {
  "CODE": "120601",
  "NOM": "DASSO",
  "COMMUNE_CODE": "1206"
 },
 {
  "CODE": "120602",
  "NOM": "SAGON",
  "COMMUNE_CODE": "1206"
 },
 {
  "CODE": "120603",
  "NOM": "TOHOUES",
  "COMMUNE_CODE": "1206"
 },
 {
  "CODE": "120651",
  "NOM": "OUINHI CENTRE",
  "COMMUNE_CODE": "1206"
 },
 {
  "CODE": "120701",
  "NOM": "AGONLIN-HOUEGBO",
  "COMMUNE_CODE": "1207"
 },
 {
  "CODE": "120702",
  "NOM": "BANAME",
  "COMMUNE_CODE": "1207"
 },
 {
  "CODE": "120703",
  "NOM": "DON-TAN",
  "COMMUNE_CODE": "1207"
 },
 {
  "CODE": "120704",
  "NOM": "DOVI",
  "COMMUNE_CODE": "1207"
 },
 {
  "CODE": "120705",
  "NOM": "KPEDEKPO",
  "COMMUNE_CODE": "1207"
 },
 {
  "CODE": "120751",
  "NOM": "ZAGNANADO CENTRE",
  "COMMUNE_CODE": "1207"
 },
 {
  "CODE": "120801",
  "NOM": "ALLAHE",
  "COMMUNE_CODE": "1208"
 },
 {
  "CODE": "120802",
  "NOM": "ASSANLIN",
  "COMMUNE_CODE": "1208"
 },
 {
  "CODE": "120803",
  "NOM": "HOUNGOME",
  "COMMUNE_CODE": "1208"
 },
 {
  "CODE": "120804",
  "NOM": "KPAKPAME",
  "COMMUNE_CODE": "1208"
 },
 {
  "CODE": "120805",
  "NOM": "KPOZOUN",
  "COMMUNE_CODE": "1208"
 },
 {
  "CODE": "120806",
  "NOM": "ZA-TANTA",
  "COMMUNE_CODE": "1208"
 },
 {
  "CODE": "120807",
  "NOM": "ZEKO",
  "COMMUNE_CODE": "1208"
 },
 {
  "CODE": "120851",
  "NOM": "ZA-KPOTA",
  "COMMUNE_CODE": "1208"
 },
 {
  "CODE": "120901",
  "NOM": "AKIZA",
  "COMMUNE_CODE": "1209"
 },
 {
  "CODE": "120902",
  "NOM": "AVLAME",
  "COMMUNE_CODE": "1209"
 },
 {
  "CODE": "120903",
  "NOM": "CANA I",
  "COMMUNE_CODE": "1209"
 },
 {
  "CODE": "120904",
  "NOM": "CANA II",
  "COMMUNE_CODE": "1209"
 },
 {
  "CODE": "120905",
  "NOM": "DOME",
  "COMMUNE_CODE": "1209"
 },
 {
  "CODE": "120906",
  "NOM": "KOUSSOUKPA",
  "COMMUNE_CODE": "1209"
 },
 {
  "CODE": "120907",
  "NOM": "KPOKISSA",
  "COMMUNE_CODE": "1209"
 },
 {
  "CODE": "120908",
  "NOM": "MASSI",
  "COMMUNE_CODE": "1209"
 },
 {
  "CODE": "120909",
  "NOM": "TANWE-HESSOU",
  "COMMUNE_CODE": "1209"
 },
 {
  "CODE": "120910",
  "NOM": "ZOUKOU",
  "COMMUNE_CODE": "1209"
 },
 {
  "CODE": "120951",
  "NOM": "ZOGBODOMEY CENTRE",
  "COMMUNE_CODE": "1209"
 }
  };

   var arrondissementsObjsJson = x;
    return arrondissementsObjsJson.map((arrondissementJson) => Arrondissement.fromJson(arrondissementJson)).toList();
  }
 }
