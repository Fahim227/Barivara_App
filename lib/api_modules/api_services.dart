import 'package:http/http.dart' as http;
import 'package:bari_vara_project/models/owner/owner_flat_list_model.dart';
class ApiService{
  static var client = http.Client();

  static Future<List<OwnerFlatList>> getOwnerFlats(int id) async {

    print('jsonString');
    var response = await client.post(
      Uri.parse('http://192.168.0.108:8000/barivara/ownerFlatList/'),
      body:{
        "id" : id.toString(),
      }
    );
    if (response.statusCode == 200){
      var jsonString = response.body;
      return ownerFlatListFromJson(jsonString);
    }
    return ownerFlatListFromJson(response.body);

  }

}