import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_crud/data/dummy_users.dart';

import '../components/user_tile.dart';

class UserList extends StatelessWidget {
  const UserList({super.key});

  @override
  Widget build(BuildContext context) {
    final users = {...DUMMY_USERS};

    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Usuários'),
        actions: <Widget>[IconButton(onPressed: () {}, icon: Icon(Icons.add))],
      ),
      body: ListView.builder(
          itemCount: users.length,
          itemBuilder: (ctx, i) => UserTile(
                users.values.elementAt(i),
              )),
    );
  }
}
