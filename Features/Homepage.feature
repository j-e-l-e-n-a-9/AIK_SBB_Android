Feature:

  @Homepage_Bottom_nav_[MOB_ANDROID]
  Scenario Outline: Homepage_Bottom_nav_[MOB_ANDROID]
#Koraci: 1,2,3,4,6  todo 5. korak
    Given Open Application
    And Click on element by id "eu.newfrontier.iBanking.mobile.AIK.Retail.uat:id/pin_view"
    And Enter PIN for user "<rowindex>"
    And Wait for login page to load

    And Check if all tabs are displayed and tab "Početna" is selected
    #tab - Placanja
    And Choose option "Plaćanja" from bottom menu
    And Bank logo still displayed
    And Page title is "Plaćanja"
    And Check if all tabs are displayed and tab "Plaćanja" is selected
    #tab - Ponude
    And Choose option "Ponude" from bottom menu
    And Bank logo still displayed
    And Page title is "Ponude po meri"
    And Check if all tabs are displayed and tab "Ponude" is selected
    #tab - Kartice
    And Choose option "Kartice" from bottom menu
    And Bank logo still displayed
    And Page title is "Kartice"
    And Check if all tabs are displayed and tab "Kartice" is selected
    #tab - Meni
    And Choose option "Meni" from bottom menu
    And Bank logo still displayed
    And Page title is "Meni"
    And Check if all tabs are displayed and tab "Meni" is selected
    #tab - Pocetna
    And Choose option "Početna" from bottom menu
    And Bank logo still displayed
    And Check if all tabs are displayed and tab "Početna" is selected



    Examples:
      | rowindex |
      |        1 |

#TODO TOP NAVIGATION KORACI 7-15

  @Homepage_Domestic_Account_Display_[ANDROID_MOB]
  Scenario Outline: Homepage_Domestic_Account_Display_[ANDROID_MOB]
#Koraci 16, 17
    Given Open Application
    And Click on element by id "eu.newfrontier.iBanking.mobile.AIK.Retail.uat:id/pin_view"
    And Enter PIN for user "<rowindex>"
    And Wait for login page to load


    And Assert element by contains id "account_name" has text from excel "<rowindex>" columnName "nazivRacunaRSD"
    And Check if account data "RSD" is correct for user "<rowindex>"
    #todo:  18,19,20 - blocked
    #21, 22, 68 -> Accounts.feature uradjeno
    #todo: 23 i 67 blocked








    Examples:
      | rowindex |
      |        1 |



  @Homepage_Foreign_Account_Display_[ANDROID_MOB]
  Scenario Outline: Homepage_Foreign_Account_Display_[ANDROID_MOB]
   #Koraci 24, 25
    Given Open Application
    And Click on element by id "eu.newfrontier.iBanking.mobile.AIK.Retail.uat:id/pin_view"
    And Enter PIN for user "<rowindex>"
    And Wait for login page to load


    And Assert element by contains id "account_name" has text from excel "<rowindex>" columnName "nazivRacunaEUR"
    And Check if account data "EUR" is correct for user "<rowindex>"
  #todo: 26, 27, 28 blocked
    #29, 30 ->accounts.feature uradjeno
    #todo: 31, 32, 33, 34 - blocked



    Examples:
      | rowindex |
      |        1 |


  @Homepage_Savings_Account_Display_[ANDROID_MOB]
  Scenario Outline: Homepage_Savings_Account_Display_[ANDROID_MOB]
#Koraci 45, 46, 47
    Given Open Application
    And Click on element by id "eu.newfrontier.iBanking.mobile.AIK.Retail.uat:id/pin_view"
    And Enter PIN for user "<rowindex>"
    And Wait for login page to load


    And Assert element by contains id "account_name" has text from excel "<rowindex>" columnName "nazivRacunaEUR"
    And Check if account data "EUR" is correct for user "<rowindex>"


    Examples:
      | rowindex |
      |        1 |

  @Homepage_Domestic_Account-Quick_actions_[ANDROID_MOB]
  Scenario Outline: Homepage_Domestic_Account-Quick_actions_[ANDROID_MOB]
#Korak 52
    Given Open Application
    And Click on element by id "eu.newfrontier.iBanking.mobile.AIK.Retail.uat:id/pin_view"
    And Enter PIN for user "<rowindex>"
    And Wait for login page to load


    And Assert element by contains id "account_name" has text from excel "<rowindex>" columnName "nazivRacunaRSD"
    And Check if account data "RSD" is correct for user "<rowindex>"

    #na plus i pregled opcija
    And Click on element contains id "btn_context"
    # TODO DA LI JE OVO UOPSTE QUICK ACTIONS? -ubacila sam opcije koje trneutno postoje, ali se korak 52 ne pokala u potpunosti sa postojecim opcijama
    And Verify options for account



    Examples:
      | rowindex |
      |        1 |

  @Homepage_Foreign_Account-Quick_actions_[ANDROID_MOB]
  Scenario Outline: Homepage_Foreign_Account-Quick_actions_[ANDROID_MOB]
#Korak 54
    Given Open Application
    And Click on element by id "eu.newfrontier.iBanking.mobile.AIK.Retail.uat:id/pin_view"
    And Enter PIN for user "<rowindex>"
    And Wait for login page to load


    And Assert element by contains id "account_name" has text from excel "<rowindex>" columnName "nazivRacunaEUR"
    And Check if account data "EUR" is correct for user "<rowindex>"

    #na plus i pregled opcija
    And Click on element contains id "btn_context"
    # TODO DA LI JE OVO UOPSTE QUICK ACTIONS? -ubacila sam opcije koje trneutno postoje, ali se korak ne poklapa u potpunosti sa postojecim opcijama
    And Verify options for account



    Examples:
      | rowindex |
      |        1 |

  @Homepage_Foreign_Account-Quick_actions_[ANDROID_MOB]
  Scenario Outline: Homepage_Foreign_Account-Quick_actions_[ANDROID_MOB]
#Korak 59
    Given Open Application
    And Click on element by id "eu.newfrontier.iBanking.mobile.AIK.Retail.uat:id/pin_view"
    And Enter PIN for user "<rowindex>"
    And Wait for login page to load


    And Assert element by contains id "account_name" has text from excel "<rowindex>" columnName "nazivRacunaEUR"
    And Check if account data "EUR" is correct for user "<rowindex>"

    And Click on element contains id "btn_context"
    # TODO DA LI JE OVO UOPSTE QUICK ACTIONS? -ubacila sam opcije koje trneutno postoje, ali se korak 59 ne pokala u potpunosti sa postojecim opcijama
    And Verify options for account



    Examples:
      | rowindex |
      |        1 |
    
    
    
    @Homepage_Domestic_Account-Transactions_[Android_MOB]
    Scenario Outline: Homepage_Domestic_Account-Transactions_[Android_MOB]

      Given Open Application
      And Click on element by id "eu.newfrontier.iBanking.mobile.AIK.Retail.uat:id/pin_view"
      And Enter PIN for user "<rowindex>"
      And Wait for login page to load


      And Assert element by contains id "account_name" has text from excel "<rowindex>" columnName "nazivRacunaRSD"
      And Check if account data "RSD" is correct for user "<rowindex>"
      
      And Scroll down until element with text "Poslednje transakcije" is in view
      And Verify last transactions default section
      And Open full transaction history

  



      Examples:
        | rowindex |
        |        1 |