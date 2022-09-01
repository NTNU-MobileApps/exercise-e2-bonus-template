/// Represents a student
class Student {
  static int studentCount = 0;

  final int id;

  final Set<Student> friends = {};

  Student() : id = ++studentCount;

  /// Register a new friendship
  void addFriend(Student friend) {
    // For debugging - print out this, then you see connections between students
    // print("$this -> $friend");
    friends.add(friend);
    // Let's make sure the friendship is symmetrical
    friend.friends.add(this);
  }

  @override
  String toString() {
    return "Student_$id";
  }
}
