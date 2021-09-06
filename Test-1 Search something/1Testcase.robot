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
${llblink1}   xpath=(//h3[@class="LC20lb DKV0Md"])[1]
${Verifypage1}    xpath=//h1[text()="SeleniumLibrary"]


*** Keywords ***

Open Web Browser
   Open Browser   ${wbsgoogle}   ${Open_gc}
   Maximize Browser Window

Search
   Input Text   ${txtinput}   ${txtSeleniumLibrary}
   Press Keys   ${txtinput}   ${ENTER}

Click Link
   Wait Until Element Is Visible   ${llblink1}
   Click Element   ${llblink1}
   Element Text Should Be   ${Verifypage1}   ${txtSeleniumLibrary}

Closed
   Capture Page Screenshot
   Close Browser


*** Test Cases ***

Verify Page Selenium Library
   Open Web Browser
   Search
   Click Link
   Closed




   

   

