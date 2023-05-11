// ignore_for_file: public_member_api_docs

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'screen_to_show.g.dart';

enum Screen { intro, signIn, signUp, bioData, home }

@JsonSerializable()
class ScreenToShow extends Equatable {
  const ScreenToShow(
    this.screen,
  );

  factory ScreenToShow.fromJson(Map<String, dynamic> json) =>
      _$ScreenToShowFromJson(json);

  final Screen screen;

  @override
  List<Object?> get props => [
        screen,
      ];

  Map<String, dynamic> toJson() => _$ScreenToShowToJson(this);
}
