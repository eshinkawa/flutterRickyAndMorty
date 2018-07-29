class CharacterModel {
  int id;
  String name;
  String status;
  String species;
  String image;

  CharacterModel(this.id, this.name, this.status, this.species, this.image);

  CharacterModel.fromJson(Map<String, dynamic> parsedJson){
    id = parsedJson['id'];
    name = parsedJson['name'];
    status = parsedJson['status'];
    species = parsedJson['species'];
    image = parsedJson['image'];
  }
}
