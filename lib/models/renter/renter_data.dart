class Renter{
  late int renter_id;
  late String name;
  late String fathers_name;
  late String birth_date;
  late String permanent_address;
  late String phone;
  late String email;
  late String occupation;
  late String nation_id;
  late String emergency_name;
  late String emergency_phone;
  late String password;


  Renter({
    required this.name,
    required this.fathers_name,
    required this.birth_date,
    required this.permanent_address,
    required this.phone,
    required this.email,
    required this.occupation,
    required this.nation_id,
    required this.emergency_name,
    required this.emergency_phone,
    required this.password
  });

  Map<String,dynamic> toJson() {
    Map<String,dynamic> mapData= {
      'name': name,
      'phone': phone,
      'email': email,
      'occupation': occupation,
      'nation_id': nation_id,
      'emergancy_name': emergency_name,
      'emergancy_phone': emergency_phone,
      'permanent_address': permanent_address,
      'birth_date': birth_date,
      'fathers_name': fathers_name,
      'password': password,
    };
    return mapData;
  }
}