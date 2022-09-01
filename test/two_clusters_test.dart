import 'package:exercise_e2_bonus/batch.dart';
import 'package:exercise_e2_bonus/student.dart';
import 'package:test/test.dart';

void main() {
  test('Two separate clusters of students', () {
    // First cluster
    final student1 = Student();
    final student2 = Student();
    final student3 = Student();
    student1.addFriend(student2);
    student2.addFriend(student3);
    student1.addFriend(student3);
    // Second cluster
    final student4 = Student();
    final student5 = Student();
    final student6 = Student();
    student4.addFriend(student5);
    student5.addFriend(student6);
    student4.addFriend(student6);

    final batch = Batch();
    batch.addAll([student1, student2, student3, student4, student5, student6]);
    expect(batch.areAllConnected(), isFalse);
  });
}