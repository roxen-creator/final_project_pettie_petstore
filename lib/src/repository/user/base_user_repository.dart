
import '../../features/core/models/user_model/user_model.dart';

abstract class BaseUserRepository {
  Stream<User> getUser(String userId);
  Future<void> createUser(User user);
  Future<void> updateUser(User user);
}