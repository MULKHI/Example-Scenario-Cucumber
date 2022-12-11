#Author: mulkhiputral@gmail.com
@Regression
Feature: Login to OrangeHRM
  As a Admin want to access OrangeHRM
   Admin has to login to Web Portal

  @TC_LOGIN.001 @Positive @SmokeTest
  Scenario Outline: Login with valid credential
    Given User redirected to the login page
    When Enter username <username> and password <password>
    And Click button Login
    Then Succressfully login and user redirect to dashboard page

    Examples: 
      | username | password |
      | Admin    | admin123 |

  @TC_LOGIN.002 @Negative
  Scenario Outline: Login with Invalid Username
    Given User redirected to the login page
    When Enter username <username> and password <password>
    And Click button Login
    Then Error message should appear with text 'Invalid credentials'

    Examples: 
      | username    | password |
      | NotUsername | admin123 |

  @TC_LOGIN.003 @Negative
  Scenario Outline: Login with Invalid Password
    Given User redirected to the login page
    When Enter username <username> and password <password>
    And Click button Login
    Then Error message should appear with text 'Invalid credentials'

    Examples: 
      | username | password    |
      | Admin    | NotPassword |

  @TC_LOGIN.004 @Negative
  Scenario Outline: Login without fill Username
    Given User redirected to the login page
    When Enter only password <password>
    And Click button Login
    Then Error message should appear in field username with text 'Required'

    Examples: 
      | password |
      | admin123 |

  @TC_LOGIN.005 @Negative
  Scenario Outline: Login without fill Password
    Given User redirected to the login page
    When Enter only username <username>
    And Click button Login
    Then Error message should appear in field password with text 'Required'

    Examples: 
      | username |
      | Admin    |

  @TC_LOGIN.006 @Negative
  Scenario: Login without fill username and password
    Given User redirected to the login page
    And Click button Login
    Then Error message should appear with text Required
