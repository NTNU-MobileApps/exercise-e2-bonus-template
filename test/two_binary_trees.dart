
import 'package:exercise_e2_bonus/batch.dart';
import 'package:test/test.dart';

import 'test_tools.dart';

void main() {
  test('Two disconnected binary trees, 3 levels', () {
    final batch = Batch();
    addTreeOfStudents(batch, numberOfLevels: 3, nodesAtEachLevel: 2);
    addTreeOfStudents(batch, numberOfLevels: 3, nodesAtEachLevel: 2);
    expect(batch.areAllConnected(), isFalse);
  });
}