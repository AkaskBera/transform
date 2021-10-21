*** Settings ***
Library  SeleniumLibrary
Library  RequestsLibrary
Library  Collections
Resource  ../Utilities/locators.robot
Resource  ../keywords/transformation.robot
Resource  ../keywords/destination.robot
Resource  ../keywords/webhook.robot

Test Setup  Open the Browser
#Test Teardown  Close the Browser

*** Test Cases ***
User navigates to a webhook pipeline and applies transformation
    [Tags]  webhook
    Given User is alowed to login to Hevo
    And User navigates to webhook pipleine
    When User navigates to the transformation section and selects Drag Drop
    And User drags a transformation block and provide the details
    Then User tests the transformation applied to particular event
    And User sends the Post request for ingestion

User is naviagting to destination and verifies webhook transformation
    [Tags]  destination01
    Given User is alowed to login to Hevo
    And User is navigating to destination
    When User navigates to workbench section in destination for webhook
    And User fetches the webhook table data
    Then User verifies the transformation

User navigates to MySql Pipeline and applies change field value transformation
    [Documentation]  Change Field Value Transformation
    [Tags]  transformation01
    Given User is alowed to login to Hevo
    And User navigates to the pipleine
    When User navigates to the transformation section and selects Drag Drop
    And User drags change field value transformation and provide the details
    Then User tests the new transformation
    And User runs the event again to apply new transformation

User is naviagting to destination and verifies change field value transformation
    [Tags]  destination02
    Given User is alowed to login to Hevo
    And User is navigating to destination
    When User navigates to workbench section in destination for transformation01
    And User fetches the table data for new transformation
    Then User verifies the change field value transformation

User navigates to MySql Pipeline and applies find and replace transformation
    [Documentation]  Find and Replace Transformation
    [Tags]  transformation02
    Given User is alowed to login to Hevo
    And User navigates to the pipleine
    When User navigates to the transformation section and selects Drag Drop
    And User drags find and replace transformation and provide the details
    Then User tests the new transformation
    And User runs the event again to apply new transformation

User is naviagting to destination and verifies find and replace transformation
    [Tags]  destination03
    Given User is alowed to login to Hevo
    And User is navigating to destination
    When User navigates to workbench section in destination for transformation01
    And User fetches the table data for new transformation
    Then User verifies the find and replace transformation

User navigates to MySql Pipeline and applies Mask Fields transformation
    [Documentation]  Mask Field Transformation
    [Tags]  transformation03
    Given User is alowed to login to Hevo
    And User navigates to the pipleine
    When User navigates to the transformation section and selects Drag Drop
    And User drags Mask Fields transformation and provide the details
    Then User tests the new transformation
    And User runs the event again to apply new transformation

User is naviagting to destination and verifies Mask Fields transformation
    [Tags]  destination04
    Given User is alowed to login to Hevo
    And User is navigating to destination
    When User navigates to workbench section in destination for the transformation
    And User fetches the table data for the transformation
    Then User verifies the Mask Fields transformation

User navigates to MySql Pipeline and applies Hash Fields transformation
    [Documentation]  Hash Field Transformation
    [Tags]  transformation04
    Given User is alowed to login to Hevo
    And User navigates to the pipleine
    When User navigates to the transformation section and selects Drag Drop
    And User drags Hash Fields transformation and provide the details
    Then User tests the new transformation
    And User runs the event again to apply new transformation

User is naviagting to destination and verifies Hash Fields transformation
    [Tags]  destination05
    Given User is alowed to login to Hevo
    And User is navigating to destination
    When User navigates to workbench section in destination for the transformation
    And User fetches the table data for the transformation
    Then User verifies the Hash Fields transformation

User navigates to MySql Pipeline and applies Modify Test Casing transformation
    [Documentation]  Modify Test Casing Transformation
    [Tags]  transformation05
    Given User is alowed to login to Hevo
    And User navigates to the pipleine
    When User navigates to the transformation section and selects Drag Drop
    And User drags Modify Test Casing transformation and provide the details
    Then User tests the transformation applied to the event
    And User runs the event again

User is naviagting to destination and verifies Modify Test Casing transformation
    [Tags]  destination06
    Given User is alowed to login to Hevo
    And User is navigating to destination
    When User navigates to workbench section in destination for the Modify Test Casing transformation
    And User fetches the table data for the Modify Test Casing transformation
    Then User verifies the Modify Test Casing transformation

User navigates to MySql Pipeline and applies Rename Events transformation
    [Documentation]  Rename Events Transformation
    [Tags]  transformation06
    Given User is alowed to login to Hevo
    And User navigates to the pipleine
    When User navigates to the transformation section and selects Drag Drop
    And User drags Rename Events transformation and provide the details
    Then User tests the new transformation
    And User runs the event again to apply new transformation

User is naviagting to destination and verifies Rename Events transformation
    [Tags]  destination07
    Given User is alowed to login to Hevo
    And User is navigating to destination
    When User navigates to workbench section in destination for the Rename Events transformation
    And User fetches the table data for the Rename Events transformation

User navigates to MySql Pipeline and applies Format Number to String transformation
    [Tags]  transformation07
    Given User is alowed to login to Hevo
    And User navigates to the pipleine
    When User navigates to the transformation section and selects Drag Drop
    And User drags Format Number to String transformation and provide the details