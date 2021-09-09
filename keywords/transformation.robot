*** Keywords ***

Open the Browser
    Open Browser                 ${Url}    ${Browser}
    Maximize Browser Window
    Set Browser Implicit Wait    15 seconds 

User is alowed to login to Hevo
    Input Text                   ${Email_Elem}    ${Email_Id}
    Click Button                 ${Login_Btn}
    Wait until page contains     ${Pwd_Txt}       
    Input Password               ${Pwd_Elem}     ${Pwd}
    Click Button                 ${Login_Btn}

User navigates to the pipleine
    Wait until page contains     ${Dark_Mode_Txt}
    Press Keys    None   ESC
    Sleep   3
    Click Element                ${Pipeline_Label_Elem}
    Click Element                ${Pipeline}
    Wait until element is visible       ${Transf_Elem}
    Click Element                       ${Transf_Elem}
    Log to console               ${Txt_01}

User navigates to the transformation section and selects Drag Drop
    ${count}=  Get Element Count  ${Get_Sample_Btn}
    Return From Keyword If  ${count} == 0
    Wait until element is visible       ${Product_Tour_Icon}
    Click Element                       ${Product_Tour_Icon}
    Click Element                       ${Drag_Drop_Option}
    Wait until element is visible       ${Continue_Btn}
    Click Element                       ${Continue_Btn}
    Log to console                      ${Txt_02}

User drags a transformation block and provide the transformation details
    Log to console          ${Txt_03} 
    Drag And Drop           ${Add_Field_Elem}            ${Workflow_Transf_Elem}
    Click Button            ${Add_Filter_Btn1}
    Click Element           ${Event_Type_Option}
    Click Element           ${Equals_Option}
    Input Text              ${Event_Value_Txtbox}        ${Event_Value}
    Click Button            ${Add_Filter_Btn2}
    Input Text              ${New_Field_Name_Txtbox}     ${New_Field_Name}
    Input Text              ${New_Field_Value_Txtbox}    ${New_Field_Value}
    Log to console          ${Txt_04}

User tests the transformation applied to the event
    Click Button            ${Test_Btn_01}
    Click Element           ${Select_Event_Dropdown}
    Input Text              ${Search_Icon}         ${Event_Name}
    Press Keys      None    ARROW_DOWN
    Press Keys      None    RETURN 
    Click Button            ${Get_Sample_Btn}
    Sleep       1
    Click Button            ${Test_Btn_02}
    Log to console          ${Txt_05}
    Click Button            ${Build_Btn}
    Drag And Drop By Offset         xpath://div[text()=' Change Datetime Field Values ']        540     -60
    Sleep       1
    Drag And Drop By Offset         xpath://div[text()=' Drop Event ']        540     -120
    Sleep       1
    Drag And Drop By Offset         xpath://div[text()=' Drop Fields ']        540     -180

Close the Browser
    Close Browser
 