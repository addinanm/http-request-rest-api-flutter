import 'dart:io';
import 'package:http/http.dart' as http;

class HttpService {
  final String apiKey = '465c96dd1cf209e6dfdb30b1c3e4e6e8';
  final String baseUrl =
      'https://api.themoviedb.org/3/movie/popular?api_key=465c96dd1cf209e6dfdb30b1c3e4e6e8&language=en-US&page=1';

  Future<String?> getPopularMovies() async {
    final String uri = baseUrl + apiKey;

    http.Response result = await http.get(Uri.parse(uri));
    if (result.statusCode == HttpStatus.ok) {
      print("Sukses");
      String response = result.body;
      return response;
    } else {
      print("Fail");
      return null;
    }
  }
}
