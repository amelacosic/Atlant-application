*** Settings ***
Library                         ExtendedSelenium2Library
Library                         String
Resource                        ../Keywords/Register.robot
Resource                        ../Keywords/base.robot
Suite Setup                     Open Browser to "automationpractice.com" page
Suite Teardown                  close browser
*** Variables ***
*** Test Cases ***
Register the User - Mandatory fields
    [Documentation]                 Registers the User
    [Tags]
    click element                   ${BTN_SIGN_IN}
    ${TITLE}                        set variable  Mrs.
    ${FIRST_NAME}                   generate random string      5  [LOWER]
    ${LAST_NAME}                    generate random string      5  [LOWER]
    ${PASSWORD}                     generate random string      7  [NUMBERS]
    ${DOB_DAY}                      set variable  1
    ${DOB_MONTH}                    set variable  2
    ${DOB_YEAR}                     set variable  2000
    ${C_FN}                         generate random string      5   [LOWER]
    ${C_LN}                         generate random string      5   [LOWER]
    ${ADDRESS}                      generate random string      9   [LOWER]
    ${CITY}                         generate random string      9   [LOWER]
    ${STATE}                        set variable  Alaska
    ${ZIP}                          generate random string      5   [NUMBERS]
    ${PHONE_NUM}                    generate random string      9   [NUMBERS]
    ${FUT_REFF}                     set variable  My adress
    ${COUNTRY}                      set variable  United States
    Create an account:       ${TITLE}     ${FIRST_NAME}       ${LAST_NAME}       ${PASSWORD}   ${C_FN}   ${C_LN}   ${ADDRESS}      ${CITY}       ${STATE}      ${ZIP}     ${PHONE_NUM}      ${COUNTRY}     ${FUT_REFF}
    element should be visible       //*[contains(text(), 'My personal information')]

