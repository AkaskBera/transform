*** Keywords ***
User navigates to webhook pipleine
    Wait until page contains  ${Dark_Mode_Txt}
    Press Keys  None  ESC
    Sleep  5
    Click Element  ${Pipeline_Label_Elem}
    Click Element  ${Pipeline_01}
    Wait until element is visible  ${Transf_Elem}
    Click Element  ${Transf_Elem}
    Log to console  ${Txt_01}

User drags a transformation block and provide the details
    Drag And Drop  ${Add_Field_Elem}  ${Workflow_Transf_Elem}
    Click Button  ${Add_Filter_Btn1}
    Click Element  ${Event_Type_Option}
    Click Element  ${Equals_Option}
    Input Text  ${Enter_Value_Txtbox}  ${Event_Value_01}
    Click Button  ${Add_Filter_Btn2}
    Input Text  ${New_Field_Name_Txtbox}  ${Field_Name_04}
    Input Text  ${New_Field_Value_Txtbox}  ${New_Field_Value_03}

User tests the transformation applied to particular event
    Click Button  ${Test_Btn_01}
    Click Element  ${Select_Event_Dropdown}
    Input Text  ${Search_Icon}  ${Event_Value_01}
    Press Keys  None  ARROW_DOWN
    Press Keys  None  RETURN 
    Click Button  ${Get_Sample_Btn}
    Sleep  1
    Click Button  ${Test_Btn_02}
    Sleep  3
    Click Button  ${Deploy_Btn}

User sends the Post request for ingestion
    Create Session  ${My_Session}  ${Base_Url}  verify=True
    ${properties} =  Create Dictionary  agent_name=Adarsh  agent_id=ADP
    ${Body} =  Create Dictionary  event=agents  properties=${properties}
    ${Header} =  Create Dictionary  Content-Type=application/json
    ${response} =  POST Request  ${My_Session}  ${End_Pt}  data=${Body}  headers=${Header}
    Log to console  ${response.status_code}
    Log to console  ${response.content}
    ${Status_Code} =  Convert To String  ${response.status_code}
    Should Be Equal  ${Status_Code}  204

User navigates to workbench section in destination
    Click Element  ${Workbench_Link}
    Page Should Contain  ${Dest_Name}
    Wait Until Element Is Visible  ${Search_Icon_Elem}
    Click Element  ${Search_Icon_Elem}
    Input Text  ${Search_Bar_Elem}  ${Tbl_Name_01}
    
User fetches the webhook table data
    Execute Javascript  _editor = document.querySelector('.CodeMirror').CodeMirror;
    Execute Javascript  _editor.setValue('${Db_Query_01}');
    Press Keys  ${Workbench_Elem}  ${SPACE}
    Press Keys  ${Workbench_Elem}  ${EMPTY}
    Click Element  ${Run_Query_Btn}

User verifies the transformation
    Wait until page contains  ${Qry_Result_Txt}
    ${Row_Count} =  Get Element Count  ${Tbl_Row}
    ${Col_Count} =  Get Element Count  ${Tbl_Col}
    Log to console  ${Row_Count}
    Log to console   ${Col_Count}
    Table Header Should Contain  ${Table}  ${Field_Name_04}
    FOR  ${j}  IN RANGE  1  ${Row_Count}
        ${Col_Value} =  Get Text  xpath=//table/tbody/tr[${j}]/td[6]/div[1]
        Log to console   ${Col_Value}
        Exit For Loop If   "${Col_Value}" == "Insurance"
    END
    Log to console  New field with value ${Col_Value} is added in the destination
