Used: Robotframework, Python

1. File "SignIn.robot" - correct input in "Tests" directory
    In Terminal type: robot -d outputdir -t "Sign In With Correct Input" Tests

2. File "SignIn.robot" - incorrect input in "Tests" directory
    In Terminal type: robot -d outputdir -t "Sign In with Incorrect Input" Tests
   
3. File "SignOut.robot" in "Tests" directory
    In Terminal type: robot -d outputdir -t "Sign Out" Tests
   
4. File "Women" - "T-shirts.robot" (First choose item and later Sign In)
    In Terminal type: robot -d outputdir -t "Buy an Item - login later" Tests

5. File "Women" - "T-shirts.robot" (Sign In, then choose item to buy)
    In Terminal type: robot -d outputdir -t "Buy an Item - login first" Tests
   
6. File "Register.robot" - Register user -> fill only mandatory fields 
    In Terminal type: robot -d outputdir -t "Register the User - Mandatory fields" Tests
   
7. File "AddToCart.robot" in "Tests" directory - Add Item without login
    In Terminal type: robot -d outputdir -t "Add an Item to Cart" Tests

8. File "AddToCart.robot" in "Tests" directory - Sign In -> Add an Item to cart
    In Terminal type: robot -d outputdir -t "Sign In - Add an item" Tests
   
9. File "AddToCart.robot" in "Tests" directory - Buy Item from Cart
    In Terminal type: robot -d outputdir -t "Buy Item from the Cart" Tests
   
10. File "Search.robot" in the "Tests directory" - Search for existing item after Signed In
    In Terminal type: robot -d outputdir -t "Search for the Item - Sign In" Tests

11. File "Search.robot" in the "Tests directory" - Search for existing item without Sign In
     In Terminal type: robot -d outputdir -t "Search for the Item" Tests