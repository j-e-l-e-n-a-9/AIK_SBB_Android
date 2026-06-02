Feature: Accounts


@Accounts-Domestic_Accounts-Change_name_of_account_[MOB]
Scenario Outline: Accounts-Domestic_Accounts-Change_name_of_account_[MOB]

  Given Open Application
  And Click on element by id "eu.newfrontier.iBanking.mobile.AIK.Retail.uat:id/pin_view"
  And Enter PIN for user "<rowindex>"
  And Wait for login page to load
  And Click on element contains id "btn_context"
  And Click on element by text "Izmeni naziv računa"
  And Wait for element by text "Odustani"
  And Enter text "novi_naziv_racuna" in element contains id "compat_edit_text"
  #Odustajanje
  And Click on element by text "Odustani"
  And Wait for element by text "Poslednje transakcije"
  And Assert element by contains id "account_name" has text from excel "<rowindex>" columnName "nazivRacunaRSD"
  #Menjanje naziva
  And Click on element contains id "btn_context"
  And Click on element by text "Izmeni naziv računa"
  And Enter text "novi_naziv_racuna" in element contains id "compat_edit_text"
  And Click on element by text "Potvrdi"
  And Wait for element by text "Uspešno"
  And Assert element by text "Vaš račun je uspešno preimenovan"
  And Click on element by text "U redu"
  And Assert element by contains id "account_name" has text "novi_naziv_racuna"
  And Choose option "Meni" from bottom menu
  #Provera u listi racuna
  And Click on element by text "Računi"
  And Wait for element by text "novi_naziv_racuna"
  And Assert element by contains id "accounts_list_item_name" has text "novi_naziv_racuna" with index "1"
  And Choose option "Početna" from bottom menu
  #Vracanje pocetnog naziva racuna
  And Click on more options
  And Click on element by text "Izmeni naziv računa"
  And Enter text in element contains id "compat_edit_text" from excel "<rowindex>" columnName "nazivRacunaRSD"
  And Click on element by text "Potvrdi"
  And Wait for element by text "Uspešno"
  And Assert element by text "Vaš račun je uspešno preimenovan"
  And Click on element by text "U redu"
  And Assert element by contains id "account_name" has text "Transakcioni račun"
  #provera u listi racuna
  And Choose option "Meni" from bottom menu
  And Click on element by text "Računi"
  And Wait for element by text "Transakcioni račun"
  And Assert element by contains id "accounts_list_item_name" has text "Transakcioni račun" with index "1"

  Examples:
    | rowindex |
    |        2 |



  @Accounts-Domestic_Accounts-Change_name_of_account_to_default_[MOB]
  Scenario Outline: Accounts-Domestic_Accounts-Change_name_of_account_to_default_[MOB]

    Given Open Application
    And Click on element by id "eu.newfrontier.iBanking.mobile.AIK.Retail.uat:id/pin_view"
    And Enter PIN for user "<rowindex>"
    And Wait for login page to load
    And Click on element contains id "btn_context"
    #And Click on more options
    And Click on element by text "Izmeni naziv računa"
    And Enter text "novi_naziv_racuna" in element contains id "compat_edit_text"
    And Wait for element by text "Odustani"
    And Click on element by text "Potvrdi"
    And Wait for element by text "Uspešno"
    And Assert element by text "Vaš račun je uspešno preimenovan"
    And Click on element by text "U redu"
    And Assert element by contains id "account_name" has text "novi_naziv_racuna"
    #Provera u listi racuna
    And Choose option "Meni" from bottom menu
    And Click on element by text "Računi"
    And Wait for element by text "novi_naziv_racuna"
    And Assert element by contains id "accounts_list_item_name" has text "novi_naziv_racuna" with index "1"
    And Choose option "Početna" from bottom menu
    #Vracanje pocetnog naziva racuna
    And Wait for element contains id "btn_context" to appear
    And Click on more options
    And Click on element by text "Izmeni naziv računa"
    And Click on element by text "Potvrdi"
    And Wait for element by text "Uspešno"
    And Assert element by text "Vaš račun je uspešno preimenovan"
    And Click on element by text "U redu"
    And Assert element by contains id "account_name" has text from excel "<rowindex>" columnName "nazivRacunaRSD"
    #provera u listi racuna
    And Choose option "Meni" from bottom menu
    And Click on element by text "Računi"
    And Wait for element by text "Transakcioni račun"
    And Assert element by contains id "accounts_list_item_name" has text "Transakcioni račun" with index "1"


    Examples:
      | rowindex |
      |        2 |

  @Accounts-Foreign_Accounts-Change_name_of_account_to_default_[MOB]
  Scenario Outline: Accounts-Foreign_Accounts-Change_name_of_account_to_default_[MOB]

    Given Open Application
    And Click on element by id "eu.newfrontier.iBanking.mobile.AIK.Retail.uat:id/pin_view"
    And Enter PIN for user "<rowindex>"
    And Wait for login page to load
    And Swipe to card until text "brojRacunaEUR" is visible for user "<rowindex>"
    And Click on element contains id "btn_context"
    #And Click on more options
    And Click on element by text "Izmeni naziv računa"
    And Enter text "novi_naziv_racuna" in element contains id "compat_edit_text"
    And Wait for element by text "Odustani"
    And Click on element by text "Potvrdi"
    And Wait for element by text "Uspešno"
    And Assert element by text "Vaš račun je uspešno preimenovan"
    And Click on element by text "U redu"
    And Assert element by contains id "account_name" has text "novi_naziv_racuna"
    #Provera u listi racuna
    And Choose option "Meni" from bottom menu
    And Click on element by text "Računi"
    And Wait for element by text "novi_naziv_racuna"
    And Assert element by contains id "accounts_list_item_name" has text "novi_naziv_racuna" with index "3"
    And Choose option "Početna" from bottom menu
    #Vracanje pocetnog naziva racuna
    And Wait for element contains id "btn_context" to appear
    And Swipe to card until text "brojRacunaEUR" is visible for user "<rowindex>"
    And Click on more options
    And Click on element by text "Izmeni naziv računa"
    And Click on element by text "Potvrdi"
    And Wait for element by text "Uspešno"
    And Assert element by text "Vaš račun je uspešno preimenovan"
    And Click on element by text "U redu"
    And Assert element by contains id "account_name" has text from excel "<rowindex>" columnName "nazivRacunaEUR"
    #provera u listi racuna
    And Choose option "Meni" from bottom menu
    And Click on element by text "Računi"
    #TODO Wait da bude po naslovu stranice?
    And Wait for element by text "Transakcioni račun"
    And Assert element by contains id "accounts_list_item_name" has text from excel "nazivRacunaEUR" "<rowindex>" with index "3"


    Examples:
      | rowindex |
      |        1 |



  @Accounts-Foreign_Accounts-Change_name_of_account_[MOB]
  Scenario Outline: Accounts-Foreign_Accounts-Change_name_of_account_[MOB]

    Given Open Application
    And Click on element by id "eu.newfrontier.iBanking.mobile.AIK.Retail.uat:id/pin_view"
    And Enter PIN for user "<rowindex>"
    And Wait for login page to load

    And Swipe to card until text "brojRacunaEUR" is visible for user "<rowindex>"
    And Click on element contains id "btn_context"
    And Click on element by text "Izmeni naziv računa"
    And Wait for element by text "Odustani"
    And Enter text "novi_naziv_racuna" in element contains id "compat_edit_text"
  #Odustajanje
    And Click on element by text "Odustani"
    And Wait for element by text "Poslednje transakcije"
    And Assert element by contains id "account_name" has text from excel "<rowindex>" columnName "nazivRacunaEUR"

  #Menjanje naziva
    And Wait for element contains id "btn_context" to appear
    And Swipe to card until text "brojRacunaEUR" is visible for user "<rowindex>"
    And Click on element contains id "btn_context"
    And Click on element by text "Izmeni naziv računa"
    And Enter text "novi_naziv_racuna" in element contains id "compat_edit_text"
    And Click on element by text "Potvrdi"
    And Wait for element by text "Uspešno"
    And Assert element by text "Vaš račun je uspešno preimenovan"
    And Click on element by text "U redu"
    And Assert element by contains id "account_name" has text "novi_naziv_racuna"
    And Choose option "Meni" from bottom menu
  #Provera u listi racuna
    And Click on element by text "Računi"
    And Wait for element by text "novi_naziv_racuna"
    And Assert element by contains id "accounts_list_item_name" has text "novi_naziv_racuna" with index "3"
    And Choose option "Početna" from bottom menu
  #Vracanje pocetnog naziva racuna
    And Wait for element contains id "btn_context" to appear
    And Swipe to card until text "brojRacunaEUR" is visible for user "<rowindex>"
    And Click on more options
    And Click on element by text "Izmeni naziv računa"
    And Enter text in element contains id "compat_edit_text" from excel "<rowindex>" columnName "nazivRacunaEUR"
    And Click on element by text "Potvrdi"
    And Wait for element by text "Uspešno"
    And Assert element by text "Vaš račun je uspešno preimenovan"
    And Click on element by text "U redu"
    And Assert element by contains id "account_name" has text from excel "<rowindex>" columnName "nazivRacunaEUR"

  #provera u listi racuna
    And Choose option "Meni" from bottom menu
    And Click on element by text "Računi"
    And Wait for element by text "Transakcioni račun"
    And Assert element by contains id "accounts_list_item_name" has text from excel "nazivRacunaEUR" "<rowindex>" with index "3"


    Examples:
      | rowindex |
      |        1 |







