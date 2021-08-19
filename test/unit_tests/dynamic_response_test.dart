import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:logger/logger.dart';
import 'package:naftacredit/features/core/data/response/index.dart';

import '../fixtures/fixture_reader.dart';

void main() {
  test('test that DynamicResponse Class can parse json response', () {
    var result = jsonDecode(fixture('dynamic_response_type.json'));

    final res = DynamicResponseObject.fromJson(result as Map<String, dynamic>);

    res.response.map(
      error: (e) => Logger().wtf(e),
      success: (s) => Logger().wtf(s),
    );
  });
}
