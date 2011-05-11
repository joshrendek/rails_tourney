Feature: A visiting user should learn things about the web site
  Background:
    Given following application information:
       | signup_form_url    | http://forms.com/1234     |
       | mailing_list_email | myapp@list.com            |
       | mailing_list_url   | http://www.list.com/myapp |

  Scenario: User learns about mailing list
    When I visit "/"

    Then I should see a link to "mailto:myapp@list.com"
     And I should see a link to "http://www.list.com/myapp"

  Scenario: User learns about sign up form
   When I visit "/"

   Then I should see a link to "http://forms.com/1234"
