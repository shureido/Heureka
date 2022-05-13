***Settings***
Resource    keywords3.resource
Resource    pomocky.resource
Test Setup    Setup Keyword
Test Teardown     Close Browser


*** Test Cases ***
TC1
    [Tags]     run1
    Select grilovanie a piknik      Grilovanie a piknik
    Select grily    Grily
    Select rozpatie    Cena medzi 50-90
    Select gril1    Fieldmann FZG 1004
    Select buy    Kupit
    Select continue    Pokracovat v nakupe
    Select gril2    Tefal GC241D38
    Select buy2    Kupit
    Select continue    Pokracovat v nakupe
    Select gril3    Tefal GC24
    Select buy3    Kupit
    Select go tu cart    Prejst do kosika
    Item With Index Should Contain Icon    3
    Select price1    cena je v rozpati
    Select price2    cena je v rozpati
    Select price3    cena je v rozpati
    Sleep    5s
    Click Element    xpath=//*[@id="snippet--cart-content-data"]/div[3]/div[1]/div/div[1]/a
    Sleep    5s
    Click Element    xpath=//*[@id="snippet--cart-content-data"]/div[3]/div[1]/div/div[1]/section/div/footer/a
    Sleep    3s
    Item With Index Should Contain Icon1   2
    Click Element    xpath=//*[@id="snippet--cart-content-data"]/div[3]/div/div/div[1]/a
    Sleep    5s
    Click Element    xpath=//*[@id="snippet--cart-content-data"]/div[3]/div[1]/div/div[1]/section/div/footer/a
    Click Element    xpath=//*[@id="snippet--cart-content-data"]/div[3]/div/div/div[1]/a
    Sleep    5s
    Click Element    xpath=//*[@id="snippet--cart-content-data"]/div[3]/div[1]/div/div[1]/section/div/footer/a
    Sleep    3s
    Item With Index Should Contain Icon2   0
    Wait Until Page Contains    Váš košík zíva prázdnotou...























