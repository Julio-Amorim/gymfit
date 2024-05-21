class ModelFeeling {
  String id;
  String name;
  String feeling;
  String date;

  ModelFeeling({
    required this.id,
    required this.name,
    required this.feeling,
    required this.date
  });

  ModelFeeling.fromMap(Map<String, dynamic> map) :
    id = map['id'],
    name = map['name'],
    feeling = map['feeling'],
    date = map['date'];
    

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'feeling': feeling,
      'date': date,
    };
  }

}