// ignore_for_file: public_member_api_docs

import 'package:b_health/models/screen_to_show.dart';
import 'package:equatable/equatable.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'screen_to_show_state.dart';

class ScreenToShowCubit extends HydratedCubit<ScreenToShowState> {
  ScreenToShowCubit()
      : super(
          const ScreenToShowState(
            Screen.intro,
          ),
        );

  void setScreenToShow(
    Screen screen,
  ) =>
      emit(
        ScreenToShowState(
          screen,
        ),
      );

  @override
  ScreenToShowState? fromJson(Map<String, dynamic> json) {
    try {
      final screenToShow = ScreenToShow.fromJson(json);
      return ScreenToShowState(
        screenToShow.screen,
      );
    } catch (_) {
      return null;
    }
  }

  @override
  Map<String, dynamic>? toJson(ScreenToShowState state) => ScreenToShow(
        state.screen,
      ).toJson();
}
