import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_network_example/bloc/user_bloc.dart';
import 'package:flutter_network_example/bloc/user_event.dart';
// import 'package:flutter_network_example/bloc/user_bloc.dart';
import 'package:flutter_network_example/cubit/user_cubit.dart';

class ActionButtons extends StatelessWidget {
  const ActionButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: close_sinks
    // final UserBloc userBloc = BlocProvider.of<UserBloc>(context);
    // final UserCubit userCubit = context.read<UserCubit>();
    final UserBloc userBloc = context.read<UserBloc>();
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        // ignore: deprecated_member_use
        RaisedButton(
          color: Colors.green,
          onPressed: () {
            // userCubit.fetchUsers();
            userBloc.add(UserLoadEvent());
          },
          child: Text('Load'),
        ),
        SizedBox(
          width: 8,
        ),
        // ignore: deprecated_member_use
        RaisedButton(
          color: Colors.red,
          onPressed: () {
            // userCubit.clearUsers();
            userBloc.add(UserClearEvent());
          },
          child: Text('Clear'),
        )
      ],
    );
  }
}
