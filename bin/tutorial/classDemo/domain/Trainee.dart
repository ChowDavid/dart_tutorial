import 'Staff.dart';

class Trainee extends Staff{
  Trainee(String name) : super(name);
  Trainee.withDetail({String name, DateTime dob, double package}) : super.withDetail(name:name,dob:dob,package:package, role:Role.Trainee);


}