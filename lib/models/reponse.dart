
class Response{
  late int _id;
  late String _message;
  late bool _response;

  Response(this._id, this._message, this._response);

  bool get response => _response;

  set response(bool value) {
    _response = value;
  }

  String get message => _message;

  set message(String value) {
    _message = value;
  }

  int get id => _id;

  set id(int value) {
    _id = value;
  }
}