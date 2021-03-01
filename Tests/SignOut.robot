*** Settings ***
Library                         ExtendedSelenium2Library
Resource                        ../Keywords/base.robot
Suite Setup                     Open Browser to "automationpractice.com" page
Suite Teardown                  close browser
*** Variables ***
*** Test Cases ***
Sign Out
    [Documentation]             Sign Out
    click element               ${BTN_SIGN_IN}
    Login:
    Log Out
