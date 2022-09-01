import 'package:exercise_e2_bonus/batch.dart';
import 'package:exercise_e2_bonus/student.dart';
import 'package:test/test.dart';

void main() {
  test('A batch of three connected students', () {
    final student1 = Student();
    final student2 = Student();
    final student3 = Student();
    student1.addFriend(student2);
    student2.addFriend(student3);
    student1.addFriend(student3);
    final batch = Batch();
    batch.addAll([student1, student2, student3]);
    expect(batch.areAllConnected(), isTrue);
  });
}