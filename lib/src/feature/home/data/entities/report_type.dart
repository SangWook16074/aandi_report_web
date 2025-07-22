import 'package:freezed_annotation/freezed_annotation.dart';

part 'report_type.g.dart';

@JsonEnum(alwaysCreate: true)
enum ReportType {
  @JsonValue("CS")
  CS,
  @JsonValue("BASIC")
  BASIC,
}
