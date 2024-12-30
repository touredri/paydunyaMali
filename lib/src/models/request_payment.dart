import 'dart:convert';

import 'package:equatable/equatable.dart';

class PayerInfo extends Equatable {
  final String fullName;
  final String? email;
  final int? otp;
  final String phone;
  final String paymentToken;
  final String? customerAddress;

  const PayerInfo({
    this.email,
    this.otp,
    required this.fullName,
    required this.phone,
    required this.paymentToken,
    this.customerAddress = "Bamako",
  });

  String toJsonWaveSenegal() => json.encode({
        "wave_senegal_fullName": fullName,
        "wave_senegal_email": email,
        "wave_senegal_phone": phone,
        "wave_senegal_payment_token": paymentToken
      });

  String toJsonFreeMoneySenegal() => json.encode({
        "customer_name": fullName,
        "customer_email": email,
        "phone_number": phone,
        "payment_token": paymentToken
      });

  String toJsonOrangeMoneySenegal() => json.encode({
        "customer_name": fullName,
        "customer_email": email,
        "phone_number": phone,
        "authorization_code": otp,
        "invoice_token": paymentToken
      });

  String toJsonOrangeMoneyMali() => json.encode({
        "orange_money_mali_customer_fullname": fullName,
        "orange_money_mali_email": email,
        "orange_money_mali_phone_number": phone,
        "orange_money_mali_customer_address": customerAddress,
        "payment_token": paymentToken
      });

  String toJsonMoovMoneyMali() => json.encode({
        "moov_ml_customer_fullname": fullName,
        "moov_ml_email": email,
        "moov_ml_phone_number": phone,
        "moov_ml_customer_address": customerAddress,
        "payment_token": paymentToken
      });

  @override
  List<Object?> get props => [
        email,
        fullName,
        phone,
        paymentToken,
        customerAddress,
      ];
}
