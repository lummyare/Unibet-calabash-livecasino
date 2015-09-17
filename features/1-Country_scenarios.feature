@run_all @countries
Feature: login with different login details from other countries
  to see the languages change.

  Background:
    Given I set location to london


@denmark
  Scenario: Denmark Login credentials
    Given I land on Login screen
    And I entered Denmark account login credentials
    And I click log in button
    When I log in successfully
    Then I can see the app in Danish language
    When I click danish log out button
    Then I must see the landing page with Danish language

  @finland @reset
  Scenario: Finland Login credentials
    Given I land on Login screen
    And I entered Finland account login credentials
    And I click log in button
    When I log in successfully
    Then I can see the app in finnish language
    When I click finnish log out button
    Then I must see the landing page with Finnish language

  @norway @reset
  Scenario: Norway Login credentials
    Given I land on Login screen
    And I entered Norway account login credentials
    And I click log in button
    When I log in successfully
    Then I can see the app in Norwegian language
    When I click Norwegian log out button
    Then I must see the landing page with Norwegian language

  @uk @reset
  Scenario: UK Login credentials
    Given I land on Login screen
    And I entered UK account login credentials
    And I click log in button
    When I log in successfully
    Then I can see the app in english language
    When I click english log out button
    Then I must see the landing page with english language

  @belgiumnl @reset
  Scenario: BelgiumNL Login credentials
    Given I land on Login screen
    And I entered BelgiumNL account login credentials
    And I click log in button
    When I log in successfully
    Then I can see the app in Dutch language
    When I click dutch log out button
    Then I must see the landing page with dutch language

  @belgium @reset
  Scenario: Belgium Login credentials
    Given I land on Login screen
    And I entered Belgium account login credentials
    And I click log in button
    When I log in successfully
    Then I can see the app in french language
    When I click French log out button
    Then I must see the landing page with French language

  @sweden @reset
  Scenario: Sweden Login credentials
    Given I land on Login screen
    And I entered Swedish account login credentials
    And I click log in button
    When I log in successfully
    Then I can see the app in swedish language
    When I click swedish log out button
    Then I must see the landing page with swedish language

  @netherland @reset
  Scenario: Netherland Login credentials
    Given I land on Login screen
    And I entered Netherlands account login credentials
    And I click log in button
    When I log in successfully
    Then I can see the app in Netherland-Dutch language
    When I click Dutch log out button
    Then I must see the landing page with Dutch language




