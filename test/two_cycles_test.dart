import 'package:exercise_e2_bonus/batch.dart';
import 'package:test/test.dart';

import 'test_tools.dart';

void main() {
  test('Two disconnected cycles (loops) of students', () {
    final batch = Batch();
    addCycle(batch, numberOfStudents: 10);
    addCycle(batch, numberOfStudents: 5);
    expect(batch.areAllConnected(), isFalse);
  });
}
