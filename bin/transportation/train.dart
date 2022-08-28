import 'dart:io';

import 'transportation.dart';

class Train extends Transportation
{

  String? trainClass;
  int trainTripCost=0;

  Train(
      {this.trainClass,
      int? cost,
      String? promoCode,
      String? promo,
      String? payMethod}) :
        super(cost: cost,promoCode: promoCode, promo : promo , payMethod: payMethod);



  void classTypeF()
  {
    print('Enter 1 For First Class (120\$) \n Enter 2 For Second Class (90\$) \n Enter 3 For Economy Class (50\$)');
    trainClass = stdin.readLineSync()!;
    if (trainClass == '1')
    {
      trainTripCost+=120;
    }
    else if (trainClass == '2')
    {
      trainTripCost+=90;
    }
    else
    {
      trainTripCost+=50;
    }
  }

}