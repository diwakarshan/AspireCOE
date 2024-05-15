export class bank{
    accHolderName:String;
    accNo:number;
    typeOfAcc:String;
    amount:number;
    
    constructor(accHolderName:String,
        accNo:number,
        typeOfAcc:String,
        amount:number){
            this.accHolderName=accHolderName;
            this.accNo=accNo;
            this.typeOfAcc=typeOfAcc;
            this.amount=amount;
    }
}