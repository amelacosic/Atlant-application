*** Settings ***
Library                         ExtendedSelenium2Library
Resource                        base.robot
*** Variables ***
${IN_PASS}                      id=passwd
${IN_EMAIL}                     id=email
${TXT_MSG}                      xpath=//li[contains(text(), 'Authentication failed')]
${MSG}                          Authentication failed
*** Keywords ***
Input Password:
    [Documentation]             Inputs the password in the field for the Password
    [Arguments]                 ${PASSWORD}
    input password              ${IN_PASS}      ${PASSWORD}
Input E-mail:
    [Documentation]             Inputs the E-mail in the field for the E-amil
    [Arguments]                 ${E-MAIL}
    input text                  ${IN_EMAIL}     ${E-MAIL}