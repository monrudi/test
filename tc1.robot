*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary
Library     Collections
Library     ExcelLibrary
Library     openpyxl

*** Variables ***
${excel}    ../FWD/datatest.xlsx

*** Test cases ***
Test case 1
    ${wb}       Load Workbook       ${excel}
    ${ws}       Set Variable    ${wb.get_active_sheet()}

    ${dateOfBirth}     Set Variable    ${ws.cell(2,2).value}
    Log to console  dateOfBirth=${dateOfBirth}

    ${height}     Set Variable    ${ws.cell(2,3).value}
    Log to console  height=${height}

    ${weight}   Set Variable    ${ws.cell(2,4).value}
    Log to console  weight=${weight}

    ${fname}   Set Variable    ${ws.cell(2,5).value}
    Log to console  fname=${fname}

    ${lname}   Set Variable    ${ws.cell(2,6).value}
    Log to console  lname=${lname}

    ${idCard}   Set Variable    ${ws.cell(2,7).value}
    Log to console  idCard={$idCard}
    
    ${laserIdCard}   Set Variable    ${ws.cell(2,8).value}
    Log to console  laserIdCard=${laserIdCard}


    ${options}=    Evaluate  sys.modules['selenium.webdriver.chrome.options'].Options()    sys
    Call Method     ${options}    add_argument    --disable-notifications
    ${driver}=    Create Webdriver    Chrome    options=${options}
    Go To     https://ifwd.fwd.co.th/easy-e-life/product-detail 
    maximize browser window
    go to   https://ifwd.fwd.co.th/easy-e-life/policy-benefit
#cookie

# Step 1/2
    Click Element   //*[@id="__layout"]/div/div[1]/div[2]/div/form/div[1]/div/div[1]/div/div/label[2]/span
    Click Element   //*[@id="__layout"]/div/div[1]/div[2]/div/form/div[1]/div/div[2]/div/div[1]/div
    Input Text      dateOfBirth    ${dateOfBirth}
    Click Element   //*[@id="__layout"]/div/div[1]/div[2]/div/form/div[2]/div/button
    SLEEP   3

    Click Element   //*[@class="insurance-price-detail"]
    SLEEP   3
    Click Element   //*[@id="__layout"]/div/div[1]/div[5]/button

    SLEEP   3
    Input Text   height    ${height}
    Input Text  weight  ${weight}
    Click Element   //*[@id="__layout"]/div/div[1]/div[2]/div/div/div[1]/form/div[2]/div/div[2]/button
# Step 2/2
    SLEEP   3
    Execute JavaScript    window.scrollTo(0,1500)
    # Execute JavaScript    window.scrollTo(2000, document.body.scrollHeight)
    Click Element   //*[@id="__layout"]/div/div[1]/div[2]/div/div/div[1]/form/div[4]/div[1]/button
    

# Next to 2/3
    SLEEP   3
    Execute JavaScript    window.scrollTo(0,1400)
    Click Element   //*[@id="__layout"]/div/div[1]/div[2]/div/div/div[1]/form/div[2]/div[1]/button
 
    SLEEP   3
    Click Element   //*[@class="vs__selected-options"]
    Click Element   //*[@id="__layout"]/div/div[1]/div[2]/div/div/div[1]/form/div[1]/div/div/div[1]
    Click Element   xpath: //*[contains(text(), "นาง")]	
    Click Element   //*[@id="select-prefix"]/ul/li[1]
    Input Text  fname   ${fname}
    Input Text  lname   ${lname}
    # Click Element   //*[@id="select-prefix"]/div/div[1]/input
    Click Element   idCard
    Input Text    idCard    ${idCard}
    Set Focus To Element    //*[@id="__layout"]/div/div[1]/div[2]/div/div/div[1]/form/div[1]/div/div/div[1]
    Input Text  laserIdCard    ${laserIdCard}
    Execute JavaScript    window.scrollTo(0,500)

    Click Element    //*[@class="checkbox"]
    SLEEP   3
    Click Element   //*[@id="__layout"]/div/div[1]/div[2]/div/div/div[1]/form/div[3]/div[1]/button
    Close Browser



   
