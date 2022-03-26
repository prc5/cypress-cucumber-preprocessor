Feature: localisation
  Scenario: norwegian
    Given a file named "cypress/integration/a.feature" with:
      """
      # language: no
      Egenskap: en funksjonalitet
        Scenario: et scenario
          Gitt et steg
      """
    And a file named "cypress/support/step_definitions/steps.js" with:
      """
      const { Given } = require("@badeball/cypress-cucumber-preprocessor/methods");
      Given("et steg", function() {});
      """
    When I run cypress
    Then it passes
