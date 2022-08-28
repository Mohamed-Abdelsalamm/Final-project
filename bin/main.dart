import 'dart:io';
import 'client.dart';
import 'rooms.dart';
import 'transportation/bus.dart';
import 'transportation/plane.dart';
import 'transportation/train.dart';
import 'transportation/transportation.dart';
import 'users.dart';
import 'vipClient.dart';


void main() {
  String? transportType;
  int? transportationCost;
  var transportation = Transportation();
  var user = User();
  print('Welcome in our hotel 😀 ');
  user.enterClientData();
  print('Do you want booking transportation method Enter 1/Yes 2/No');
  String? x =stdin.readLineSync()!;
  if(x == '1')
  {
    print('Enter 1 to transport by Plane ✈');
    print('Enter 2 to transport by Train 🚂');
    print('Enter 3 to transport by Bus 🚌');
    transportType= stdin.readLineSync()!;
    if (transportType == '1')
      {
        var plane = Plane();
        plane.classTypeF();
        plane.foodSnacksF();
        transportationCost = plane.planeTripCost;
        print('Transportation cost is $transportationCost \$');
      }
    else if (transportType == '2')
      {
        var train = Train();
        train.classTypeF();
        print(train.trainTripCost);
        transportationCost = train.trainTripCost;
        print('Transportation cost is $transportationCost \$');
      }
    else
      {
        var bus = Bus();
        bus.busTypeF();
        bus.busAirConditioner();
        transportationCost = bus.busTripCost;
        print('Transportation cost $transportationCost \$');      }
  }

  List<User> users = [];
  users.add(user);
  print(user);
  var client = Client( user.name!, user.address!, user.gender!, user.age!,
      user.phoneNumber!);

  print(
      '${client.name}! please choice your room type\n --------------------------- ');

  print('Enter 1 for normal client\n Enter 2 for Vip Client ');

  String num = stdin.readLineSync()!;
  var rooms = Rooms();
  var vip = VipClient(
      user.name!, user.address!, user.gender!, user.age!, user.phoneNumber!);

  if (num == '1') {
    print('Sir ${client.name}');
    rooms.enterRoomDataNormal();
    rooms.foodSnacks();
    rooms.Days();
    client.stayCost(rooms.roomType, rooms.snacks, rooms.days);
    if (x == '1') {
      print(
          ' total cost with transportation is ${client.cost + transportationCost!} \$');
      transportation.transportPromoCode();
      if (transportation.promo == '1')
      {
        print(' Total cost with transportation by Promo code is ${(client.cost + transportationCost)*0.85} \$');
      }
    }
  } else {
    print('Sir ${vip.name}');
    rooms.enterRoomDataVip();
    rooms.foodSnacks();
    rooms.Days();
    vip.stayCost(rooms.roomType, rooms.snacks, rooms.days);
    if (transportType == '1') {
      print(
          ' Total cost with transportation is ${vip.cost + transportationCost!} \$');
      transportation.transportPromoCode();
      if (transportation.promo == '1')
      {
        print(' Total cost with transportation by Promo code is ${(vip.cost + transportationCost)*0.85} \$');
      }

    }
  }
  transportation.transportPayMethod();
  print('We wish you a happy time\n Enjoy! 😀');

}
