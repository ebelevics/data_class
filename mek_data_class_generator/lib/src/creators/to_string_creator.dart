import 'package:code_builder/code_builder.dart';
import 'package:mek_data_class_generator/src/configs.dart';
import 'package:mek_data_class_generator/src/creators/creator.dart';
import 'package:mek_data_class_generator/src/specs.dart';

class ToStringCreator extends Creator {
  ToStringCreator({
    required ClassSpec classSpec,
    required List<FieldSpec> fieldSpecs,
  }) : super(classSpec: classSpec, fieldSpecs: fieldSpecs);

  @override
  bool get available => classSpec.stringify;

  @override
  bool get needMixinMethodSelf => _effectiveFieldSpecs.isNotEmpty;

  late final Iterable<FieldSpec> _effectiveFieldSpecs = (() {
    var fieldSpecs = this.fieldSpecs.where((field) => field.stringify);
    switch (classSpec.stringifyType) {
      case StringifyType.params:
        fieldSpecs = fieldSpecs.where((field) => field.isParam).toList();
        break;
      case StringifyType.fields:
        break;
    }
    return fieldSpecs;
  })();

  @override
  Iterable<Method> creteMixinMethods() sync* {
    yield _createMixinMethodToString();
  }

  Method _createMixinMethodToString() {
    final types = classSpec.types.isEmpty ? '' : ', ${classSpec.types}';

    final fields = _effectiveFieldSpecs.map((field) {
      final variable = '_self.${field.name}';
      final stringifier = field.stringifier;
      final stringifyVariable = stringifier != null ? '$stringifier($variable)' : variable;
      return '..add(\'${field.name}\', $stringifyVariable)';
    });

    return Method((b) => b
      ..annotations.add(Annotations.override)
      ..returns = Refs.string
      ..name = 'toString'
      ..lambda = true
      ..body = Code("(ClassToString('${classSpec.self.name}'$types)${fields.join()}).toString()"));
  }
}
