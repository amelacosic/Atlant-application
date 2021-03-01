*** Settings ***
Library                         ExtendedSelenium2Library
Resource                        ../Keywords/SignIn.robot
Resource                        ../Keywords/base.robot
Suite Setup                     Open Browser to "automationpractice.com" page
Suite Teardown                  close browser
*** Test Cases ***
Sign In With Correct Input
    [Documentation]             Sign In with correct input
    click element               ${BTN_SIGN_IN}
    Input E-mail:               amelacosic34@gmail.com
    Input Password:             111111
    click element               ${BTN_SUMBIT_LOGIN}
    is element visible          ${PER_INF}
    [Teardown]                  Log Out
Sign In with Incorrect Input
    [Documentation]             Sign In with incorrect input
    click element               ${BTN_SIGN_IN}
    Input E-mail:               aaaaaa@gmail.com
    Input Password:             11111111
    click element               ${BTN_SUMBIT_LOGIN}
    is element visible          ${AUTH_FAILED}
