*** Settings ***
Library  SeleniumLibrary
Library  RequestsLibrary
Library  Collections
Resource  ../Utilities/locators.robot
Resource  ../keywords/transformation.robot
Resource  ../keywords/destination.robot
Resource  ../keywords/webhook.robot

Test Setup  Open the Browser
Test Teardown  Close the Browser

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
    [Tags]  sanity
    Given User is alowed to login to Hevo
    And User is navigating to destination
    When User navigates to workbench section in destination
    And User fetches the webhook table data
    Then User verifies the transformation
