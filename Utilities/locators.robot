***Variables***

${Browser}  gc
${Url}  https://beta.hevo.me/
${Email_Elem}  xpath://input[@type='email']
${Email_Id}  test@newhevotest.com
${Pwd_Elem}  xpath://input[@type='password']
${Pwd}  password123
${Pwd_Txt}  Enter password
${Login_Btn}  xpath://button[@type='submit']
${Dark_Mode_Txt}  Hevo now has a Dark Mode
${Pipeline_Label_Elem}  xpath://a[@iconname='pipeline']
${Pipeline}  xpath://div[text()=' MySQL01 ']
${Transf_Elem}  xpath://a[@iconname='transformation']
${Txt_01}  User navigates to the pipeline
${Product_Tour_Icon}  xpath://div[@class='product-tour-icon-button-wrapper']
${Drag_Drop_Option}  xpath://hd-menu-item[text()=' Switch to Drag-and-Drop UI ']
${Continue_Btn}  xpath://button[text()=' Continue ']
${Txt_02}  User selects the drag and drop transformation
${Txt_03}  User drags add a field transformation
${Add_Field_Elem}  xpath://div[text()=' Add a Field ']
${Workflow_Transf_Elem}  xpath://div[@class='workflow-container']
${Add_Filter_Btn1}  xpath://button[text()=' Add Filter ']
${Event_Type_Option}  xpath://fs-option[text()=' Event Type ']
${Equals_Option}  xpath://fs-option[text()=' Equals ']
${Enter_Value_Txtbox}  xpath://input[@placeholder='Value']
${Event_Value}  demo.departments
${Add_Filter_Btn2}  xpath://button[@class='btn btn-primary']
${New_Field_Name_Txtbox}  xpath://input[@name='field-name']
${Field_Name_01}  dept_loc
${New_Field_Value_Txtbox}  xpath://input[@name='field-value']
${New_Field_Value_01}  "India"

${Txt_04}  User applies the transformation
${Test_Btn_01}  xpath://button[@class='btn btn-secondary']
${Select_Event_Dropdown}  xpath://span[text()=' Select Event Type ']
${Search_Icon}  xpath://input[@placeholder='Select Event Type']
${Event_Name}  demo.departments
${Get_Sample_Btn}  xpath://button[text()=' Get Sample ']
${Test_Btn_02}  xpath://button[@class='btn btn-primary']
${Deploy_Btn}  xpath://button[text()=' Deploy ']
${Txt_05}  User deploys the transformation
${Build_Btn}  xpath://div[@class='btn-group btn-group-toggle']/button[1]
${Drop_Field_Elem}  xpath://div[text()=' Drop Fields ']
${Add_Filter_Btn3}  xpath://filter-group[@class='mt-4 ng-star-inserted']/button
${Field_Name_Elem_01}  xpath://fs-option[text()=' Field Name ']
${If_Else_Elem}  xpath://div[text()=' If Else ']
${Rename_Field_Elem}  xpath://div[text()=' Rename Fields ']
${Field_Name_Elem_02}  xpath://input[@name='field-name']
${Field_Name_02}  dept_name
${New_Field_Elem}  xpath://input[@name='new-name']
${New_Field_Value_02}  dept_na
${Ovrview_Icon}  xpath://a[@iconname='overview']
${Src_Object_Elem}  xpath://searcharea[@placeholder='Search Objects']
${Src_Object_Text_Elem}  xpath://input[@placeholder='Search Objects']
${Vertical_Bar_Icon}  xpath://div[@class='status-actions-container']/button
${Run_Now_Opt}  xpath://hd-icon[@name='run-now']
${Event_Field_Opt}  xpath://fs-option[text()=' Event Field ']
${Field_Name_Txtbox}  xpath://input[@placeholder='Field Name']
${Field_Name_03}  dept_name
${Select_Field_Btn}  xpath://button[text()=' Select Field ']
${Field_Value}  Marketing

#destination
${Dest_Label_Elem}  xpath://a[@iconname='destinations']
${Txt_06}  User navigates to destination
${Dest_Elem}  xpath://span[text()=' #6 ']
${Workbench_Link}  xpath://a[@label='Workbench']
${Txt_07}  User navigates to the workbench section
${Dest_Name}  Redshift01
${Search_Icon_Elem}  xpath://searcharea[@placeholder='Search Schema']
${Txt_08}  User search for the destination table
${Search_Bar_Elem}  xpath://input[@type='text']
${Tbl_Name}  ab_demo_departments
${Db_Query}  SELECT * FROM "demo"."public"."ab_demo_departments";
${Workbench_Elem}  xpath://div[@class='CodeMirror-scroll']
${Txt_09}  User enters the select query and executes the query.
${Run_Query_Btn}  xpath://button[@class='btn btn-secondary btn-thumbnail-left']
${Qry_Result_Txt}  Query Results
${Tbl_Row}  xpath://table/tbody/tr
${Tbl_Col}  xpath://table/thead/tr/th
${Table}  xpath://table[@class='data-table']

#webhook
${Base_Url}  https://beta-t.hevo.me/t
${My_Session}  beta
${End_Pt}  /g7iwqqfoe2
${Pipeline_01}  xpath://div[text()=' Webhook01 ']
${Event_Value_01}  agents
${Field_Name_04}  agent_dept
${New_Field_Value_03}  "Insurance"
${Tbl_Name_01}  wb_agents
${Db_Query_01}  SELECT * FROM "demo"."public"."wb_agents";

${Chage_Field_Value_Elem}  xpath://div[text()=' Change Field Values ']
${Event_Value_02}  demo.dept_manager
${Field_Name_05}  dept_no
${Field_Value_Elem}  xpath://fs-option[text()=' Field Value ']
${Field_Value_01}  d006
${New_Field_Value_Txtbox_01}  xpath://input[@placeholder='New Value']
${New_Field_Value_04}  "Dept006"
${Event_Name_01}  demo.dept_manager
${Tbl_Name_02}  tablemysql_demo_dept_manager01
${Db_Query_02}  SELECT * FROM "demo"."public"."tablemysql_demo_dept_manager01";
${Find_Replace_Elem}  xpath://div[text()=' Find & Replace ']
${Find_Elem_txtbox}  xpath://input[@placeholder='Find']
${Replace_Elem_Txtbox}  xpath://input[@placeholder='Replace']
${Replace_Value}  D666
${Match_Case_Checkbox}  xpath://mat-checkbox[@name='match-case']

${Mask_Field_Elem}  xpath://div[text()=' Mask Fields ']
${Field_Value_02}  d005
${Tbl_Name_03}  tablemysql_demo_dept_manager
${Db_Query_03}  SELECT * FROM "demo"."public"."tablemysql_demo_dept_manager";