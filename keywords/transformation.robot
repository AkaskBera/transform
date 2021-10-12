*** Keywords ***

Open the Browser
    Open Browser  ${Url}  ${Browser}
    Maximize Browser Window
    Set Selenium Implicit Wait  30 seconds
    
User is alowed to login to Hevo
    Input Text  ${Email_Elem}  ${Email_Id}
    Click Button  ${Login_Btn}
    Wait until page contains  ${Pwd_Txt}       
    Input Password  ${Pwd_Elem}  ${Pwd}
    Click Button  ${Login_Btn}

User navigates to the pipleine
    Wait until page contains  ${Dark_Mode_Txt}
    Press Keys  None  ESC
    Sleep  5
    Click Element  ${Pipeline_Label_Elem}
    Click Element  ${Pipeline}
    Wait until element is visible  ${Transf_Elem}
    Click Element  ${Transf_Elem}
    Log to console  ${Txt_01}

User navigates to the transformation section and selects Drag Drop
    ${count}=  Get Element Count  ${Get_Sample_Btn}
    Return From Keyword If  ${count} == 0
    Wait until element is visible  ${Product_Tour_Icon}
    Click Element  ${Product_Tour_Icon}
    Click Element  ${Drag_Drop_Option}
    Wait until element is visible  ${Continue_Btn}
    Click Element  ${Continue_Btn}
    Log to console  ${Txt_02}

User drags a transformation block and provide the transformation details
    Log to console  ${Txt_03}
    Drag And Drop  ${Add_Field_Elem}  ${Workflow_Transf_Elem}
    Click Button  ${Add_Filter_Btn1}
    Click Element  ${Event_Type_Option}
    Click Element  ${Equals_Option}
    Input Text  ${Enter_Value_Txtbox}  ${Event_Value}
    Click Button  ${Add_Filter_Btn2}
    Input Text  ${New_Field_Name_Txtbox}  ${Field_Name_01}
    Input Text  ${New_Field_Value_Txtbox}  ${New_Field_Value_01}
    Log to console  ${Txt_04}

User tests the transformation applied to the event
    Click Button  ${Test_Btn_01}
    Click Element  ${Select_Event_Dropdown}
    Input Text  ${Search_Icon}  ${Event_Name}
    Press Keys  None  ARROW_DOWN
    Press Keys  None  RETURN 
    Click Button  ${Get_Sample_Btn}
    Sleep  1
    Click Button  ${Test_Btn_02}
    Sleep  3
    Click Button  ${Deploy_Btn}
    Log to console  ${Txt_05}

User runs the event again
    Click Element  ${Ovrview_Icon}
    Click Element  ${Src_Object_Elem}
    Input Text  ${Src_Object_Text_Elem}  ${Event_Value}
    Sleep  1
    Click Element  ${Vertical_Bar_Icon}
    Click Element  ${Run_Now_Opt}

User applies another transformation
    Click Button  ${Build_Btn}
    Drag And Drop By Offset  ${Drop_Field_Elem}  540  -180
    Click Button  ${Add_Filter_Btn1}
    Click Element  ${Event_Type_Option}
    Click Element  ${Equals_Option}
    Input Text  ${Enter_Value_Txtbox}  ${Event_Value}
    Click Button  ${Add_Filter_Btn2}
    Click Button  ${Add_Filter_Btn3}
    Click Element  ${Field_Name_Elem_01}
    Click Element  ${Equals_Option}
    Scroll Element Into View  ${Enter_Value_Txtbox}
    Input Text  ${Enter_Value_Txtbox}  ${Field_Name_01}
    Scroll Element Into View  ${Add_Filter_Btn2}
    Click Button  ${Add_Filter_Btn2}

User drags if-else transformation block and provides the details
    Scroll Element Into View  ${If_Else_Elem}
    Drag And Drop  ${If_Else_Elem}  ${Workflow_Transf_Elem}
    Click Button  ${Add_Filter_Btn1}
    Click Element  ${Event_Type_Option}
    Click Element  ${Equals_Option}
    Input Text  ${Enter_Value_Txtbox}  ${Event_Value}
    Click Button  ${Add_Filter_Btn2}
    Click Button  ${Add_Filter_Btn1}
    Click Element  ${Event_Field_Opt}
    Input Text  ${Field_Name_Txtbox}  ${Field_Name_03}
    Click Button  ${Select_Field_Btn}
    Click Element  ${Equals_Option}
    Input Text  ${Enter_Value_Txtbox}  ${Field_Value}
    Click Button  ${Add_Filter_Btn2}

User gives the details of If block
    Drag And Drop By Offset  ${Add_Field_Elem}  540  0
    Click Button  ${Add_Filter_Btn1}
    Click Element  ${Event_Type_Option}
    Click Element  ${Equals_Option}
    Input Text  ${Enter_Value_Txtbox}  ${Event_Value}
    Click Button  ${Add_Filter_Btn2}
    Input Text  ${New_Field_Name_Txtbox}  ${Field_Name_01}
    Input Text  ${New_Field_Value_Txtbox}  ${New_Field_Value_01}

