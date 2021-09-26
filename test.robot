*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           String
Library     openpyx
Library     BuiltIn

*** Variables ***
${excel}    ../FWD/datatest.xlsx

*** Test cases ***
Get date Excel
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