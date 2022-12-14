import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:go_router/go_router.dart';

class AddPets extends StatelessWidget {
  const AddPets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(" Adding a Pets "),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.push("/add");
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
