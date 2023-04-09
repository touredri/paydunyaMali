import 'package:equatable/equatable.dart';

class Action extends Equatable {
  final String cancelUrl;
  final String returnUrl;
  final String callbackUrl;

  const Action({
    required this.cancelUrl,
    required this.returnUrl,
    required this.callbackUrl,
  });

  factory Action.fromMap(Map<String, dynamic> map) {
    return Action(
      cancelUrl: map['cancel_url'] ?? '',
      returnUrl: map['return_url'] ?? '',
      callbackUrl: map['callback_url'] ?? '',
    );
  }

  Map<String, dynamic> toMap() => {
        "cancel_url": cancelUrl,
        "return_url": returnUrl,
        "callback_url": callbackUrl,
      };

  @override
  List<Object?> get props => [
        cancelUrl,
        returnUrl,
        callbackUrl,
      ];
}
