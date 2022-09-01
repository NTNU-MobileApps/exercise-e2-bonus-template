import 'package:exercise_e2_bonus/batch.dart';
import 'package:exercise_e2_bonus/student.dart';

/// Generate a set of students, add them to a batch. The friendships will
/// form a chain:
/// student_1 <-> student2 <-> student3 <->  ... <-> student_numberOfStudents
/// When connectFirstAndLast is true, create a loop - connect the first and last together
void addChainOfStudents(Batch batch,
    {required int numberOfStudents, bool connectFirstAndLast = false}) {
  Student? previousStudent;
  Student? firstStudent;
  Student? lastStudent;
  for (int i = 0; i < numberOfStudents; ++i) {
    Student newStudent = Student();
    if (previousStudent != null) {
      newStudent.addFriend(previousStudent);
    }
    batch.add(newStudent);
    firstStudent ??= newStudent;
    previousStudent = newStudent;
    lastStudent = newStudent;
  }

  if (firstStudent != null && lastStudent != null && connectFirstAndLast) {
    lastStudent.addFriend(firstStudent);
  }
}

void addTreeOfStudents(Batch batch,
    {required int numberOfLevels, required int nodesAtEachLevel}) {
  final root = Student();
  batch.add(root);
  if (numberOfLevels > 1) {
    constructSubTree(batch, root, nodesAtEachLevel, numberOfLevels - 1);
  }
}

/// Create a subtree, using the given node as a root
/// n: how many child nodes to add
/// levels: how many extra levels to create
void constructSubTree(Batch batch, Student root, int n, int levels) {
  for (int i = 0; i < n; ++i) {
    final child = Student();
    batch.add(child);
    root.addFriend(child);
    if (levels > 1) {
      // Recursively add child nodes
      constructSubTree(batch, child, n, levels - 1);
    }
  }
}

/// Add a cycle (loop) of students 1 <-> 2 <-> 3 <-> ... <-> n and 1 <-> 1
void addCycle(Batch batch, {required int numberOfStudents}) {
  addChainOfStudents(batch,
      numberOfStudents: numberOfStudents, connectFirstAndLast: true);
}
