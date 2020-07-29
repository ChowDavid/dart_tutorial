import 'Staff.dart';

class Developer extends Staff{
  Developer(String name) : super(name);
  Developer.withDetail({String name, DateTime dob, double package}) : super.withDetail(name:name,dob:dob,package:package, role:Role.Developer);

  @override
  void working(){
    print('My name is $name. I am a Developer. I am very busy. Please talk to my Manager');
  }

}