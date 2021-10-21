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
User navigates to a pipeline and applies add field transformation
    [Documentation]  Add Field Transformation
    [Tags]  Transformation
    Given User is alowed to login to Hevo
    When User navigates to the pipleine
    And User navigates to the transformation section and selects Drag Drop
    And User drags add field transformation block and provide the transformation details
    Then User tests the transformation applied to the event
    And User runs the event again

User navigates to a pipeline and applies drop field transformation
    [Documentation]  Drop Field Transformation
    [Tags]  Transformation
    Given User is alowed to login to Hevo
    When User navigates to the pipleine
    And User navigates to the transformation section and selects Drag Drop
    And User drags drop field transformation block and provide the transformation details
    Then User Tests The Transformation Applied To The Event
    And User runs the event again

User navigates to a pipeline and applies change field value transformation
    [Documentation]  Change Field Value Transformation
    [Tags]  Transformation
    Given User is alowed to login to Hevo
    And User navigates to the pipleine
    When User navigates to the transformation section and selects Drag Drop
    And User drags change field value transformation and provide the details
    Then User tests the new transformation
    And User runs the event again to apply new transformation

User navigates to a pipeline and applies find and replace transformation
    [Documentation]  Find and Replace Transformation
    [Tags]  Transformation
    Given User is alowed to login to Hevo
    And User navigates to the pipleine
    When User navigates to the transformation section and selects Drag Drop
    And User drags find and replace transformation and provide the details
    Then User tests the new transformation
    And User runs the event again to apply new transformation

User navigates to a pipeline and applies Mask Fields transformation
    [Documentation]  Mask Field Transformation
    [Tags]  Transformation
    Given User is alowed to login to Hevo
    And User navigates to the pipleine
    When User navigates to the transformation section and selects Drag Drop
    And User drags Mask Fields transformation and provide the details
    Then User tests the new transformation
    And User runs the event again to apply new transformation

User navigates to a pipeline and applies Hash Fields transformation
    [Documentation]  Hash Field Transformation
    [Tags]  Transformation
    Given User is alowed to login to Hevo
    And User navigates to the pipleine
    When User navigates to the transformation section and selects Drag Drop
    And User drags Hash Fields transformation and provide the details
    Then User tests the new transformation
    And User runs the event again to apply new transformation

User navigates to a pipeline and applies Modify Test Casing transformation
    [Documentation]  Modify Test Casing Transformation
    [Tags]  Transformation
    Given User is alowed to login to Hevo
    And User navigates to the pipleine
    When User navigates to the transformation section and selects Drag Drop
    And User drags Modify Test Casing transformation and provide the details
    Then User tests the transformation applied to the event
    And User runs the event again

User navigates to a pipeline and applies Rename Events transformation
    [Documentation]  Rename Events Transformation
    [Tags]  Transformation
    Given User is alowed to login to Hevo
    And User navigates to the pipleine
    When User navigates to the transformation section and selects Drag Drop
    And User drags Rename Events transformation and provide the details
    Then User tests the new transformation
    And User runs the event again to apply new transformation

User navigates to a pipeline and applies if-else transformation
    [Documentation]  If-Else and continuous transformation
    [Tags]  Transformation
    Given User is alowed to login to Hevo
    And User navigates to the pipleine
    And User navigates to the transformation section and selects Drag Drop
    When User drags if-else transformation block and provides the details
    And User gives the details of If block
    And User gives the details of Else block
    Then User tests the transformation applied to the event
    And User runs the event again