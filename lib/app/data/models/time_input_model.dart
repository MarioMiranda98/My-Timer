import 'package:my_timer/app/data/enums/modes_enum.dart';

class TimeInputModel {
  final ModesEnum mode;
  final int time;
  final int? rounds;
  final int? rest;

  TimeInputModel({
    this.rest,
    this.rounds,
    required this.time,
    required this.mode,
  });

  factory TimeInputModel.fromJson(Map<String, dynamic> data) {
    ModesEnum mode = ModesEnum.custom;

    for (final modeInEnum in ModesEnum.values) {
      if (modeInEnum.toString() == data["mode"]) {
        mode = modeInEnum;
      }
    }

    return TimeInputModel(
      mode: mode,
      time: data["time"],
      rounds: data["rounds"] ?? 0,
      rest: data["rest"] ?? 0,
    );
  }

  toJson() => {
        "mode": mode.toString(),
        "time": time,
        "rounds": rounds,
        "rest": rest,
      };
}
