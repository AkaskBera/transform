***Settings***
Library          SeleniumLibrary
Resource        ../Utilities/locators.robot
Resource        ../keywords/transformation.robot
Resource        ../keywords/destination.robot

Test Setup  Open the Browser
Test Teardown  Close the Browser 

*** Test Cases ***
User navigates to a pipeline and applies transformation
    [Tags]  transformation01
    Given User is alowed to login to Hevo
    When User navigates to the pipleine
    And User navigates to the transformation section and selects Drag Drop
    And User drags a transformation block and provide the transformation details
    Then User tests the transformation applied to the event
    And User runs the event again

User is naviagting to destination and verifying the transformation
    [Tags]  sanity01
    Given User is alowed to login to Hevo
    Given User is navigating to destination
    When User navigates to workbench section of a destination
    And User fetches the table data
    User verifies the first transformation

User applies another transformation along with the existing transformation
    [Tags]  transformation02
    Given User is alowed to login to Hevo
    And User navigates to the pipleine
    When User navigates to the transformation section and selects Drag Drop
    And User applies another transformation
    Then User Tests The Transformation Applied To The Event
    And User runs the event again

User is naviagting to destination and verifying new transformation
    [Tags]  sanity02
    Given User is alowed to login to Hevo
    Given User is navigating to destination
    When User navigates to workbench section of a destination
    And User fetches the table data
    User verifies the next transformation
    
User is applying if-else transformation
    [Tags]  transformation03
    Given User is alowed to login to Hevo
    When User navigates to the pipleine
    And User navigates to the transformation section and selects Drag Drop
    User drags if-else transformation block and provides the details
    User gives the details of If block
    User gives the details of Else block
    Then User tests the transformation applied to the event
    And User runs the event again