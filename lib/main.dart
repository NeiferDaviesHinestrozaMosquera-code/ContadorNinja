
import 'package:blocexample/homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'Bloc/Blocs/app_blocs.dart';


void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return BlocProvider(
      create: (_)=>CounterBlocs(),
      child: const MaterialApp(
        home: HomePage(),
      ),
    );
  }
}