


class Owner{

  late int owner_id;
  late String name;
  late String phon;
  late String email;
  late String address;
  late String occupation;
  late String nation_id;
  late String referal_id='';
  late String password;


  Owner({required this.name,required this.email,required this.phon,required this.occupation,required this.nation_id,
  required this.address,required this.password});

  Map<String,dynamic> toJson() {
    Map<String,dynamic> mapData= {
      'name': name,
      'phone': phon,
      'email': email,
      'address' : address,
      'occupation': occupation,
      'nation_id': nation_id,
      'password': password
    };
    return mapData;
  }





}