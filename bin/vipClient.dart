import 'users.dart';

class VipClient extends User
{
  VipClient(String? name, String? address, String? gender, String? age, String? phoneNumber) :
        super(name: name , address: address , gender: gender , age: age , phoneNumber: phoneNumber);


  @override
  void stayCost(roomType,snacks,days){
      super.stayCost(roomType, snacks, days);
      print(' your booking cost ${cost*days*0.85}\$ for $days days after off\n ');
      cost= cost * days *0.85;
  }

}
