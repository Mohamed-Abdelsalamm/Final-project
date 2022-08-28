import 'dart:io';
class User
{  String? name;
   String? address;
   String? gender;
   String? age;
   String? phoneNumber;
   String? roomType;
   String? snacks;
  num cost=0;
  num days=1;

  User({this.name, this.address, this.gender, this.age, this.phoneNumber});

  void stayCost(roomType,snacks,days){
    if(roomType == '1')
    {
      cost += 300 ;
    }
    else if (roomType == '2' )
    {
      cost += 550 ;
    }
    else
    {
      cost += 750 ;
    }
    if(snacks=='1')
    {
      cost += 100;
    }
    else
    {
      cost +=0;
    }
  }

  void Days() {
    print('How many days will you spend ?');
    String? H = stdin.readLineSync();
    days=int.parse(H!);
  }

  void enterClientData() {
    print('Enter your name');
    name = stdin.readLineSync()!;
    print('Enter your address');
    address = stdin.readLineSync()!;
    print('Enter your age ');
    age = stdin.readLineSync()!;
    print('Enter your gender');
    gender = stdin.readLineSync()!;
    print('Enter your phone number');
    phoneNumber = stdin.readLineSync()!;
  }

  void print_all() {
    print( 'Client name is ' + name!);
    print( 'Client address is ' + address!);
    print( 'Client aga is ' + age.toString());
    print('Client gender is ' + gender!);
    print( 'Client phone number is ' + phoneNumber!);
  }
}



