// Represents a "batch" of students. A "Class of students" would actually be
// a better name, but Class is a reserved name ;)
import 'package:exercise_e2_bonus/student.dart';

class Batch {
  Set<Student> students = {};

  /// Add a student to the batch
  void add(Student student) {
    students.add(student);
  }

  /// Add all given students to the batch
  void addAll(Iterable<Student> students) {
    this.students.addAll(students);
  }

  /// A method which determines whether all students are connected - whether
  /// any student A in the batch can reach any other student B through
  /// a friend of a friend of a friend...
  /// Returns true if all students form a "cluster of friendships"
  /// Returns false if there are several disconnected friend clusters
  bool areAllConnected() {
    // TODO - The task in this exercise is to implement this method!
    return false;
  }

  void debugPrint() {
    int counter = 1;
    for (final student in students) {
      print("Student $counter has ${student.friends.length} friends");
      counter++;
    }
  }
}
