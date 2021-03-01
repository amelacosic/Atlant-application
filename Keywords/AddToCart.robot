*** Settings ***
Library                             ExtendedSelenium2Library
Resource                            Women/T-shirts.robot
*** Variables ***
${LNK_LOGO}                         id=header_logo
${BTN_CONT_SHOP}                    css=.exclusive-medium
${BTN_SHOPPING_CART}                css=.shopping_cart
${BTN_CHECK_OUT}                    id=button_order_cart
*** Keywords ***
Add Item to Cart:
    [Documentation]                 Adds Item to Cart
    [Arguments]                     ${ITEM}=
    mouse over                      xpath=//*[@class='product-container']//a[contains(text(),'${ITEM}')]
    click element                   ${BTN_ADD_TO_CART}
    click element                   ${BTN_CONT_SHOP}
    mouse over                      xpath=//*[contains(text(), 'Cart')]
    click element                   ${BTN_CHECK_OUT}
    is element visible              //*[contains(text(),'Shopping-cart summary')]
