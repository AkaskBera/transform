***Settings***
Library          SeleniumLibrary
Resource        ../Utilities/locators.robot
Resource        ../keywords/transformation.robot
Resource        ../keywords/destination.robot

Test Setup       Open the Browser
Test Teardown    Close the Browser 

*** Test Cases ***
User navigates to a pipeline and applies transformation
    [Tags]  transformation
    Given User is alowed to login to Hevo
    When User navigates to the pipleine
    And User navigates to the transformation section and selects Drag Drop
    And User drags a transformation block and provide the transformation details
    Then User tests the transformation applied to the event

User is naviagting to destination and verifying the load
    [Tags]  sanity
    Given User is alowed to login to Hevo
    Given User is navigating to destination
    When User navigates to workbench section of a destination
    And User fetches the table data