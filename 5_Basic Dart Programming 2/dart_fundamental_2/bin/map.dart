//void main() async {
// var student = {};
// student['name'] = 'Raisal Fani';
// student['age'] = 21;
// print(student);

// print(student['name']);
// print(student['age']);
//}

void main() {
  var student = {'nama': 'Raisal Fani', 'age': 21};
  print(student);

  for (var key in student.keys) {
    print(student[key]);
  }
}
