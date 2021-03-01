*** Settings ***
Library                         ExtendedSelenium2Library
Library                         String
Resource                        ../../Keywords/Women/T-shirts.robot
Resource                        ../../Keywords/base.robot
Suite Setup                     Open Browser to "automationpractice.com" page
Suite Teardown                  close browser
*** Variables ***

*** Test Cases ***
Buy an Item - login later
    [Documentation]             User first choose item to buy and then sign in
    wait until angular ready
    Buy an Item by category 1:  Women  T-shirts
    element should be visible   ${MSG_COMPLETE}
    [Teardown]                  Log Out
Buy an Item - login first
    [Documentation]             User first sign in and then choose an item to buy
    wait until angular ready
    Buy an Item by category 2:  Women  T-shirts
    element should be visible   ${MSG_COMPLETE}
    [Teardown]                  Log Out
