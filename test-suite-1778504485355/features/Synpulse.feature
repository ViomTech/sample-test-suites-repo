@synpulse
Feature: Synpulse feature
 
Scenario: End to End Flow
And click "{el:txt_UserID}"
And enter "{username}"
And click "{el:txt_Password}"
And enter "{password}"
And click "SIGN IN"
And wait 3 sec
And click "{el:btn_Search}"
#click "Search" with exact phrase
#click "RESET" with exact phrase
And click "{el:btn_Reset}"
And wait 3 sec
And click "Search All Fields"
And type "{clientname}"
And wait 2 sec
And click "{el:btn_SelectClient}"
And wait 10 sec
And click in web table "{el:tbl_portfolio}" where column 4 contains "Advisory" then column 10

@test
Scenario: try
And click "{el:btn_SelectPortfolio}"
And wait 2 sec
And click "{el:btn_Toggler}"
And wait 2 sec
And click "{el:drp_Orders}"
And click "Place Single Order"
And click "Securities Order"
And wait 3 sec
And click "{el:btn_Search1}"
And click "Search All Fields"
And type "{code}"
And click "{el:btn_SelectOrder}"
And wait 2 sec
And click "{el:txt_Qty}"
And enter "{quantity}"
#click "{el:drp_Account}"
#click "Cash_Account_15"
And select "Cash_Account_15" from list " - Please Select "
And wait 2 sec
#click "{el:drp_Negotiation}"
#wait 2 sec
#click "In Amount"
And select "In Amount" from list "No"
And wait 2 sec
And click on the element to the right of "Negotiated Commission (Amount)" with exact phrase
#click "{el:txt_NegotiatedAmt}"
And type "{taxes}"
And click "Negotiated Commission"
And read value from "{el:txt_Price}" and save it as "price"
And print value of "{price}"
And read value from "{el:txt_NetAmount}" and save it as "netAmount"
And print value of "{netAmount}"
And wait 2 sec
#check that variable {netAmount} is equals to "254,150.00HKD"
And click "{el:btn_Check}"
And click "{el:btn_Save}"
And click "VIEW ORDER BLOTTER"
And click "{el:btn_All}"
And click "{el:btn_Apply}"