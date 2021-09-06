*** Settings ***
Library   SeleniumLibrary
Library   BuiltIn

Suite Setup   Open Web Browser
# Test Setup   
# Test Teardown   Go to   Open Web Browser
Suite Teardown   Closed


*** Variables ***

${url}   https://www.google.co.th/?hl
${Open_gc}   gc
${Open_ff}   ff
${txtSeleniumLibrary}   SeleniumLibrary
${txtSeleniumlibrary5}   Seleniumlibrary
${ENTER}   ENTER

#Xpath SeleniumLibrary link1
${txtinput}   xpath=//Input[@class="gLFyf gsfi"]
${llblink1}   xpath=(//h3[@class="LC20lb DKV0Md"])[1]
${Verifypage}    xpath=//*[text()="SeleniumLibrary"]
${Verifypage5}    xpath=//*[text()="Seleniumlibrary"]
${llblink3}   xpath=(//h3[@class="LC20lb DKV0Md"])[3]
${llblink4}   xpath=(//h3[@class="LC20lb DKV0Md"])[4]
${llblink5}   xpath=(//h3[@class="LC20lb DKV0Md"])[5]

*** Keywords ***

Open Web Browser
   Open Browser   ${url}   ${Open_gc}
   Maximize Browser Window

Search
   Input Text   ${txtinput}   ${txtSeleniumLibrary}
   Press Keys   ${txtinput}   ${ENTER}


Click Link
   Wait Until Element Is Visible   ${llblink3}
   Click Element   ${llblink3}
   Element Text Should Be   ${Verifypage}   ${txtSeleniumLibrary}
   Capture Page Screenshot
   Go Back
   Wait Until Element Is Visible   ${llblink4}
   Click Element   ${llblink4}
   Element Text Should Be   ${Verifypage}   ${txtSeleniumLibrary}
   Capture Page Screenshot
   Go Back
   Wait Until Element Is Visible   ${llblink5}
   Click Element   ${llblink5} 
   Element Text Should Be   ${Verifypage}   ${txtSeleniumLibrary}

Closed
   Capture Page Screenshot
   Close Browser


*** Test Cases ***

Verify page of the link 3, 4, 5
   Search
   Click Link
