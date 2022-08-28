import 'users.dart';

class Client extends User
{


  Client(String? name, String? address, String? gender, String? age, String? phoneNumber) :
        super(name: name! , address: address! , gender: gender , age: age , phoneNumber: phoneNumber);



  @override
  void stayCost(roomType,snacks,days){
    super.stayCost(roomType, snacks, days);
    print(' your booking cost ${cost*days}\$ for $days days\n ');
    cost*=days;
  }
}