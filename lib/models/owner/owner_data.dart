class Owner{

  late int _owner_id;
  late String _name;
  late String _phon;
  late String _email;
  late String _address;
  late String _occupation;
  late String _nation_id;
  late String _referal_id;
  late String _password;

  Owner(this._owner_id, this._name, this._phon, this._email, this._address,
      this._occupation, this._nation_id, this._referal_id, this._password);

  String get password => _password;

  set password(String value) {
    _password = value;
  }

  String get referal_id => _referal_id;

  set referal_id(String value) {
    _referal_id = value;
  }

  String get nation_id => _nation_id;

  set nation_id(String value) {
    _nation_id = value;
  }

  String get occupation => _occupation;

  set occupation(String value) {
    _occupation = value;
  }

  String get address => _address;

  set address(String value) {
    _address = value;
  }

  String get email => _email;

  set email(String value) {
    _email = value;
  }

  String get phon => _phon;

  set phon(String value) {
    _phon = value;
  }

  String get name => _name;

  set name(String value) {
    _name = value;
  }

  int get owner_id => _owner_id;

  set owner_id(int value) {
    _owner_id = value;
  }
}