import 'package:flutter_test/flutter_test.dart';
import 'package:unitwidget/services/math_service.dart';

void main() {
  test("Test sum method", () {
    final mathService = MathService();
    expect(mathService.sum(2, 3), equals(5));
    expect(mathService.sum(-5, 10), equals(6));
    expect(mathService.sum(0, 0), equals(0));
  });
}
