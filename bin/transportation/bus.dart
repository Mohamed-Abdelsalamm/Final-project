import 'dart:io';
import 'transportation.dart';

class Bus extends Transportation
{
  String? busType;
  String? airConditioner;
  int busTripCost=0;


  Bus(
      {this.airConditioner,
      this.busType,
      int? cost,
      String? promoCode,
      String? promo,
      String? payMethod}) :
        super(cost: cost,promoCode: promoCode, promo : promo , payMethod: payMethod);


  void busTypeF()
  {
    print('Enter 1 For superGet (70\$) \n Enter 2 For miniBus (50\$) \n Enter 3 For MicroBus (35\$)');
    busType = stdin.readLineSync();
    if (busType == '1')
    {
      busTripCost+=70;
    }
    else if (busType == '2')
    {
      busTripCost+=50;
    }
    else
      {
        busTripCost+=35;
      }
  }

  void busAirConditioner()
  {
    print('If you need bus with airConditioner Enter 1/Yes 2/No (Extra 20\$)');
    airConditioner = stdin.readLineSync()!;
    if (airConditioner == '1')
      {
        busTripCost+= 20 ;
      }
    else{
      busTripCost+=0;
    }
  }
}