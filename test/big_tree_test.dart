
import 'package:exercise_e2_bonus/batch.dart';
import 'package:test/test.dart';

import 'test_tools.dart';

void main() {
  test('A huge tree of students, many levels', () {
    final batch = Batch();
    addTreeOfStudents(batch, numberOfLevels: 5, nodesAtEachLevel: 10);
    expect(batch.areAllConnected(), isTrue);
  });
}