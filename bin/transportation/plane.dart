import 'dart:io';

import 'transportation.dart';

class Plane extends Transportation
{
  String? classType;
  String? foodSnacks;
  int planeTripCost=0;

  Plane(
      {
        this.classType,
      this.foodSnacks,
      int? cost,
      String? promoCode,
      String? promo,
      String? payMethod}) :
        super(cost: cost,promoCode: promoCode, promo : promo , payMethod: payMethod);

  void classTypeF()
  {
    print('Enter 1 For First Class (1000\$) \n Enter 2 For  Business Class (700\$) \n  Enter 3 For Economy Class (500\$)');
    classType = stdin.readLineSync()!;
    if (classType == '1')
    {
      planeTripCost+=1000;
    }
    else if (classType == '2')
    {
      planeTripCost+=700;
    }
    else
    {
      planeTripCost+=500;
    }
  }

  void foodSnacksF()
  {
    print('If you need Food & Snacks Enter 1/Yes 2/No (Extra 100\$)');
    foodSnacks = stdin.readLineSync()!;
    if (foodSnacks == '1')
    {
      planeTripCost+= 100 ;
    }
    else{
      planeTripCost+=0;
    }
  }

}

// First Class, Business Class, Economy Class.