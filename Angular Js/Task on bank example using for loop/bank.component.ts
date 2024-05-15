import { Component } from '@angular/core';
import {bank} from './bank.model';
import { FormsModule } from '@angular/forms';

@Component({
  selector: 'app-bank',
  standalone: true,
  imports: [FormsModule],
  templateUrl: './bank.component.html',
  styleUrl: './bank.component.css'
})
export class BankComponent {
categoryInput:String="typeOfAcc"

accDetails:bank[]=[{accHolderName:"Diwakar",accNo:1001,typeOfAcc:"SavingsAccount",amount:1000},
{accHolderName:"Diwakar",accNo:1001,typeOfAcc:"BusinessAccount",amount:5000},
{accHolderName:"Ashok",accNo:1002,typeOfAcc:"BusinessAccount",amount:8000},
{accHolderName:"Hari",accNo:1003,typeOfAcc:"SavingsAccount",amount:500},
{accHolderName:"Karthik",accNo:1004,typeOfAcc:"SalaryAccount",amount:6000},
{accHolderName:"Arvind",accNo:1005,typeOfAcc:"SalaryAccount",amount:1000},
{accHolderName:"Gowtham",accNo:1006,typeOfAcc:"SavingsAccount",amount:800},
{accHolderName:"Ajay",accNo:1007,typeOfAcc:"BusinessAccount",amount:1200},
{accHolderName:"Siva",accNo:1008,typeOfAcc:"SalaryAccount",amount:9000},
{accHolderName:"Harithrisha",accNo:1009,typeOfAcc:"SavingsAccount",amount:200},
{accHolderName:"Anusha",accNo:1010,typeOfAcc:"BusinessAccount",amount:10000}

]
}
