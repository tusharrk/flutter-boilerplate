import 'package:json_annotation/json_annotation.dart';

part 'Person.g.dart';

@JsonSerializable()
class Person {
  final String name;
  final DateTime dateOfRelease;

  Person({
    required this.name,
    required this.dateOfRelease,
  });

  factory Person.fomJson(Map<String, dynamic> json) => _$PersonFromJson(json);

  Map<String, dynamic> toJson(Person movie) => _$PersonToJson(this);
}
