import 'package:http/http.dart' as http;

enum HttpMethod { post, put, get, delete }



abstract class RemoteDataSource {
  Future<http.Response> request(
    HttpMethod httpMethod,
    String path,
    Map<String, dynamic> param,
  );
}
