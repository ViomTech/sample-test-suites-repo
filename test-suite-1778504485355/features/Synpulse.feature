@synpulse
Feature: Synpulse feature
 
Scenario: End to End Flow
And enter "mc_rm" into field on the right of "User ID"
And enter "mcrm2026" into field on the right of "Password"
And click "SIGN IN"
And wait 4 secs
And click "Search" with exact phrase
And click "RESET" with exact phrase
And click "Search All Fields"
And type "{clientname}"
And click "{el:btn_SelectClient}"
And click in web table "{el:tbl_portfolio}" where column 4 contains "Advisory" then column 10
And click "{el:btn_Toggler}"
And click "Orders" with exact phrase
And click "Place Single Order"
And click "Securities Order"
And wait 2 secs
And click "{el:btn_Search1}"
And click "Search All Fields" with exact phrase
And type "{code}"
And click "{el:btn_SelectOrder}"
And wait 2 secs
And click "{el:txt_Qty}"
And enter "{quantity}"
#enter "{quantity}" into field on the right of "Quantity"
And select "Cash_Account_15" from list "Account"
And select "In Amount" from list "Negotiation"
And click on the element to the right of "Negotiated Commission (Amount)" with exact phrase
#click "{el:txt_NegotiatedAmt}"
And type "{taxes}"
And click "Negotiated Commission"
And read value from "{el:txt_Price}" and save it as "price"
And print value of "{price}"
And read value from "{el:txt_NetAmount}" and save it as "netAmount"
And print value of "{netAmount}"
And check that variable {netAmount} is equals to "254,150.00"
And click "CHECK" with exact phrase
And click "SAVE" with exact phrase
And click "VIEW ORDER BLOTTER" with exact phrase
And click "{el:btn_All}"
And click "APPLY"