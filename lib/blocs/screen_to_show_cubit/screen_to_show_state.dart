// ignore_for_file: public_member_api_docs

part of 'screen_to_show_cubit.dart';

class ScreenToShowState extends Equatable {
  const ScreenToShowState(
    this.screen,
  );

  final Screen screen;

  @override
  List<Object?> get props => [
        screen,
      ];
}
