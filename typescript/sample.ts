let empId:number=1001;
console.log(empId);

let products:Array<string>=["apple","mango","orange"];
for(let i=0;i<products.length;i++){
    console.log(products[i]);
}

let sqrNumber:number=5;
var total ;
function squareRoot(sqrNumber):void{
 total=sqrNumber*sqrNumber;
}
squareRoot(sqrNumber);
console.log(total);
let salary:Array<number>=[12,13,14,12,15];
let TotalSalary=0;

function totalSalary(salary){
for(let i=0;i<salary.length;i++){
TotalSalary=TotalSalary+salary[i];
}
console.log(TotalSalary);
}
totalSalary(salary);

let empCode: any = 111;   
let employeeCode = <number> empCode;   
console.log(typeof(employeeCode));

var Student:{   
    name: string;   
    studentId: number;   
}  

Student={
    name:"Diwakar",
    studentId:123
}

console.log(Student);

let empTuple = ["College", 101, "Abhishek"];        
function display(tuple_values:any[]) {    
   for(let i = 0;i<empTuple.length;i++) {     
      console.log(empTuple[i]);    
   }      
}    
   
display(empTuple); 

let arr : string[]|number[];
let i:number;
arr=[1,2,3,4];
console.log(arr);
arr=["College","University","Deemed"];
console.log(arr);
console.log(typeof(arr));

type Pet = 'cat' | 'dog' | 'Rabbit';  
let pet: Pet;  
if(pet = 'cat'){  
    console.log("Correct");  
};  
if(pet = 'dog')  
{  
    console.log("compilation error");  
};  