var empId = 1001;
console.log(empId);
var products = ["apple", "mango", "orange"];
for (var i_1 = 0; i_1 < products.length; i_1++) {
    console.log(products[i_1]);
}
var sqrNumber = 5;
var total;
function squareRoot(sqrNumber) {
    total = sqrNumber * sqrNumber;
}
squareRoot(sqrNumber);
console.log(total);
var salary = [12, 13, 14, 12, 15];
var TotalSalary = 0;
function totalSalary(salary) {
    for (var i_2 = 0; i_2 < salary.length; i_2++) {
        TotalSalary = TotalSalary + salary[i_2];
    }
    console.log(TotalSalary);
}
totalSalary(salary);
var empCode = 111;
var employeeCode = empCode;
console.log(typeof (employeeCode));
var Student;
Student = {
    name: "Diwakar",
    studentId: 123
};
console.log(Student);
var empTuple = ["College", 101, "Abhishek"];
function display(tuple_values) {
    for (var i_3 = 0; i_3 < empTuple.length; i_3++) {
        console.log(empTuple[i_3]);
    }
}
display(empTuple);
var arr;
var i;
arr = [1, 2, 3, 4];
console.log(arr);
arr = ["College", "University", "Deemed"];
console.log(arr);
console.log(typeof (arr));
var pet;
if (pet = 'cat') {
    console.log("Correct");
}
;
if (pet = 'dog') {
    console.log("compilation error");
}
;
