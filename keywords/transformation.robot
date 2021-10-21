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

User navigates to the transformation section and selects Drag Drop
    ${count}=  Get Element Count  ${Get_Sample_Btn}
    Return From Keyword If  ${count} == 0
    Wait until element is visible  ${Product_Tour_Icon}
    Click Element  ${Product_Tour_Icon}
    Click Element  ${Drag_Drop_Option}
    Wait until element is visible  ${Continue_Btn}
    Click Element  ${Continue_Btn}

User drags add field transformation block and provide the transformation details
    Drag And Drop  ${Add_Field_Elem}  ${Workflow_Transf_Elem}
    Click Button  ${Add_Filter_Btn1}
    Click Element  ${Event_Type_Option}
    Click Element  ${Equals_Option}
    Input Text  ${Enter_Value_Txtbox}  ${Event_Value}
    Click Button  ${Add_Filter_Btn2}
    Input Text  ${New_Field_Name_Txtbox}  ${Field_Name_01}
    Input Text  ${New_Field_Value_Txtbox}  ${New_Field_Value_01}

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
    Execute JavaScript  window.scrollTo(0,-100)
    Input Text  ${Enter_Value_Txtbox}  ${Field_Name_01}
    Click Button  ${Add_Filter_Btn2}

User drags if-else transformation block and provides the details
    Click Element  ${Rename_Event_Block}
    Click Element  ${Delete_Block_Elem}
    Click Button  ${Deploy_Btn}
    Sleep  2
    Click Button  ${Confirm_Btn}
    Sleep  1
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
    Drag And Drop By Offset  ${Rename_Field_Elem}  240  -20
    Click Button  ${Add_Filter_Btn1}
    Click Element  ${Event_Type_Option}
    Click Element  ${Equals_Option}
    Input Text  ${Enter_Value_Txtbox}  ${Event_Value}
    Click Button  ${Add_Filter_Btn2}
    Input Text  ${Field_Name_Elem_02}  ${Field_Name_02}
    Input Text  ${New_Field_Elem}  ${New_Field_Value_02}

User drags change field value transformation and provide the details
    Click Element  ${Drop_Event_Block}
    Click Element  ${Delete_Block_Elem}
    Click Button  ${Deploy_Btn}
    Sleep  2
    Click Button  ${Confirm_Btn}
    Sleep  1
    Drag And Drop  ${Change_Field_Value_Elem}  ${Workflow_Transf_Elem}
    Click Button  ${Add_Filter_Btn1}
    Click Element  ${Event_Type_Option}
    Click Element  ${Equals_Option}
    Input Text  ${Enter_Value_Txtbox}  ${Event_Value_02}
    Click Button  ${Add_Filter_Btn2}
    Click Button  ${Add_Filter_Btn3}
    Click Element  ${Field_Name_Elem_01}
    Click Element  ${Equals_Option}
    Execute JavaScript  window.scrollTo(0,-100)
    Input Text  ${Enter_Value_Txtbox}  ${Field_Name_05}
    Click Button  ${Add_Filter_Btn2}
    Click Button  ${Add_Filter_Btn3}
    Click Element  ${Field_Value_Elem}
    Click Element  ${Equals_Option}
    Input Text  ${Enter_Value_Txtbox}  ${Field_Value_01}
    Click Button  ${Add_Filter_Btn2}
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
    Click Element  ${Change_Field_Value_Block}
    Click Element  ${Delete_Block_Elem}
    Click Button  ${Deploy_Btn}
    Sleep  2
    Click Button  ${Confirm_Btn}
    Sleep  1
    Drag And Drop  ${Find_Replace_Elem}  ${Workflow_Transf_Elem}
    Click Button  ${Add_Filter_Btn1}
    Click Element  ${Event_Type_Option}
    Click Element  ${Equals_Option}
    Input Text  ${Enter_Value_Txtbox}  ${Event_Value_02}
    Click Button  ${Add_Filter_Btn2}
    Click Button  ${Add_Filter_Btn3}
    Click Element  ${Field_Name_Elem_01}
    Click Element  ${Equals_Option}
    Execute JavaScript  window.scrollTo(0,-100)
    Input Text  ${Enter_Value_Txtbox}  ${Field_Name_05}
    Click Button  ${Add_Filter_Btn2}
    Input Text  ${Find_Elem_txtbox}  ${Field_Value_01}
    Input Text  ${Replace_Elem_Txtbox}  ${Replace_Value}
    Click Element  ${Match_Case_Checkbox}

User drags Mask Fields transformation and provide the details
    Click Element  ${Find_And_Replace_Block}
    Click Element  ${Delete_Block_Elem}
    Click Button  ${Deploy_Btn}
    Sleep  2
    Click Button  ${Confirm_Btn}
    Sleep  1
    Drag And Drop  ${Mask_Field_Elem}  ${Workflow_Transf_Elem}
    Click Button  ${Add_Filter_Btn1}
    Click Element  ${Event_Type_Option}
    Click Element  ${Equals_Option}
    Input Text  ${Enter_Value_Txtbox}  ${Event_Value_02}
    Click Button  ${Add_Filter_Btn2}
    Click Button  ${Add_Filter_Btn3}
    Click Element  ${Field_Name_Elem_01}
    Click Element  ${Equals_Option}
    Execute JavaScript  window.scrollTo(0,-100)
    Input Text  ${Enter_Value_Txtbox}  ${Field_Name_05}
    Click Button  ${Add_Filter_Btn2}
    Click Button  ${Add_Filter_Btn3}
    Click Element  ${Field_Value_Elem}
    Click Element  ${Equals_Option}
    Input Text  ${Enter_Value_Txtbox}  ${Field_Value_02}
    Click Button  ${Add_Filter_Btn2}

