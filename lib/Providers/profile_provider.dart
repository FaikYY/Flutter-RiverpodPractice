import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:data_pratice/Objects/User.dart';

final initialUser = User('Faik YESILYAPRAK', 0, 0);

final ProfileProvider = ChangeNotifierProvider((ref) {
  return initialUser;
});

class ProfileNotifier extends StateNotifier<User> {
  ProfileNotifier(User state) : super(initialUser);
}
