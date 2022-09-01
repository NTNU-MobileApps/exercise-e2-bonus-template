import 'package:exercise_e2_bonus/batch.dart';
import 'package:test/test.dart';

import 'test_tools.dart';

void main() {
  test('A chain of connected students', () {
    final batch = Batch();
    addChainOfStudents(batch, numberOfStudents: 10);
    expect(batch.areAllConnected(), isTrue);
  });
}

