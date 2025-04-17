import 'package:json_annotation/json_annotation.dart';

part 'Person.g.dart';

@JsonSerializable()
class Person {
  String? mobileNo;
  String? iPin;
  String? deviceID;
  String? firebaseId;
  String? token;
  String? otp;
  bool? isExist;
  bool? status;
  int? userId;

  Person(
      {this.mobileNo,
      this.iPin,
      this.deviceID,
      this.firebaseId,
      this.token,
      this.otp,
      this.isExist,
      this.status,
      this.userId});

  factory Person.fromJson(Map<String, dynamic> json) => _$PersonFromJson(json);

  Map<String, dynamic> toJson(Person movie) => _$PersonToJson(this);
}
