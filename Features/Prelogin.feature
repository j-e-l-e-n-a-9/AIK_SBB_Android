Feature: Prelogin

  @Prelogin_SBB_[MOB]
  Scenario Outline: Prelogin_SBB_[MOB]

    Given Open Application
    And Click on element by xPath "//androidx.compose.ui.platform.ComposeView/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View[2]"
    And Assert element by text "Kreiraj token za prijavu na eBanking"
    And Assert element by text "Kreiraj token za autorizaciju plaćanja"
    And Assert element by text "Aktivacija tokena"
    And Click on element by text "Kreiraj token za prijavu na eBanking"
    #TODO: staviti ako je potrebno da se pojavi numericka tastatura
    #Klik na Kreiraj token
    And Click on element by xPath "//android.widget.EditText/android.view.View[1]"
    And Enter PIN for user "<rowindex>"
    And Press done button
    And Assert element by contains text "Unesite jednokratni kod"
    #Back button
    And Click on element by xPath "//androidx.compose.ui.platform.ComposeView/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View"
    #Opet klik na kreiraj token
    And Click on element by text "Kreiraj token za prijavu na eBanking"
    And Click on element by xPath "//android.widget.EditText/android.view.View[1]"
    And Enter PIN for user "<rowindex>"
    And Click on element by text "Potvrdi"
    And Click on element by text "Završeno"
    And Assert element by contains text "Izaberite opciju za aktivaciju tokena"

    #LOGIN
    #And Click on element by xPath "//android.widget.EditText/android.view.View[1]"
    #And Enter PIN for user "<rowindex>"
    #And Wait for login page to load

    Examples:
    | rowindex |
    |        1 |