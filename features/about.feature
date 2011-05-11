Feature: A visiting user should learn things about the web site
  Background:
    Given following application information:
       | mailing-list | myapp@list.com |

  @wip
  Scenario: User learns about mailing list
    When I visit "/"

    Then I should see a link to "mailto:myapp@list.com"
