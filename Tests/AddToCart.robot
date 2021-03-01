*** Settings ***
Library                         ExtendedSelenium2Library
Library                         String
Resource                        ../Keywords/AddToCart.robot
Resource                        ../Keywords/Women/T-shirts.robot
Resource                        ../Keywords/base.robot
Suite Setup                     Open Browser to "automationpractice.com" page
Suite Teardown                  close browser
*** Test Cases ***
Add an Item to Cart
    [Documentation]             Adds an item to Cart without loggin in
    Add Item to Cart:           Faded Short Sleeve T-shirts
Sign In - Add an item
    [Documentation]             Adds an item to Cart (Sign In->Add an item)
    click element               ${BTN_SIGN_IN}
    Login:
    click element               ${LNK_LOGO}
    Add Item to Cart:           Faded Short Sleeve T-shirts
Buy Item from the Cart
    [Documentation]             Buys an item from Cart (Sign In - Buy an Item)
    click element               ${BTN_SIGN_IN}
    Login:
    click element               ${LNK_LOGO}
    Add Item to Cart:           Faded Short Sleeve T-shirts
    click element               ${BTN_NEXT_PROCEED}
    click element               ${BTN_PAYMENT}
    select checkbox             ${TERMS_OF_SERVICE}
    click element               ${BTN_NEXT_PROCEED}
    click element               ${BTN_PAY_BY_CHECK}
    click element               ${BTN_CONF_ORDER}






