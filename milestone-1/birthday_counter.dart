import 'dart:io';

void main() {

  print('enter your birthday YYYY-MM-DD:');
  String birthdayString = stdin.readLineSync()!;
  DateTime birthday = DateTime.parse(birthdayString);
  DateTime now = DateTime.now();
  DateTime nextBirthday = DateTime(now.year, birthday.month, birthday.day);
  if (nextBirthday.isBefore(now) || nextBirthday == now) {
    nextBirthday = DateTime(now.year + 1, birthday.month, birthday.day);
  }
  int daysUntilNextBirthday = nextBirthday.difference(now).inDays;
  print('There are $daysUntilNextBirthday days until your next birthday.');
}