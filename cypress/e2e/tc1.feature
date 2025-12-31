Feature: Checkout Process
Scenario: Completing the checkout process

        # Login to the App
        Given env data from "sampleEnvData"
        When I open url "baseURL"
        And I type "standard_user" in "usernameField"
        And I type "secret_sauce" in "passwordField"
        And I click on "loginButton"
        Then the "addToCartButton" should be displayed

        # Add a product to the cart
        When I click on "addToCartButton"
        And I click on "cartIcon"
        Then the "itemInCart" should be displayed

        # Go to the checkout screen
        When I click on "checkoutButton"
        Then the "firstNameField" should be displayed
        And the "lastNameField" should be displayed
        And the "postalCodeField" should be displayed
        And the "continueButton" should be displayed

        # Fill in the field and click continue
        When I type "Arslan" in "firstNameField"
        And I type "S" in "lastNameField"
        And I type "KT3 3SS" in "postalCodeField"
        And I click on "continueButton"
        Then the "finishButton" should be displayed

        # Complete the order
        When I click on "finishButton"
        Then the "completeConfirmation" should be displayed