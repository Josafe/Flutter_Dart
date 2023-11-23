class Clients {
  int id;
  String nom;
  String correu;
  String pswd;

  Clients({required this.id, required this.nom, required this.correu, required this.pswd});

  Map<String, dynamic> toMap(){
    return{'id': id, 'nom':nom, 'correu': correu, 'pswd': pswd};
  }
}