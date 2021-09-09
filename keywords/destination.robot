*** Keywords *** 

User is navigating to destination
    Wait until page contains           ${Dark_Mode_Txt}
    Press Keys    None   ESC
    Sleep   5
    Click Element                      ${Dest_Label_Elem}
    Log to console                     ${Txt_06}
    Click Element                      ${Dest_Elem}

User navigates to workbench section of a destination
    Click Element                      ${Workbench_Link}
    Log to console                     ${Txt_07}
    Page Should Contain                ${Dest_Name}
    Wait Until Element Is Visible      ${Search_Icon_Elem}
    Click Element                      ${Search_Icon_Elem}
    Log to console                     ${Txt_08}
    Input Text                         ${Search_Bar_Elem}      ${Tbl_Name}
    
User fetches the table data
    Execute Javascript                 _editor = document.querySelector('.CodeMirror').CodeMirror;
    Execute Javascript                 _editor.setValue('${Db_Query}');
    Press Keys                         ${Workbench_Elem}        ${SPACE}
    Press Keys                         ${Workbench_Elem}        ${EMPTY}
    Log to console                     ${Txt_09}
    Click Element                      ${Run_Query_Btn}