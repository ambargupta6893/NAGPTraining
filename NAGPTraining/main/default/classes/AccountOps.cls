/**
 * @description Demo class
 */
public with sharing class AccountOps {
    /**
     * @description setDefaultDescription
     * @param AccountInput
     * @return AccountOutput
     */
    /*private AccountOps(){
        //..
    }*/
    
    public Account setDefaultDescription(Account acc){
        // if statement must use braces
        if(acc.Description == null){
          acc.Description = 'Please provide a Description';  
        } 
        //else return acc;
        
        //Avoid DML statements inside Loops
        /*for(Integer i= 0;i<100;i++){
            update acc;
        }*/
        if(acc.getSobjectType().getDescribe().isAccessible()){
            //Avoid DML statements inside loops
            if (Schema.sObjectType.Account.fields.Description.isUpdateable()) {
            update acc;
            }
        }
        return acc;
    }
}