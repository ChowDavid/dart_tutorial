
enum Role {
  Developer,Manager,Trainee
}

abstract class Staff {

  static String workingHour()=>'9:00 to 17:00';



  String name;
  DateTime _dob;
  double _annualIncome;
  Role _role;//why it has problem??

  Staff(this.name);
  Staff.withDetail({this.name, DateTime dob, double package, Role role}){
    _dob = dob;
    _annualIncome = package;
    _role = role;
  }



  int get age{
    var thisYear = DateTime.now().year;
    var birthYear = _dob?.year;
    return thisYear-(birthYear ?? 0);
  }

  set dateOfBirth(DateTime dob){
    _dob=dob;
  }

  set annualIncome(double package){
    _annualIncome = package;
  }

  void paymentForMonth(){
    var pay=(_annualIncome??0)/52*4;
    print('Pay $name ${pay.toStringAsFixed(2)}');
  }

  void working(){
    print('My name is $name. What can I help you?');
  }
}