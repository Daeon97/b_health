// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'screen_to_show.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ScreenToShow _$ScreenToShowFromJson(Map<String, dynamic> json) => ScreenToShow(
      $enumDecode(_$ScreenEnumMap, json['screen']),
    );

Map<String, dynamic> _$ScreenToShowToJson(ScreenToShow instance) =>
    <String, dynamic>{
      'screen': _$ScreenEnumMap[instance.screen]!,
    };

const _$ScreenEnumMap = {
  Screen.intro: 'intro',
  Screen.signIn: 'signIn',
  Screen.signUp: 'signUp',
  Screen.bioData: 'bioData',
  Screen.home: 'home',
};
