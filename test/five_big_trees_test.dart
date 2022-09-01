
import 'package:exercise_e2_bonus/batch.dart';
import 'package:test/test.dart';

import 'test_tools.dart';

void main() {
  test('Five huge tree of students', () {
    final batch = Batch();
    addTreeOfStudents(batch, numberOfLevels: 5, nodesAtEachLevel: 8);
    addTreeOfStudents(batch, numberOfLevels: 6, nodesAtEachLevel: 8);
    addTreeOfStudents(batch, numberOfLevels: 4, nodesAtEachLevel: 8);
    addTreeOfStudents(batch, numberOfLevels: 5, nodesAtEachLevel: 8);
    addTreeOfStudents(batch, numberOfLevels: 5, nodesAtEachLevel: 10);
    expect(batch.areAllConnected(), isFalse);
  });
}