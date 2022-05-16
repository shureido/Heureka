***Settings***
Resource    keywords3.resource
Test Setup    Setup Keyword
Test Teardown     Close Browser


*** Test Cases ***
TC1
    Vyber grilovanie a piknik      Grilovanie a piknik
    Vyber grily    Grily
    Vyber cenove rozpatie    Cena medzi 50-90
    Vyber si gril1    Fieldmann FZG 1004
    Zvol kupit na heureke    Kupit vybrany gril
    Zvol pokračovat v nakupe    Pokracovat v nakupe
    Vyber si gril2    Tefal GC 205012
    Zvol kupit na heureke    Kupit vybrany gril
    Zvol pokračovat v nakupe    Pokracovat v nakupe
    Vyber si gril3    Ariete Multi gril 3v1 1916
    Zvol kupit na heureke    Kupit vybrany gril
    Select go tu cart    Prejst do kosika
    Over počet v košiku    3
    Over cenu Fieldmann   Cena medzi 50-90 OK
    Over cenu Tefal    Cena medzi 50-90 OK
    Over cenu Ariete    Cena medzi 50-90 OK
    Zmaž produkt    odstran z kosika
    Zmaž produkt potvrdenie    potvrd odstranenie z kosika
    Over počet v košiku2   2
    Zmaž produkt    odstran z kosika
    Zmaž produkt potvrdenie    potvrd odstranenie z kosika
    Zmaž produkt    odstran z kosika
    Zmaž produkt potvrdenie    potvrd odstranenie z kosika
    Over počet v košiku0   0
    Wait Until Page Contains    Váš košík zíva prázdnotou...























