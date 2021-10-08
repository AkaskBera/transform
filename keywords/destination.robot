*** Keywords *** 

User is navigating to destination
    Wait until page contains  ${Dark_Mode_Txt}
    Press Keys  None  ESC
    Sleep  5
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
    ${Col_Count} =  Get Element Count  ${Tbl_Col}
    Log to console  ${Row_Count}
    Log to console   ${Col_Count}
    Table Header Should Contain  ${Table}  ${Field_Name_01}
    FOR  ${j}  IN RANGE  1  ${Row_Count}
        ${Col_Value} =  Get Text  xpath=//table/tbody/tr/td[${j}]
        Log to console   ${Col_Value}
        Exit For Loop If   "${Col_Value}" == "India"
    END
    Log to console  New field with value ${Col_Value} is added in the destination

User verifies the next transformation
    Wait until page contains  ${Qry_Result_Txt}
    ${Row_Count} =  Get Element Count  ${Tbl_Row}
    ${Col_Count} =  Get Element Count  ${Tbl_Col}
    Log to console  ${Row_Count}
    Log to console   ${Col_Count}
    Table Header Should Contain  ${Table}  ${Field_Name_01}
    FOR  ${j}  IN RANGE  1  ${Row_Count}
        ${Col_Value} =  Get Text  xpath=//table/tbody/tr/td[${j}]
        Log to console   ${Col_Value}
        Exit For Loop If   "${Col_Value}" == "${EMPTY}"
    END
    Log to console  Field value is removed in the destination

User verifies the if transformation
    Wait until page contains  ${Qry_Result_Txt}
    ${Row_Count} =  Get Element Count  ${Tbl_Row}
    ${Col_Count} =  Get Element Count  ${Tbl_Col}
    Log to console  ${Row_Count}
    Log to console   ${Col_Count}
    Table Header Should Contain  ${Table}  ${Field_Name_01}
    FOR  ${j}  IN RANGE  1  ${Row_Count}
        Table Row Should Contain  ${Table}  1  ${Field_Value}
        ${Col_Value} =  Get Text  xpath=//table/tbody/tr[1]/td[${j}]
        Log to console   ${Col_Value}
        Exit For Loop If   "${Col_Value}" == "India"
    END
    Log to console  If transformation is applied in the destination

User verifies the else transformation
    Wait until page contains  ${Qry_Result_Txt}
    ${Row_Count} =  Get Element Count  ${Tbl_Row}
    ${Col_Count} =  Get Element Count  ${Tbl_Col}
    Log to console  ${Row_Count}
    Log to console   ${Col_Count}
    Table Header Should Contain  ${Table}  ${New_Field_Value_02}
    FOR  ${j}  IN RANGE  1  ${Row_Count}
        ${Col_Value} =  Get Text  xpath=//table/tbody/tr[1]/td[${j}]
        Log to console   ${Col_Value}
        Exit For Loop If   "${Col_Value}" == "${EMPTY}"
    END
    Log to console  Else transformation is applied in the destination

User navigates to workbench section in destination for transformation01
    Click Element  ${Workbench_Link}
    Page Should Contain  ${Dest_Name}
    Wait Until Element Is Visible  ${Search_Icon_Elem}
    Click Element  ${Search_Icon_Elem}
    Input Text  ${Search_Bar_Elem}  ${Tbl_Name_02}

User fetches the table data for new transformation
    Execute Javascript  _editor = document.querySelector('.CodeMirror').CodeMirror;
    Execute Javascript  _editor.setValue('${Db_Query_02}');
    Press Keys  ${Workbench_Elem}  ${SPACE}
    Press Keys  ${Workbench_Elem}  ${EMPTY}
    Click Element  ${Run_Query_Btn}

User verifies the change field value transformation transformation
    Wait until page contains  ${Qry_Result_Txt}
    ${Row_Count} =  Get Element Count  ${Tbl_Row}
    ${Col_Count} =  Get Element Count  ${Tbl_Col}
    Log to console  ${Row_Count}
    Log to console   ${Col_Count}
    Table Header Should Contain  ${Table}  ${Field_Name_05}
    FOR  ${j}  IN RANGE  1  ${Row_Count}
        ${Col_Value} =  Get Text  xpath=//table/tbody/tr[${j}]/td[2]
        Log to console   ${Col_Value}
        Exit For Loop If   "${Col_Value}" == "Dept006"
    END
    Log to console  Field value is changed in the destination

User verifies the find and replace transformation transformation
    Wait until page contains  ${Qry_Result_Txt}
    ${Row_Count} =  Get Element Count  ${Tbl_Row}
    ${Col_Count} =  Get Element Count  ${Tbl_Col}
    Log to console  ${Row_Count}
    Log to console   ${Col_Count}
    Table Header Should Contain  ${Table}  ${Field_Name_05}
    FOR  ${j}  IN RANGE  1  ${Row_Count}
        ${Col_Value} =  Get Text  xpath=//table/tbody/tr[${j}]/td[2]
        Log to console   ${Col_Value}
        Exit For Loop If   "${Col_Value}" == "D666"
    END
    Log to console  Find and replace transformation is applied in the destination