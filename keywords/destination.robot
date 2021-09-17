*** Keywords *** 

User is navigating to destination
    Sleep  3
    Click Element  ${Dest_Label_Elem}
    Log to console  ${Txt_06}
    Click Element  ${Dest_Elem}

User navigates to workbench section of a destination
    Click Element  ${Workbench_Link}
    Log to console  ${Txt_07}
    Page Should Contain  ${Dest_Name}
    Wait Until Element Is Visible  ${Search_Icon_Elem}
    Click Element  ${Search_Icon_Elem}
    Log to console  ${Txt_08}
    Input Text  ${Search_Bar_Elem}  ${Tbl_Name}
    
User fetches the table data
    Execute Javascript  _editor = document.querySelector('.CodeMirror').CodeMirror;
    Execute Javascript  _editor.setValue('${Db_Query}');
    Press Keys  ${Workbench_Elem}  ${SPACE}
    Press Keys  ${Workbench_Elem}  ${EMPTY}
    Log to console  ${Txt_09}
    Click Element  ${Run_Query_Btn}

User verifies the first transformation
    Wait until page contains  ${Qry_Result_Txt}
    ${Row_Count} =  Get Element Count  ${Tbl_Row}
    Log to console  ${Row_Count}
    FOR  ${j}  IN RANGE  1  ${Row_Count}
        ${Col_Name} =  Get Text  xpath=//table/thead/tr/th[${j}]
        Log to console   ${Col_Name}
        Exit For Loop If   "${Col_Name}" == "dept_loc"
    END
    Log to console  Transformation is added in the destination

User verifies the next transformation
    Wait until page contains  ${Qry_Result_Txt}
    ${Row_Count} =  Get Element Count  ${Tbl_Row}
    Log to console  ${Row_Count}
    FOR  ${j}  IN RANGE  1  ${Row_Count}
        ${Col_Value} =  Get Text  xpath=//table/tbody/tr/td[${j}]
        Log to console   ${Col_Value}
        Exit For Loop If   "${Col_Value}" == "${EMPTY}"
    END
    Log to console  Another transformation is added in the destination