class Record {

late String? id, metierId,metier, comId, commune, depId, departement, arrId, arrondissement;

late DateTime createdAt;

Record({this.id, required this.metierId, this.metier, this.comId, this.commune, this.depId, this.departement, this.arrId, this.arrondissement, required this.createdAt});

factory Record.fromJson(dynamic json) {
    return Record(id: json['id'] as String, metierId: json['metierId'] as String, metier: json['metier'] as String, depId: json['depId'] as String, departement: json['departement'] as String, comId: json['comId'] as String, commune: json['commune'] as String,arrId: json['arrId'] as String,arrondissement: json['arrondissement'] as String, createdAt: json['createdAt'] as DateTime);
 }

}