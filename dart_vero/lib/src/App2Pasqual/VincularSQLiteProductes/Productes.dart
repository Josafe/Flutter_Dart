class Productes{
  int id;
  String nom;
  int preu;

  Productes({required this.id, required this.nom, required this.preu});

  Map<String, dynamic> toMap(){
    return{'id':id, 'nom':nom, 'preu':preu};
  }
}