import 'package:exercise_e2_bonus/batch.dart';
import 'package:test/test.dart';

void main() {
  test('An empty batch', () {
    final batch = Batch();
    expect(batch.areAllConnected(), isTrue);
  });
}