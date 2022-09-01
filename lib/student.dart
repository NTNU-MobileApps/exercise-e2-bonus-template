/// Represents a student
class Student {
  final Set<Student> friends = {};

  /// Register a new friendship
  void addFriend(Student friend) {
    friends.add(friend);
    // Let's make sure the friendship is symmetrical
    friend.addFriend(this);
  }
}
