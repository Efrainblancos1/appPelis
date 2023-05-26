
import 'package:cinemapedia/config/constans/enviroment.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';


// class HomeScreen extends StatelessWidget {
class HomeScreen extends StatelessWidget {
  static const name='HomeScreen';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context,) {                                         

    return Scaffold(
      appBar: AppBar(title: Text('HomeScreen'),),
      body: Center(
        child: Text(Eviroment.theMovieDbKey),
      ),
     
    );
  }
}