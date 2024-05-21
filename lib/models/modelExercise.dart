class ModelExercise {
  String id;
  String name;
  String training;
  String description;

  String? urlImage; 

  ModelExercise({
    // required é pra dizer que é obrigatório.
    required this.id,
    required this.name,
    required this.training,
    required this.description,
  });

  ModelExercise.fromMap(Map<String, dynamic> map) :
    id = map['id'],
    name = map['name'],
    training = map['training'],
    description = map['description'],
    urlImage = map['urlImage'];

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'training': training,
      'description': description,
      'urlImage': urlImage,
    };
  }
}