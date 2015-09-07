@startup
Feature: App Start up test

  Background:
    Given I set location to london


@startup
  Scenario: Invalid Login credentials
    Given I land on Login screen

