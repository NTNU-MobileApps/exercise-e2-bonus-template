import 'package:exercise_e2_bonus/batch.dart';
import 'package:test/test.dart';

import 'test_tools.dart';

void main() {
  test('Two disconnected chains of students', () {
    final batch = Batch();
    addChainOfStudents(batch, numberOfStudents: 100);
    addChainOfStudents(batch, numberOfStudents: 10);
    expect(batch.areAllConnected(), isFalse);
  });
}

