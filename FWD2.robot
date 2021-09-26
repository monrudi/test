
*** Settings ***
Library    ExcelLibrary
Library     Selenium2Library
Library     common.py
Library     Collections
Library     String
Library     BuiltIn


*** Variables ***
${DataTable}            ../FWD/datatest.xls
${sheetName}            data
${testcaseName}         TC01


*** Test cases ***
Read file

    ${datatest}=    get data test case    ${DataTable}    ${sheetName}     ${testcaseName}
    ${search_parm}=       Set Variable    ${datatest}
    Log to console   ${search_parm}
    @{a}=    Set Variable    ${search_parm}



   


# open website with popup

#     ${options}=    Evaluate  sys.modules['selenium.webdriver.chrome.options'].Options()    sys
#     Call Method     ${options}    add_argument    --disable-notifications
#     ${driver}=    Create Webdriver    Chrome    options=${options}
#     Go To     https://ifwd.fwd.co.th/easy-e-life/product-detail 
#     maximize browser window
#     go to   https://ifwd.fwd.co.th/easy-e-life/policy-benefit
    
# //Step 1/2
#     Click Element   //*[@id="__layout"]/div/div[1]/div[2]/div/form/div[1]/div/div[1]/div/div/label[2]/span
#     Click Element   //*[@id="__layout"]/div/div[1]/div[2]/div/form/div[1]/div/div[2]/div/div[1]/div
#     Input Text      dateOfBirth  ${dateOfBirth}
#     Click Element   //*[@id="__layout"]/div/div[1]/div[2]/div/form/div[2]/div/button
#     SLEEP   3


# *** Keyword *** 
# for
#     ${Getrow}   BuiltIn.Get Count   ${Sheet}
#     : for   ${Index}    In Range    1   ${Getrow} 
#     \   @{data}=    Get Data Excel  ${Sheet}    ${Index}
#     \   Add Data    @{data}[0]  @{data}[1]  @{data}[2]  @{data}[3]  @{data}[4]  @{data}[5]

# Get data Excel
#     [Arguments]    ${Sheet}    ${Index}
#     ${dateOfBirth}=    Read Cell Data By Coordinates    ${Sheet}    0   ${Index}
#     ${height}=    Read Cell Data By Coordinates    ${Sheet}    1   ${Index}
#     &{weight}=    Read Cell Data By Coordinates    ${Sheet}    2   ${Index}
#     ${fname}=    Read Cell Data By Coordinates    ${Sheet}    3   ${Index}
#     ${lname}=    Read Cell Data By Coordinates    ${Sheet}    4   ${Index}
#     ${idCard}=    Read Cell Data By Coordinates    ${Sheet}    5   ${Index}
#     @{sData}=   Set Variables   ${dateOfBirth}  ${height}   &{weight}   ${fname}    ${lname}    ${idCard}
#     [Return]    @{sData}

