abstract class MainStates {}

class LoadingScreenState extends MainStates {
  String? message;

  LoadingScreenState({this.message});
}

class ErrorScreenState extends MainStates {}

class MainScreenState extends MainStates {}

class CreateTranshScreenState extends MainStates {}

class CurrencyScreenState extends MainStates {
  final String side;

  CurrencyScreenState({required this.side});
}

class PaymentMethodScreenState extends MainStates {
  final String side;
  final List paymentMethods;

  PaymentMethodScreenState({required this.side, required this.paymentMethods});
}

class PaymentDetailScreenState extends MainStates {}


class TranshCreatedScreenState extends MainStates {
  final String transhId;

  TranshCreatedScreenState({required this.transhId});
}