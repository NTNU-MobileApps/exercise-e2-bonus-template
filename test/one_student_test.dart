import 'package:exercise_e2_bonus/batch.dart';
import 'package:exercise_e2_bonus/student.dart';
import 'package:test/test.dart';

void main() {
  test('Single student', () {
    final batch = Batch();
    final student = Student();
    batch.add(student);
    expect(batch.areAllConnected(), isTrue);
  });
}
