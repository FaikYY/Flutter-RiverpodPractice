abstract class IUser {
  int exp;
  String name;
  int level;

  void increaseExp();
  // IUser(this.name, this.exp, this.level);
  // NOTE: Abstract classes cannot have constructors
}
