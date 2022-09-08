import 'package:flutter/material.dart';
import 'package:http_request_rest_api_flutter/service/http_service.dart';

class MovieList extends StatefulWidget {
  @override
  _MovielistState createState() => _MovielistState();
}

class _MovielistState extends State<MovieList> {
  String result = "";
  HttpService? service;
  @override
  void initState() {
    service = HttpService();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    service!.getPopularMovies().then((value) => {
          setState(() {
            result = value!;
          })
        });
    return Scaffold(
      appBar: AppBar(
        title: const Text("Popular Movies"),
      ),
      body: Container(
        child: Text(result),
      ),
    );
  }
}