User drags Hash Fields transformation and provide the details
    Click Element  ${Mask_Field_Block}
    Click Element  ${Delete_Block_Elem}
    Click Button  ${Deploy_Btn}
    Sleep  2
    Click Button  ${Confirm_Btn}
    Sleep  1
    Drag And Drop  ${Hash_Field_Elem}  ${Workflow_Transf_Elem}
    Click Button  ${Add_Filter_Btn1}
    Click Element  ${Event_Type_Option}
    Click Element  ${Equals_Option}
    Input Text  ${Enter_Value_Txtbox}  ${Event_Value_02}
    Click Button  ${Add_Filter_Btn2}
    Click Button  ${Add_Filter_Btn3}
    Click Element  ${Field_Name_Elem_01}
    Click Element  ${Equals_Option}
    Execute JavaScript  window.scrollTo(0,-100)
    Input Text  ${Enter_Value_Txtbox}  ${Field_Name_05}
    Click Button  ${Add_Filter_Btn2}
    Click Button  ${Add_Filter_Btn3}
    Click Element  ${Field_Value_Elem}
    Click Element  ${Equals_Option}
    Input Text  ${Enter_Value_Txtbox}  ${Field_Value_02}
    Click Button  ${Add_Filter_Btn2}
    Click Element  ${Hashing_Dropdown_Elem}
    Click Element  ${Dropdown_Option}

User drags Modify Test Casing transformation and provide the details
    Click Element  ${Hash_Field_Block}
    Click Element  ${Delete_Block_Elem}
    Click Button  ${Deploy_Btn}
    Sleep  2
    Click Button  ${Confirm_Btn}
    Sleep  1
    Drag And Drop  ${Modify_Text_Casing_Elem}  ${Workflow_Transf_Elem}
    Click Button  ${Add_Filter_Btn1}
    Click Element  ${Event_Type_Option}
    Click Element  ${Equals_Option}
    Input Text  ${Enter_Value_Txtbox}  ${Event_Value}
    Click Button  ${Add_Filter_Btn2}
    Click Button  ${Add_Filter_Btn3}
    Click Element  ${Field_Name_Elem_01}
    Click Element  ${Equals_Option}
    Execute JavaScript  window.scrollTo(0,-100)
    Input Text  ${Enter_Value_Txtbox}  ${Field_Name_03}
    Click Button  ${Add_Filter_Btn2}
    Click Button  ${Add_Filter_Btn3}
    Click Element  ${Field_Value_Elem}
    Click Element  ${Equals_Option}
    Input Text  ${Enter_Value_Txtbox}  ${Field_Value}
    Click Button  ${Add_Filter_Btn2}
    Click Element  ${Text_Case_Elem}
    Click Element  ${Upper_Case_Option}
     
User drags Rename Events transformation and provide the details
    Click Element  ${Modify_Text_Casing_Block}
    Click Element  ${Delete_Block_Elem}
    Click Button  ${Deploy_Btn}
    Sleep  2
    Click Button  ${Confirm_Btn}
    Sleep  1
    Drag And Drop  ${Rename_Events_Elem}  ${Workflow_Transf_Elem}
    Click Button  ${Add_Filter_Btn1}
    Click Element  ${Event_Type_Option}
    Click Element  ${Equals_Option}
    Input Text  ${Enter_Value_Txtbox}  ${Event_Value_02}
    Click Button  ${Add_Filter_Btn2}
    Input Text  ${New_Event_Name_Txtfield}  ${New_Event_Name}

User drags Format Number to String transformation and provide the details
    Drag And Drop  ${Format_Date_To_String}  ${Workflow_Transf_Elem}
    Click Button  ${Add_Filter_Btn1}
    Click Element  ${Event_Type_Option}
    Click Element  ${Equals_Option}
    Input Text  ${Enter_Value_Txtbox}  ${Event_Value_02}
    Click Button  ${Add_Filter_Btn2}
    Click Button  ${Add_Filter_Btn3}
    Click Element  ${Field_Name_Elem_01}
    Click Element  ${Equals_Option}
    Execute JavaScript  window.scrollTo(0,-100)
    Input Text  ${Enter_Value_Txtbox}  ${Field_Name_06}
    Click Button  ${Add_Filter_Btn2}
    Click Element  ${String_Format_Elem}
    Click Element  ${Number_Option}

User drags drop field transformation block and provide the transformation details
    Click Element  ${Add_Field_Block}
    Click Element  ${Delete_Block_Elem}
    Click Button  ${Deploy_Btn}
    Sleep  2
    Click Button  ${Confirm_Btn}
    Sleep  1
    Drag And Drop  ${Drop_Field_Elem}  ${Workflow_Transf_Elem}
    Click Button  ${Add_Filter_Btn1}
    Click Element  ${Event_Type_Option}
    Click Element  ${Equals_Option}
    Input Text  ${Enter_Value_Txtbox}  ${Event_Value}
    Click Button  ${Add_Filter_Btn2}
    Click Button  ${Add_Filter_Btn3}
    Click Element  ${Field_Name_Elem_01}
    Click Element  ${Equals_Option}
    Execute JavaScript  window.scrollTo(0,-100)
    Input Text  ${Enter_Value_Txtbox}  ${Field_Name_01}
    Click Button  ${Add_Filter_Btn2}

Close the Browser
    Close Browser