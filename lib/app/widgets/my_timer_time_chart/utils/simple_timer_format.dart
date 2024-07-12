class SimpleTimerFormat {
  static String formatSecondsToTimer(int value) {
    if (value == 0) return '00:00:00';

    String formattedTime = '';

    int hours = 0;
    int minutes = 0;
    int seconds = 0;

    hours = value ~/ 3600;
    int timeLeft = value - (3600 * hours);
    minutes = timeLeft ~/ 60;
    timeLeft = timeLeft - (minutes * 60);
    seconds = timeLeft;

    if (hours >= 1) {
      formattedTime =
          '${hours > 9 ? hours : '0$hours'}:${minutes > 9 ? minutes : '0$minutes'}:${seconds > 9 ? seconds : '0$seconds'}';
    } else if (minutes >= 1) {
      formattedTime =
          '${minutes > 9 ? minutes : '0$minutes'}:${seconds > 9 ? seconds : '0$seconds'}';
    } else {
      formattedTime = '${seconds > 9 ? seconds : '0$seconds'}';
    }

    return formattedTime;
  }
}
