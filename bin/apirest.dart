import 'package:apirest/apirest.dart' as apirest;
import 'package:http/http.dart' as http;
import 'dart:convert';
void main(List<String> arguments) {
  _fetchData();
}
Future<void> _fetchData() async {
  final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts/1'));
  if (response.statusCode == 200) {
    final data = jsonDecode(response.body);
    print(data['title']);
    print(data['body']);
  } else {
    throw Exception('Failed to load data');
  }
}