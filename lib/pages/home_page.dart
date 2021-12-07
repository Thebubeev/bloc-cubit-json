import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_network_example/bloc/user_bloc.dart';
// import 'package:flutter_network_example/bloc/user_bloc.dart';
import 'package:flutter_network_example/services/user_repository.dart';
import 'package:flutter_network_example/widgets/action_buttons.dart';
import 'package:flutter_network_example/widgets/user_list.dart';

class HomePage extends StatelessWidget {
  final usersRepository = UsersRepository();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<UserBloc>(
      create: (context) => UserBloc(usersRepository),
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Users list'),
        ),
        body: Column(
          children: [ActionButtons(), Expanded(child: UserList())],
        ),
      ),
    );
  }
}
