*** Settings ***
Library                         ExtendedSelenium2Library
Library                         String
Resource                        ../Keywords/AddToCart.robot
Resource                        ../Keywords/Women/T-shirts.robot
Resource                        ../Keywords/base.robot
Suite Setup                     Open Browser to "automationpractice.com" page
Suite Teardown                  close browser
*** Variables ***
${IN_SEARCH}                    id=search_query_top
${BTN_SEARCH}                   css=.button-search
*** Test Cases ***
Search for the Item - Sign In
    [Documentation]             Search for the Item
    click element               ${BTN_SIGN_IN}
    Login:
    click element               ${LNK_LOGO}
    input text                  ${IN_SEARCH}   T-shirt
    click element               ${BTN_SEARCH}
    element should be visible   xpath=//*[contains(text(),'has been found.')]
Search for the Item
    [Documentation]             Search for the Item without Signed In
    input text                  ${IN_SEARCH}   T-shirt
    click element               ${BTN_SEARCH}
    element should be visible   xpath=//*[contains(text(),'has been found.')]


