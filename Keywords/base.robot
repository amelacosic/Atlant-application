*** Settings ***
Library                         ExtendedSelenium2Library
Variables                       ../variables.py
*** Variables ***
${BTN_SIGN_IN}                  xpath=//a[contains(text(), 'Sign in')]
${PER_INF}                      xpath=//*[contains(text(), 'My personal information')]
${AUTH_FAILED}                  xpath=//li[contains(text(), 'Authentication failed')]
${IN_PASS}                      id=passwd
${IN_EMAIL}                     id=email
${BTN_SUMBIT_LOGIN}             id=SubmitLogin
${BTN_LOG_OUT}                  xpath=//a[contains(text(), 'Sign out')]
${FAIL_MESS1}                   An email address required.
${FAIL_MESS2}                   Invalid email address.
${FAIL_MESS3}                   Invalid password.

*** Keywords ***
Open Browser to "automationpractice.com" page
    [Documentation]             Opens a browser and go to "automationpractice.com" page
    open browser                ${URL}      browser=${BROWSER}
    maximize browser window
Get message
    [Documentation]             Returns message text
    element should be visible   ${AUTH_FAILED}
    ${MSG}=                     get text         ${AUTH_FAILED}
    [Return]   ${MSG}
Log Out
    [Documentation]             User is going to be logged out
    click element               ${BTN_LOG_OUT}
Login:
    [Documentation]             Login with correct E-mail and Password
    [Arguments]                 ${E-MAIL}=amelacosic34@gmail.com    ${PASS}=111111
    input text                  ${IN_EMAIL}     ${E-MAIL}
    input password              ${IN_PASS}      ${PASS}
    sleep  5
    click element               ${BTN_SUMBIT_LOGIN}



