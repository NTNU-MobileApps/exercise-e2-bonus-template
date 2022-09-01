import 'package:exercise_e2_bonus/batch.dart';
import 'package:exercise_e2_bonus/student.dart';
import 'package:test/test.dart';

void main() {
  test('Batch functionality tests', () {
    final batch = Batch();
    expect(batch.first(), isNull);
    final firstStudent = Student();
    batch.add(firstStudent);
    expect(batch.first(), firstStudent);
  });
  test('Student functionality test', () {
    final student1 = Student();
    final student2 = Student();
    expect(student1.isFriendsWith(student2), isFalse);
    expect(student2.isFriendsWith(student1), isFalse);
    student1.addFriend(student2);
    expect(student1.isFriendsWith(student2), isTrue);
    expect(student2.isFriendsWith(student1), isTrue);
  });
}
