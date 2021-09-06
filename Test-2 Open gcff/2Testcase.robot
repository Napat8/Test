*** Settings ***
Library   SeleniumLibrary
Library   BuiltIn


*** Variables ***

${wbsgoogle}   https://www.google.co.th/?hl
${Open_gc}   gc
${Open_ff}   ff
${txtSeleniumLibrary}   SeleniumLibrary
${ENTER}   ENTER
#Xpath SeleniumLibrary link1
${txtinput}   xpath=//Input[@class="gLFyf gsfi"]
${Verifypage}    xpath=//*[text()="SeleniumLibrary"]
${llblink3}   xpath=(//h3[@class="LC20lb DKV0Md"])[3]


*** Keywords ***

Open Web Browser
   Open Browser   ${wbsgoogle}   ${Open_ff}
   Maximize Browser Window

Search
   Input Text   ${txtinput}   ${txtSeleniumLibrary}
   Press Keys   ${txtinput}   ${ENTER}

Click Link
   Wait Until Element Is Visible   ${llblink3}
   Click Element   ${llblink3}
   Element Text Should Be   ${Verifypage}   ${txtSeleniumLibrary}
 
Closed
   Capture Page Screenshot
   Close Browser


*** Test Cases ***
Verify page of the link 3rd in Chrome and Firefox
   Open Web Browser
   Search
   Click Link
   Closed
