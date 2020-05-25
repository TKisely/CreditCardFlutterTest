import 'card.dart';
import 'resources/constants.dart';
import 'dart:math';

class CardBuilder {
  static Card getRandomCard() {
    return Card(
        cardHolderFirstName: getCardHolderFirstName(),
        cardHolderSecondName: getCardHolderSecondName(),
        bankBrand: getBank(),
        cardLastFourNumber: getLastFourDigit(),
        securityCode: getSecretDigit(),
        expDate: getExpDate());
  }

  static String getCardHolderFirstName() {
    Random rnd = new Random();
    return kFirstNames[rnd.nextInt(kFirstNames.length - 1)];
  }

  static String getCardHolderSecondName() {
    Random rnd = new Random();
    return kFamilyNames[rnd.nextInt(kFamilyNames.length - 1)];
  }

  static String getBank() {
    Random rnd = new Random();
    return kCardBankOptions[rnd.nextInt(kCardBankOptions.length)];
  }

  static int getLastFourDigit() {
    Random rnd = new Random();
    return rnd.nextInt(8900) + 1000;
  }

  static int getSecretDigit() {
    Random rnd = new Random();
    return rnd.nextInt(890) + 100;
  }

  static String getExpDate() {
    Random rnd = new Random();
    int year = rnd.nextInt(10) + 11;
    int month = rnd.nextInt(11) + 1;
    return month.toString() + '/' + year.toString();
  }
}
