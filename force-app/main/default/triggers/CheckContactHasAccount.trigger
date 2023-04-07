trigger CheckContactHasAccount on Contact (before delete) {
    for(Contact C : Trigger.Old){
        if(C.AccountId!=null){
            C.addError('Contact with account cannot be deleted.');
        }
    }
}