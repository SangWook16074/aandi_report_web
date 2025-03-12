import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum ReportType {
  @JsonValue("CS")
  CS,
  @JsonValue("BASIC")
  BASIC,
}
