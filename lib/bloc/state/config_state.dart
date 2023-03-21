import 'package:freezed_annotation/freezed_annotation.dart';

part 'config_state.freezed.dart';
part 'config_state.g.dart';

@freezed
class ConfigState with _$ConfigState {
  const ConfigState._();

  const factory ConfigState({
    required String apiKey,
  }) = _ConfigState;

  factory ConfigState.fromJson(Map<String, dynamic> json) =>
      _$ConfigStateFromJson(json);

  factory ConfigState.initial(String apiKey) {
    return ConfigState(apiKey: apiKey);
  }
}
