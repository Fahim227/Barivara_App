
class Response{
  late int id;
  late String message;
  late bool response;

  Response({required this.id, required this.message, required this.response});



  factory Response.fromJson(Map<String,dynamic> json) =>  Response(id: json['id'], message: json['message'], response:json['response']);

  Map<String,dynamic> toJson() {
    Map<String,dynamic> mapData= {
      'id': id,
      'message': message,
      'response': response,
    };
    return mapData;
  }


}