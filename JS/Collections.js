const employee = new Map([
    ['name', 'Aakash'],
    ['type', 'blog'],
    ['writer', 'Tapas Adhikary'],
  ]);

  console.log(employee);

  console.log(employee.get('name')); 
  
  const funMap = new Map();

funMap.set(360, 'My House Number'); // number as key
funMap.set(true, 'I write blogs!'); // boolean as key

let obj = {'name': 'tapas'}
funMap.set(obj, true); // object as key

console.log(funMap);

console.log(funMap.keys());

let Employeeset = new Set();
 
Employeeset.add(10);
Employeeset.add(20);

Employeeset.add(30).add(40).add(50);
 
console.log(Employeeset);