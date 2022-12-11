# Example-Scenario-Using-Cucumber

### What is Scenario?
Scenarios is a descriptions of events or interactions that occur in a system or application. Scenarios are typically written in the form of a story that explains how the system or application works and how users can use it.

Scenarios are commonly used in the development of a system or application to help determine the specifications and criteria that the system or application must meet. By having a clear and well-defined collection of scenarios, development teams can easily develop the system or application to meet the needs of users and the established criteria.

### Format for Writing Scenarios
Scenarios are typically written using natural languages such as English or Indonesian, using the following format:

```gherkin
Feature: [Feature name]

Scenario: [Scenario name]
Given [initial condition]
When [action taken]
Then [expected result]

```

### Example:
```gherkin
Feature: Login feature

Scenario: Successful login with correct information
Given I am on the login page
When I enter my correct username and password
And I click on the login button
Then I should be redirected to the dashboard page
And I should see a success message

```

In this example, the scenario describes the steps for a successful login using correct information. It specifies the initial condition, the actions taken, and the expected results for each step. This scenario can be used to test the login feature of a system or application to ensure that it works as expected.

