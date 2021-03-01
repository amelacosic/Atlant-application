*** Settings ***
Library                             ExtendedSelenium2Library
Library                             String
*** Variables ***
${IN_TITLE1}                        id=id_gender1
${IN_TITLE2}                        id=id_gender2
${IN_FIRST_NAME}                    id=customer_firstname
${IN_LAST_NAME}                     id=customer_lastname
${IN_PASSWORD}                      id=passwd
${IN_DOB_DAY}                       id=days
${IN_DOB_MONTH}                     id=months
${IN_DOB_YEAR}                      id=years
${C_FIRST_NAME}                     id=firstname
${C_LAST_NAME}                      id=lastname
${IN_ADDRESS}                       id=address1
${IN_CITY}                          id=city
${IN_STATE2}                        id=id_state
${IN_STATE1}                        id=uniform-id_state
${IN_ZIP}                           id=postcode
${IN_COUNTRY2}                      id=id_country
${IN_COUNTRY1}                      id=uniform-id_country
${IN_PHONE_NUM}                     id=phone_mobile
${IN_FUTURE_REFF}                   id=alias
${BTN_REGISTER}                     id=submitAccount
${IN_EMAIL}                         id=email_create
${IN_CONFIRM}                       id=SubmitCreate
*** Keywords ***
Create an account:
    [Documentation]                 Create the user with given informations
    [Arguments]          ${TITLE}=       ${FIRST_NAME}=       ${LAST_NAME}=      ${PASSWORD}=  ${C_FN}=  ${C_LN}=   ${ADDRESS}=      ${CITY}=      ${STATE}=     ${ZIP}=       ${PHONE_NUM}=     ${COUNTRY}=       ${FUT_REFF}=
    wait until angular ready
    ${EMAIL}                        Generate random E-MAIL
    input text                      ${IN_EMAIL}         ${EMAIL}
    click element                   ${IN_CONFIRM}
    run keyword if                  '${TITLE}'=='Mr.'   select checkbox  id_gender1
    run keyword if                  '${TITLE}'=='Mrs.'  select checkbox  id_gender2
    input text                      ${IN_FIRST_NAME}    ${FIRST_NAME}
    input text                      ${IN_LAST_NAME}     ${LAST_NAME}
    input password                  ${IN_PASSWORD}      ${PASSWORD}
    clear element text              ${C_FIRST_NAME}
    input text                      ${C_FIRST_NAME}     ${C_FN}
    clear element text              ${C_LAST_NAME}
    input text                      ${C_LAST_NAME}      ${C_LN}
    input text                      ${IN_ADDRESS}       ${ADDRESS}
    input text                      ${IN_CITY}          ${CITY}
    click element                   ${IN_STATE1}
    click element                   xpath=//option[contains(text(), '${STATE}')]
    input text                      ${IN_ZIP}            ${ZIP}
    click element                   ${IN_COUNTRY1}
    click element                   xpath=//option[contains(text(), '${COUNTRY}')]
    input text                      ${IN_PHONE_NUM}     ${PHONE_NUM}
    input text                      ${IN_FUTURE_REFF}   ${FUT_REFF}
    click element                   ${BTN_REGISTER}

Generate random E-MAIL
    [Documentation]                 Generates random e-mail
    ${VAR}                          generate random string      7   [LOWER]
    [Return]                        ${VAR}@gmail.com