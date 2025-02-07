import 'package:class_to_string/src/class_to_string.dart';

/// A [ClassToString] that produces single line output.
class ClassToFlatString implements ClassToString {
  StringBuffer? _result = StringBuffer();

  var _hasPreviousField = false;

  ClassToFlatString(String className, [Iterable<Type> types = const []]) {
    _result!.write(className);
    if (types.isNotEmpty) {
      _result!.write('<');
      int i = 0;
      for (final type in types) {
        if (i++ > 0) _result!.write(',');
        _result!.write(type);
      }
      _result!.write('>');
    }
    _result!.write('(');
  }

  @override
  void add(String field, Object? value) {
//     if (value == null) return;
    if (_hasPreviousField) _result!.write(',');
    _result!
      ..write(field)
      ..write('=')
      ..write(value);
    _hasPreviousField = true;
  }

  @override
  String toString() {
    _result!.write(')');
    var stringResult = _result.toString();
    _result = null;
    return stringResult;
  }
}
