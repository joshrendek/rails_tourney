Feature: A visiting user should learn things about the web site
  Background:
    Given following application information:
       | mailing_list_email | myapp@list.com            |
       | mailing_list_url   | http://www.list.com/myapp |

  Scenario: User learns about mailing list
    When I visit "/"

    Then I should see a link to "mailto:myapp@list.com"
     And I should see a link to "http://www.list.com/myapp"
