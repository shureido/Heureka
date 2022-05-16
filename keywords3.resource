*** Settings ***
Library    SeleniumLibrary
Library    String
Resource   locators3.resource

*** Keywords ***
Setup keyword
    Open Browser    https://www.heureka.sk    gc
    Set Window Size    1800    1000

Vyber grilovanie a piknik
    [Arguments]    ${item}
    ${locator}    Format String    ${gril_piknik}     ${item}
    Wait Until Page Contains Element    ${locator}
    Click Element    ${locator}

Vyber grily
    [Arguments]    ${item}
    ${locator}    Format String    ${grily}     ${item}
    Wait Until Page Contains Element    ${locator}
    Click Element    ${locator}

Vyber cenove rozpatie
    [Arguments]    ${item}
    ${locator}    Format String    ${cena_rozpatie}     ${item}
    Wait Until Page Contains Element    ${locator}
    Click Element    ${locator}

Vyber si gril1
    [Arguments]    ${item}
    ${locator}    Format String    ${gril1}     ${item}
    Wait Until Page Contains    Fieldmann FZG 1004
    Wait Until Page Contains Element    ${locator}
    Click Element    ${locator}

Zvol kupit na heureke
    [Arguments]    ${item}
    ${locator}    Format String    ${buy1}      ${item}
    Wait Until Page Contains Element    ${locator}
    Click Element    ${locator}

Zvol pokračovat v nakupe
    [Arguments]    ${item}
    ${locator}    Format String    ${pokracovat}     ${item}
    Wait Until Page Contains Element    ${locator}
    Click Element    ${locator}
    Go Back

Vyber si gril2
    [Arguments]    ${item}
    ${locator}    Format String    ${gril2}     ${item}
    Wait Until Page Contains    Tefal GC 205012
    Wait Until Page Contains Element    ${locator}
    Click Element    ${locator}

Vyber si gril3
    [Arguments]    ${item}
    ${locator}    Format String    ${gril3}     ${item}
    Wait Until Page Contains    Ariete Multi gril 3v1 1916
    Wait Until Page Contains Element    ${locator}
    Click Element    ${locator}

Select buy3
    [Arguments]    ${item}
    ${locator}    Format String    ${buy1}      ${item}
    Wait Until Page Contains Element    ${locator}
    Click Element    ${locator}

Select go tu cart
    [Arguments]    ${item}
    ${locator}    Format String    ${go_card}      ${item}
    Wait Until Page Contains Element    ${locator}
    Click Element    ${locator}
    Sleep    3s

Over počet v košiku
    [Arguments]    ${index}
    ${locator}    Format String   ${item_boxes}    [${index}]
    Wait Until Page Contains Element    ${locator}
    Wait Until Page Contains    3

Over cenu Fieldmann
    [Arguments]    ${item}
    ${locator}    Format String     ${price1}      ${item}
    Wait Until Page Contains Element    ${locator}
    Wait Until Page Contains    64,90
    Sleep    3s
    Click Element    ${locator}

Over cenu Tefal
    [Arguments]    ${item}
    ${locator}    Format String     ${price2}      ${item}
    Wait Until Page Contains Element    ${locator}
    Wait Until Page Contains    69,90
    Click Element    ${locator}

Over cenu Ariete
    [Arguments]    ${item}
    ${locator}    Format String     ${price3}      ${item}
    Wait Until Page Contains Element    ${locator}
    Wait Until Page Contains   55,90
    Click Element    ${locator}

Zmaž produkt
    [Arguments]    ${item}
    ${locator}    Format String    ${odstran}     ${item}
    Wait Until Page Contains Element    ${locator}
    Sleep    3s
    Click Element    ${locator}
    Sleep    3s

Zmaž produkt potvrdenie
    [Arguments]    ${item}
    ${locator}    Format String     ${odstran2}      ${item}
    Wait Until Page Contains Element    ${locator}
    Sleep    3s
    Click Element    ${locator}
    Sleep    3s

Over počet v košiku2
    [Arguments]    ${index}
    ${locator}    Format String   ${item_boxes}    [${index}]
    Wait Until Page Contains Element    ${locator}
    Wait Until Page Contains    2

Over počet v košiku0
    [Arguments]    ${index}
    ${locator}    Format String   ${item_boxes}    [${index}]
    Wait Until Page Contains Element    ${locator}
    Wait Until Page Contains    0

