*** Settings ***
Library                                 ExtendedSelenium2Library
Library                                 String
Resource                                ../../Keywords/base.robot
*** Variables ***
${LNK_IMAGE}                            css=.product-container
${BTN_PROCEED}                          css=.button-medium
${BTN_NEXT_PROCEED}                     css=.standard-checkout
${BTN_PAYMENT}                          xpath=//*[@class='button btn btn-default button-medium' and @name='processAddress']
${BTN_ADD_TO_CART}                      xpath=//*[text()='Add to cart']
${TERMS_OF_SERVICE}                     id=cgv
${BTN_PAY_BY_CHECK}                     css=.cheque
${BTN_PAY_BY_BANK_WIRE}                 css=.bankwire
${BTN_CONF_ORDER}                       xpath=//*[contains(text(), 'I confirm my order')]
${MSG_COMPLETE}                         xpath=//*[contains(text(), 'Your order on My Store is complete.')]
${LNK_LOGO}                             id=header_logo

*** Keywords ***
Buy an Item by category 1:
    [Documentation]                     Buys an item by category
    [Arguments]                         ${CATEGORY}       ${SUBCATEGORY}
    mouse over                          xpath=//a[contains(text(),'${CATEGORY}')]
    click element                       xpath=//*[@id='block_top_menu']//a[text()='${SUBCATEGORY}']
    mouse over                          ${LNK_IMAGE}
    click element                       ${BTN_ADD_TO_CART}
    click element                       ${BTN_PROCEED}
    click element                       ${BTN_NEXT_PROCEED}
    Login:
    click element                       ${BTN_PAYMENT}
    select checkbox                     ${TERMS_OF_SERVICE}
    click element                       ${BTN_NEXT_PROCEED}
    click element                       ${BTN_PAY_BY_CHECK}
    click element                       ${BTN_CONF_ORDER}

Buy an Item by category 2:
    [Documentation]                     Buys an Item by Category
    [Arguments]                         ${CATEGORY}       ${SUBCATEGORY}
    click element                       ${BTN_SIGN_IN}
    Login:
    click element                       ${LNK_LOGO}
    mouse over                          xpath=//a[contains(text(),'${CATEGORY}')]
    click element                       xpath=//*[@id='block_top_menu']//a[text()='${SUBCATEGORY}']
    mouse over                          ${LNK_IMAGE}
    click element                       ${BTN_ADD_TO_CART}
    click element                       ${BTN_PROCEED}
    click element                       ${BTN_NEXT_PROCEED}
    click element                       ${BTN_PAYMENT}
    select checkbox                     ${TERMS_OF_SERVICE}
    click element                       ${BTN_NEXT_PROCEED}
    click element                       ${BTN_PAY_BY_CHECK}
    click element                       ${BTN_CONF_ORDER}

