Feature: Install

  As a hacker who writes
  I want to install scrawl
  So that I may manage my pithy thoughts

  Scenario: Clean install
    When I run `scrawl install`
    Then the following files should exist:
      | scrawl/entries/ |