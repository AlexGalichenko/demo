Feature: wdio test feature

  @wikipedia
  Scenario Outline: search in wikipedia (<term>)
    When I open 'https://www.wikipedia.org/' url
    And I type '<term>' to 'Wikipedia > Search Input'
    And I click 'Wikipedia > Search Button'
    And I expect text of 'Wikipedia Article > Title' element equals 'JavaScript'
    And I wait until text of 'Wikipedia Article > Title' not to contain 'Python'
    And I wait until 'Wikipedia Article > Title' to be visible
    And I wait until number of elements in 'Wikipedia Article > References' collection to be below '109'

    Examples:
      | term        |
      | Javascript  |

  Scenario: wait for text
    When I open 'http://uitestingplayground.com/progressbar' url
    And I click 'Progress Bar Page > Start'
    And I wait until text of 'Progress Bar Page > Bar' not to contain '2'