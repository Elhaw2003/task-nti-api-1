class DataModel{
  final String name;
  final String body;
  final String email;
  final int id;

  DataModel({required this.name,required this.body,required this.id,required this.email});
  factory DataModel.fromJson(Map<String,dynamic> json){
    return DataModel(name: json['name'], body: json['body'], id: json['id'],email: json["email"]);
  }
}