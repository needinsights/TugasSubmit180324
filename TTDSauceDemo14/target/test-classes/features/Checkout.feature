@Checkout
Feature: Checkout
  As a user i want to buy products

  Scenario: Pick one item from inventory
    Given User open the app sauce demo
    When User input "standard_user" as userName and "secret_sauce" as password
    Then User already on dashboard page
    When user sort product by "Price (low to high)"
    And User click add to cart item "Sauce Labs Onesie"
    And User click add to cart item "Sauce Labs Bike Light"
    And User click shopping cart badge
    And User remove Sauce Labs Bike Light from shopping cart
    And User click Checkout button
    Then User redirected to Checkout Step One page
    When User input "Milo" as FirstName "Milo" as LastName "234567" as ZipCode
    And User click Continue button
    Then User redirected to Checkout Step Two page
    And User can see summary total
    When User click Finish button
    Then User redirected to Checkout Complete page