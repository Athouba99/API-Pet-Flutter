import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pets_adoption_api/add_pets.dart';
import 'package:pets_adoption_api/pets_list.dart';
import 'package:pets_adoption_api/provider/pets_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      // multiprovider is used BC we have more than one high level states
      providers: [
        ChangeNotifierProvider(create: (context) => PetProvider()),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        routerConfig: router,
      ),
    );
  }
}

final router = GoRouter(routes: [
  GoRoute(
    path: "/",
    builder: (context, state) => PetsList(),
  ),
  GoRoute(
    path: "/add",
    builder: (context, state) => AddPets(),
  )
]);
