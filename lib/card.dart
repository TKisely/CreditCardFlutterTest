class Card {
  final String cardHolderFirstName;
  final String cardHolderSecondName;
  final String bankBrand;
  final int cardLastFourNumber;
  final String expDate;
  final int securityCode;

  Card(
      {this.cardHolderFirstName,
      this.cardHolderSecondName,
      this.bankBrand,
      this.cardLastFourNumber,
      this.expDate,
      this.securityCode});

  String toString() {
    return cardHolderFirstName +
        ' ' +
        cardHolderSecondName +
        '\n' +
        bankBrand +
        ' ' +
        cardLastFourNumber.toString() +
        '\n' +
        expDate +
        ' ' +
        securityCode.toString();
  }
}
