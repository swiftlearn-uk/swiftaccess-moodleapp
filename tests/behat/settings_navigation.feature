@app @javascript
Feature: It navigates properly within settings.

  Background:
    Given the following "users" exist:
      | username |
      | student1 |

  Scenario: Mobile navigation
    Given I enter the app
    And I log in as "student1"

    # Settings
    When I press "More" in the app
    And I press "App settings" in the app
    Then I should find "General" in the app
    And I should find "Space usage" in the app
    And I should find "Synchronisation" in the app
    And I should find "About" in the app

    # Settings details
    When I press "General" in the app
    Then I should find "Language" in the app
    And I should find "Text size" in the app

    When I press the back button in the app
    And I press "About" in the app
    Then I should find "Moodle Mobile" in the app
    And I should find "Privacy policy" in the app

    # Preferences
    When I press the back button in the app
    And I press the back button in the app
    And I press the user menu button in the app
    And I press "Preferences" in the app
    Then I should find "Messages" in the app
    And I should find "Notifications" in the app
    And I should find "Space usage" in the app

    # Preferences details
    When I press "Messages" in the app
    Then I should find "Accept messages from" in the app
    And I should find "Notification preferences" in the app

    When I press the back button in the app
    And I press "Manage storage" in the app
    Then I should find "File storage used" in the app

  Scenario: Tablet navigation
    Given I enter the app
    And I log in as "student1"
    And I change viewport size to "1200x640"

    # Settings
    When I press "More" in the app
    And I press "App settings" in the app
    Then I should find "General" in the app
    And I should find "Space usage" in the app
    And I should find "Synchronisation" in the app
    And I should find "About" in the app
    And "General" should be selected in the app
    And I should find "Language" in the app
    And I should find "Text size" in the app

    When I press "About" in the app
    Then "About" should be selected in the app
    And I should find "Moodle Mobile" in the app
    And I should find "Privacy policy" in the app

    # Preferences
    When I press the user menu button in the app
    And I press "Preferences" in the app
    Then I should find "Messages" in the app
    And I should find "Notifications" in the app
    And I should find "Space usage" in the app
    And "Messages" should be selected in the app
    And I should find "Accept messages from" in the app
    And I should find "Notification preferences" in the app

    When I press "Manage storage" in the app
    Then "Manage storage" should be selected in the app
    And I should find "File storage used" in the app
