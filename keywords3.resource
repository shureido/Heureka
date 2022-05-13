*** Settings ***
Library    SeleniumLibrary
Library    String
Resource   locators3.resource

*** Keywords ***
Setup keyword
    Open Browser    https://www.heureka.sk    gc
    Maximize Browser Window

Select grilovanie a piknik
    [Arguments]    ${item}
    ${locator}    Format String    ${gril_piknik}     ${item}
    Wait Until Page Contains Element    ${locator}
    Click Element    ${locator}

Select grily
    [Arguments]    ${item}
    ${locator}    Format String    ${grily}     ${item}
    Wait Until Page Contains Element    ${locator}
    Click Element    ${locator}

Select rozpatie
    [Arguments]    ${item}
    ${locator}    Format String    ${cena_rozpatie}     ${item}
    Wait Until Page Contains Element    ${locator}
    Click Element    ${locator}

Select gril1
    [Arguments]    ${item}
    ${locator}    Format String    ${gril1}     ${item}
    Wait Until Page Contains Element    ${locator}
    Sleep    3s
    Click Element    ${locator}

Select buy
    [Arguments]    ${item}
    ${locator}    Format String    ${buy1}      ${item}
    Wait Until Page Contains Element    ${locator}
    Sleep    3s
    Click Element    ${locator}
    Sleep    3s

Select continue
    [Arguments]    ${item}
    ${locator}    Format String    ${pokracovat}     ${item}
    Wait Until Page Contains Element    ${locator}
    Click Element    ${locator}
    Go Back
    Sleep    3s

Select gril2
    [Arguments]    ${item}
    ${locator}    Format String    ${gril2}     ${item}
    Sleep    3s
    Wait Until Page Contains Element    ${locator}
    Sleep    3s
    Click Element    ${locator}

Select buy2
    [Arguments]    ${item}
    ${locator}    Format String    ${buy1}      ${item}
    Wait Until Page Contains Element    ${locator}
    Sleep    3s
    Click Element    ${locator}
    Sleep    5s

Select gril3
    [Arguments]    ${item}
    ${locator}    Format String    ${gril3}     ${item}
    Sleep    3s
    Wait Until Page Contains Element    ${locator}
    Sleep    3s
    Click Element    ${locator}
    Sleep    3s

Select buy3
    [Arguments]    ${item}
    ${locator}    Format String    ${buy1}      ${item}
    Wait Until Page Contains Element    ${locator}
    Sleep    3s
    Click Element    ${locator}
    Sleep    5s

Select go tu cart
    [Arguments]    ${item}
    ${locator}    Format String    ${go_card}      ${item}
    Wait Until Page Contains Element    ${locator}
    Click Element    ${locator}
    Sleep    3s

Item With Index Should Contain Icon
    [Arguments]    ${index}
    ${locator}    Format String   ${item_boxes}    [${index}]
    Wait Until Page Contains Element    ${locator}
    Wait Until Page Contains    3

Select price1
    [Arguments]    ${item}
    ${locator}    Format String     ${price1}      ${item}
    Wait Until Page Contains Element    ${locator}
    Wait Until Page Contains    64,90
    Sleep    3s
    Click Element    ${locator}
    Sleep    5s

Select price2
    [Arguments]    ${item}
    ${locator}    Format String     ${price2}      ${item}
    Wait Until Page Contains Element    ${locator}
    Wait Until Page Contains    59,90
    Sleep    3s
    Click Element    ${locator}
    Sleep    5s

Select price3
    [Arguments]    ${item}
    ${locator}    Format String     ${price3}      ${item}
    Wait Until Page Contains Element    ${locator}
    Wait Until Page Contains    72,21
    Sleep    3s
    Click Element    ${locator}
    Sleep    5s

Select off
    Click Element    xpath=//*[@id="snippet--cart-content-data"]/div[3]/div[1]/div/div[1]/a/svg
    Sleep    3s

Item With Index Should Contain Icon1
    [Arguments]    ${index}
    ${locator}    Format String   ${item_boxes}    [${index}]
    Wait Until Page Contains Element    ${locator}
    Wait Until Page Contains    2

Item With Index Should Contain Icon2
    [Arguments]    ${index}
    ${locator}    Format String   ${item_boxes}    [${index}]
    Wait Until Page Contains Element    ${locator}
    Wait Until Page Contains    0

