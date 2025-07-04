abstract class Person {
  final _name;
  final _id;
  final _phone;
  final _address;

  Person (this._name, this._id, this._phone, this._address);

  String get name => _name;
  int get id => _id;
  int get phone => _phone;
  String get address => _address;

  void personInfo();
  void personDoing();
}

class Student extends Person {
  final int studentId;
  final String fieldOFstudy;

  Student(super._name,super._id,super._phone,super._address,this.studentId,this.fieldOFstudy);
  Student.English(super._name,super._id,super._phone,super._address,this.studentId):fieldOFstudy='English literature';

  @override
  void personInfo() {
    print('name: $name, id: $id, phone: $phone, address: $address, student-id: $studentId, field-of-study: $fieldOFstudy');
  }
  @override
  void personDoing(){
    print('$name is Studying');
  }
}

enum Certificate {
  diploma,
  bachelor,
  master,
  phd,
}

class Teacher extends Person{
  final Certificate lastCertificate;
  final int salary;

  Teacher(super._name,super._id,super._phone,super._address,this.lastCertificate,this.salary);

  @override
  void personInfo(){
    print('name: $name, id: $id, phone: $phone, address: $address, last-certificate: ${lastCertificate.name}, salary: $salary');
  }
  @override
  void personDoing(){
    print('$name is Teaching');
  }
}

void main() {
  Student student = new Student('amir', 1001, 921, 'tehran', 1111, 'math');
  student.personInfo();
  student.personDoing();

  Teacher teacher = new Teacher('saeed', 1002, 918, 'delijan', Certificate.phd, 45000);
  teacher.personInfo();
  teacher.personDoing();
}