import 'package:exercise_e2_bonus/batch.dart';
import 'package:exercise_e2_bonus/student.dart';

/// Generate a set of students, add them to a batch. The friendships will
/// form a chain:
/// student_1 <-> student2 <-> student3 <->  ... <-> student_numberOfStudents
void addChainOfStudents(Batch batch, {required int numberOfStudents}) {
  Student? previousStudent;
  for (int i = 0; i < numberOfStudents; ++i) {
    Student newStudent = Student();
    if (previousStudent != null) {
      newStudent.addFriend(previousStudent);
    }
    batch.add(newStudent);
    previousStudent = newStudent;
  }
}
