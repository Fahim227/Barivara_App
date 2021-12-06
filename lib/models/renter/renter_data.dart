class Renter{
  late int _renter_id;
  late int _owner_referal_id;
  late String _name;
  late String _fathers_name;
  late String _birth_date;
  late String _permanent_address;
  late String _phone;
  late String _email;
  late String _address;
  late String _occupation;
  late String _nation_id;
  late String _emergency_name;
  late String _emergency_phone;
  late String _password;

  Renter(
      this._renter_id,
      this._owner_referal_id,
      this._name,
      this._fathers_name,
      this._birth_date,
      this._permanent_address,
      this._phone,
      this._email,
      this._address,
      this._occupation,
      this._nation_id,
      this._emergency_name,
      this._emergency_phone,
      this._password);

  String get password => _password;

  set password(String value) {
    _password = value;
  }

  String get emergency_phone => _emergency_phone;

  set emergency_phone(String value) {
    _emergency_phone = value;
  }

  String get emergency_name => _emergency_name;

  set emergency_name(String value) {
    _emergency_name = value;
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

  String get phone => _phone;

  set phone(String value) {
    _phone = value;
  }

  String get permanent_address => _permanent_address;

  set permanent_address(String value) {
    _permanent_address = value;
  }

  String get birth_date => _birth_date;

  set birth_date(String value) {
    _birth_date = value;
  }

  String get fathers_name => _fathers_name;

  set fathers_name(String value) {
    _fathers_name = value;
  }

  String get name => _name;

  set name(String value) {
    _name = value;
  }

  int get owner_referal_id => _owner_referal_id;

  set owner_referal_id(int value) {
    _owner_referal_id = value;
  }

  int get renter_id => _renter_id;

  set renter_id(int value) {
    _renter_id = value;
  }
}