User gives the details of Else block
    Scroll Element Into View  ${Rename_Field_Elem}
    Drag And Drop By Offset  ${Rename_Field_Elem}  240  -20
    Click Button  ${Add_Filter_Btn1}
    Click Element  ${Event_Type_Option}
    Click Element  ${Equals_Option}
    Input Text  ${Enter_Value_Txtbox}  ${Event_Value}
    Click Button  ${Add_Filter_Btn2}
    Input Text  ${Field_Name_Elem_02}  ${Field_Name_02}
    Input Text  ${New_Field_Elem}  ${New_Field_Value_02}

User drags change field value transformation and provide the details
    Drag And Drop  ${Chage_Field_Value_Elem}  ${Workflow_Transf_Elem}
    Click Button  ${Add_Filter_Btn1}
    Click Element  ${Event_Type_Option}
    Click Element  ${Equals_Option}
    Input Text  ${Enter_Value_Txtbox}  ${Event_Value_02}
    Click Button  ${Add_Filter_Btn2}
    Click Button  ${Add_Filter_Btn3}
    Click Element  ${Field_Name_Elem_01}
    Click Element  ${Equals_Option}
    Scroll Element Into View  ${Enter_Value_Txtbox}
    Input Text  ${Enter_Value_Txtbox}  ${Field_Name_05}
    Scroll Element Into View  ${Add_Filter_Btn2}
    Click Button  ${Add_Filter_Btn2}
    Click Button  ${Add_Filter_Btn3}
    Click Element  ${Field_Value_Elem}
    Click Element  ${Equals_Option}
    Input Text  ${Enter_Value_Txtbox}  ${Field_Value_01}
    Scroll Element Into View  ${Add_Filter_Btn2}
    Click Button  ${Add_Filter_Btn2}
    Scroll Element Into View  ${New_Field_Value_Txtbox_01}  
    Input Text  ${New_Field_Value_Txtbox_01}    ${New_Field_Value_04}

User tests the new transformation
    Click Button  ${Test_Btn_01}
    Click Element  ${Select_Event_Dropdown}
    Input Text  ${Search_Icon}  ${Event_Name_01}
    Press Keys  None  ARROW_DOWN
    Press Keys  None  RETURN 
    Click Button  ${Get_Sample_Btn}
    Sleep  2
    Click Button  ${Test_Btn_02}
    Sleep  3
    Click Button  ${Deploy_Btn}

User runs the event again to apply new transformation
    Click Element  ${Ovrview_Icon}
    Click Element  ${Src_Object_Elem}
    Input Text  ${Src_Object_Text_Elem}  ${Event_Name_01}
    Sleep  1
    Click Element  ${Vertical_Bar_Icon}
    Click Element  ${Run_Now_Opt}

User drags find and replace transformation and provide the details
    Drag And Drop  ${Find_Replace_Elem}  ${Workflow_Transf_Elem}
    Click Button  ${Add_Filter_Btn1}
    Click Element  ${Event_Type_Option}
    Click Element  ${Equals_Option}
    Input Text  ${Enter_Value_Txtbox}  ${Event_Value_02}
    Click Button  ${Add_Filter_Btn2}
    Click Button  ${Add_Filter_Btn3}
    Click Element  ${Field_Name_Elem_01}
    Click Element  ${Equals_Option}
    Scroll Element Into View  ${Enter_Value_Txtbox}
    Input Text  ${Enter_Value_Txtbox}  ${Field_Name_05}
    Scroll Element Into View  ${Add_Filter_Btn2}
    Click Button  ${Add_Filter_Btn2}
    Input Text  ${Find_Elem_txtbox}  ${Field_Value_01}
    Input Text  ${Replace_Elem_Txtbox}  ${Replace_Value}
    Click Element  ${Match_Case_Checkbox}

User drags Mask Fields transformation and provide the details
    Drag And Drop  ${Mask_Field_Elem}  ${Workflow_Transf_Elem}
    Click Button  ${Add_Filter_Btn1}
    Click Element  ${Event_Type_Option}
    Click Element  ${Equals_Option}
    Input Text  ${Enter_Value_Txtbox}  ${Event_Value_02}
    Click Button  ${Add_Filter_Btn2}
    Click Button  ${Add_Filter_Btn3}
    Click Element  ${Field_Name_Elem_01}
    Click Element  ${Equals_Option}
    Scroll Element Into View  ${Enter_Value_Txtbox}
    Input Text  ${Enter_Value_Txtbox}  ${Field_Name_05}
    Scroll Element Into View  ${Add_Filter_Btn2}
    Click Button  ${Add_Filter_Btn2}
    Execute JavaScript  window.scrollTo(0,-100)
    Click Button  ${Add_Filter_Btn3}
    Click Element  ${Field_Value_Elem}
    Click Element  ${Equals_Option}
    Input Text  ${Enter_Value_Txtbox}  ${Field_Value_02}
    Click Element  ${Add_Filter_Btn2}

Close the Browser
    Close Browser