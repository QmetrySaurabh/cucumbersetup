Feature: web TS

@author:saurabhpisal
@description:asdf


Scenario Outline: creditand Debit scenario
	
   Given get "https://qas.qmetry.com/bank"
   When wait until "text.txtusername" to be visible
   And clear "text.txtusername"
   And wait until "text.txtusername" to be visible
   And sendKeys "Bob" into "text.txtusername"
   And wait until "password.txtpassword" to be visible
   And clear "password.txtpassword"
   And wait until "password.txtpassword" to be visible
   And sendEncryptedKeys "Qm9i" into "password.txtpassword"
   Then verify "button.btnlogin" is present
   When wait until "button.btnlogin" to be visible
   And click on "button.btnlogin"
   Then wait until "button.btnlogin" to be visible
   Then drag "button.btnlogin" and drop on "xpath=//input" perform
   When wait until "number.enter.amount.for.credit" to be visible
   And clear "number.enter.amount.for.credit"
   And wait until "number.enter.amount.for.credit" to be visible
   And sendKeys "${credit}" into "number.enter.amount.for.credit"
   And wait until "button.credit" to be visible
   And click on "button.credit"
   And wait until "number.enter.amount.for.debit" to be visible
   And clear "number.enter.amount.for.debit"
   And wait until "number.enter.amount.for.debit" to be visible
   And sendKeys "${debit}" into "number.enter.amount.for.debit"
   And wait until "button.debit" to be visible
   And click on "button.debit"
   And wait until "button.logout" to be visible
   And click on "button.logout"
   

Examples:
    |credit|debit|
    |2000|200|
    |3000|30|
