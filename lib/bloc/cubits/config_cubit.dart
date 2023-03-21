import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:leap_demo/bloc/state/config_state.dart';
import 'package:leap_demo/config.dart';

class ConfigCubit extends HydratedCubit<ConfigState> {
  ConfigCubit({
    required ConfigState initialState,
  }) : super(initialState);

  void setApiKey(String? apiKey) {
    apiKey ??= '';

    emit(state.copyWith(
      apiKey: apiKey.isEmpty ? Config.apiKey : apiKey,
    ));
  }

  @override
  toJson(state) => state.toJson();

  @override
  fromJson(json) => ConfigState.fromJson(json);
}
