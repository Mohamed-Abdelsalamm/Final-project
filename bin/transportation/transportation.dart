
import 'dart:io';

class Transportation{

  int? cost;

  String? promoCode;
  String? promo;
  String? payMethod;
  
  Transportation({this.cost,this.promoCode,this.promo,this.payMethod,});

  
  void transportPromoCode(){
    print('If you have promo code Enter 1/yes 2/No');
    promo = stdin.readLineSync()!;
    if (promo == '1')
    {
      print('Enter your promo code');
      promoCode = stdin.readLineSync()!;
    }
  }

  void transportPayMethod(){
    print('Enter your payment method');
    payMethod = stdin.readLineSync()!;
  }
}