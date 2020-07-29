

import 'domain/Developer.dart';
import 'domain/Manager.dart';
import 'domain/Staff.dart';
import 'domain/Trainee.dart';

/// this demo show the class and use the package
///
void main(List<String> args){

  print('Working hours ${Staff.workingHour()}');
  print('Staff Roles ${Role.values}');

  Staff ken = Trainee('Ken');

  Staff david = Developer('David Chow');
  david.dateOfBirth =DateTime(2000);
  david.annualIncome = 107000;

  Staff robert = Developer('Robert')..dateOfBirth = DateTime(2000)..annualIncome=80000;

  Staff patrick = Manager.withDetail(name: 'Patrick', dob: DateTime(1960),package: 50000);


  print('-----------------------');
  print('Staff Ken ${ken.name}');
  print('Ken age ${ken.age}');
  ken.working();
  ken.paymentForMonth();

  print('-----------------------');
  print('Staff David ${david.name}');
  print('David age ${david.age}');
  david.working();
  david.paymentForMonth();
  print('-----------------------');
  print('Staff Robert ${robert.name}');
  print('Robert age ${robert.age}');
  robert.working();
  robert.paymentForMonth();
  print('-----------------------');
  print('Staff Patrick ${patrick.name}');
  print('Patrick age ${patrick.age}');
  patrick.working();
  patrick.paymentForMonth();

}