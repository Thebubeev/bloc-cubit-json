import 'package:flutter_network_example/models/user.dart';
import 'package:flutter_network_example/services/users_api_provider.dart';

class UsersRepository {
  UserProvider _usersProvider = UserProvider();
  Future<List<User>> getAllUser() => _usersProvider.getUser();
}
