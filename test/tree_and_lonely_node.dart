
import 'package:exercise_e2_bonus/batch.dart';
import 'package:exercise_e2_bonus/student.dart';
import 'package:test/test.dart';

import 'test_tools.dart';

void main() {
  test('A huge tree of students connected plus one lonely student', () {
    final batch = Batch();
    addTreeOfStudents(batch, numberOfLevels: 5, nodesAtEachLevel: 8);
    final lonelyStudent = Student();
    batch.add(lonelyStudent);
    expect(batch.areAllConnected(), isFalse);
  });
}