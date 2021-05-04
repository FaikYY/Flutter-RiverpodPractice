import 'package:data_pratice/Interfaces/IUser.dart';
import 'package:flutter/foundation.dart';

class User extends ChangeNotifier implements IUser {
  User(this.name, this.exp, this.level);

  @override
  int exp;

  @override
  int level;

  @override
  String name;

  @override
  void increaseExp() {
    exp++;
    if (exp == 10) {
      exp = 0;
      level++;
    }
    notifyListeners();
  }
}
