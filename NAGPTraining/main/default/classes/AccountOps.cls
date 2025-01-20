public with sharing class AccountOps {
    private AccountOps(){
        //..
    }
    
    public static Account setDefaultDescription(Account acc){
        // if statement must use braces
        if(acc.Description == null) acc.Description = 'Please provide a Description';
        else return acc;
        
        //Avoid DML statements inside Loops
        for(Integer i= 0;i<100;i++){
            update acc;
        }
        
        return acc;
    }
}