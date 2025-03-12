import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum Level {
  @JsonValue("VERYHIGH")
  VERYHIGH("최상"),

  @JsonValue("HIGH")
  HIGH("상"),

  @JsonValue("MEDIUM")
  MEDIUM("중"),

  @JsonValue("LOW")
  LOW("하");

  final String desc;
  const Level(this.desc);
}
