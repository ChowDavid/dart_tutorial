
import 'Staff.dart';

class Manager extends Staff{
  Manager(String name) : super(name);
  Manager.withDetail({String name, DateTime dob, double package}) : super.withDetail(name:name,dob:dob,package:package, role:Role.Manager);

  @override
  void working(){
    super.working();
    print('Sorry, I have a lot of meeting. Please talk to the developer directly.');
  }

}