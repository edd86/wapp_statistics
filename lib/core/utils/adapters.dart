class Adapters {
  static DateTime convertDate(String dateTime) {
    String dateText = dateTime.split(',')[0].trim();
    String timeText = dateTime.split(',')[1].trim();

    List<String> dateParts = dateText.split('/');
    int day = int.parse(dateParts[0]);
    int month = int.parse(dateParts[1]);
    int year = int.parse(dateParts[2]);

    List<String> timeParts = timeText.split(':');
    int hour = int.parse(timeParts[0]);
    int min = int.parse(timeParts[1].substring(0, 2));
    String ampm = timeParts[1].substring(timeParts[1].length - 2);

    if (ampm.contains('p') && hour != 12) {
      hour += 12;
    }
    if (ampm.contains('a') && hour == 12) {
      hour = 0;
    }

    return DateTime(year, month, day, hour, min);
  }

  static String getPerson(String message) => message.split(':')[0];

  static String getMessage(String message) => message.split(':')[1].trim();
}
