*** Settings ***
Library    SeleniumLibrary
Suite Teardown    Close Browser

*** Test Cases ***

Test open web
    Open Browser    https://www.amazon.com/    gc
    Wait Until Element Contains    xpath=//input[@id="twotabsearchtextbox"]

    Input Text      xpath=//input[@id="twotabsearchtextbox"]    Game of Thrones Season 1
    Click Element   xpath=//input[@id="nav-search-submit-button"]
    Wait Until Page Contains    Game of Thrones Season 1



 









#     Wait Until Page Contains    Game of Thrones Season 1
#     Close Browser