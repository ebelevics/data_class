import 'package:mek_data_class/mek_data_class.dart';

part 'inheritance_example.g.dart';

@DataClass(changesVisible: true)
abstract class Animal with _$Animal {
  final String finalField;
  String get getterField;

  const Animal({
    required this.finalField,
  });

  String get name;

  String say();
}

@DataClass()
class Dog extends Animal with _$Dog {
  @override
  final String getterField;

  Dog({
    required String finalField,
    required this.getterField,
  }) : super(finalField: finalField);

  @override
  final String name = 'Dog';

  @override
  String say() => 'Woof!';
}

@DataClass()
class Cat extends Animal with _$Cat {
  @override
  final String getterField;

  Cat({
    required String finalField,
    required this.getterField,
  }) : super(finalField: finalField);

  @override
  final String name = 'Cat';

  @override
  String say() => 'Meow!';
}
