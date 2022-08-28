import 'dart:io';

class Rooms
{
  late String roomType;
  late String snacks;
  int cost=0;
  int days=1;

  void enterRoomDataNormal() {
    print('Enter 1 for single room\n 300\$ per night\n --------------------------- ');
    print('Enter 2 for double room\n 550\$ per night\n --------------------------- ');
    print('Enter 3 for triple room\n 750\$ per night\n --------------------------- ');
    roomType = stdin.readLineSync()!;
    if      (roomType == '1')
      {
        print(' Single room costs 300\$ per night \n --------------------------- ');
      }
    else if (roomType == '2')
      {
        print(' double room costs 550\$ per night\n --------------------------- ');
      }
    else
      {
        print(' triple room costs 750\$ per night \n --------------------------- ');
      }
  }

  void enterRoomDataVip() {
    print('Enter 1 for single room\n 300\$ per night  (15% off Vip) \n --------------------------- ');
    print('Enter 2 for double room\n 550\$ per night  (15% off Vip) \n --------------------------- ');
    print('Enter 3 for triple room\n 750\$ per night  (15% off Vip) \n --------------------------- ');
    roomType = stdin.readLineSync()!;
    if      (roomType == '1')
    {
      print(' Single room costs 300\$ per night (15% off Vip)\n --------------------------- ');
    }
    else if (roomType == '2')
    {
      print(' double room costs 550\$ per night (15% off Vip)\n --------------------------- ');
    }
    else
    {
      print(' triple room costs 750\$ per night (15% off Vip)\n --------------------------- ');
    }
  }

  void foodSnacks(){
    print('Please Choice whit snacks or with out\n --------------------------- ');
    print('Enter 1 for room with snacks\n Additional cost 100\$ per night');
    print('Enter 2 for room with out snacks');
    snacks = stdin.readLineSync()!;
    if      (snacks == '1')
    {
      print('---------------------------------------------------');
    }
    else
    {
      print('---------------------------------------------------');
    }
  }

  void Days() {
    print('How many days will you spend ?');
    String? H = stdin.readLineSync();
    days=int.parse(H!);
  }
}