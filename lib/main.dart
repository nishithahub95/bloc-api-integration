import 'package:bloc_api_integration/bloc/post_bloc.dart';
import 'package:bloc_api_integration/screen/post_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider(create: (_)=>PostBloc())
    ], child: const MaterialApp(
      home: PostScreen(),
    ) );



  }
}
