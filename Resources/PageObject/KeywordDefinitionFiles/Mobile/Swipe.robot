*** Settings ***
Library     AppiumLibrary
Library    Process
Variables   ../../Locators/Locators_mobile.py
Resource    OpenApplication.robot

*** Variables ***
${APPIUM_PORT}            4723
${APPIUM_SERVER}          http://127.0.0.1:${APPIUM_PORT}/wd/hub
${BOOTSTRAP_PORT}         4724
${ALIAS}                  Android

*** Keywords ***
Swipe Up
    ${element_size}=    Get Element Size    ${frame_id}
    ${element_location}=    Get Element Location    ${frame_id}
    ${start_x}=         Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${start_y}=         Evaluate      ${element_location['y']} + (${element_size['height']} * 0.7)
    ${end_x}=           Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${end_y}=           Evaluate      ${element_location['y']} + (${element_size['height']} * 0.3)
    Swipe               ${start_x}    ${start_y}  ${end_x}  ${end_y}  500
    Sleep  1

Swipe Down
    ${element_size}=    Get Element Size    ${frame_id}
    ${element_location}=    Get Element Location    ${frame_id}
    ${start_x}=         Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${start_y}=         Evaluate      ${element_location['y']} + (${element_size['height']} * 0.3)
    ${end_x}=           Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${end_y}=           Evaluate      ${element_location['y']} + (${element_size['height']} * 0.7)
    Swipe               ${start_x}    ${start_y}  ${end_x}  ${end_y}  500
    Sleep  1

Get Working Path
    Run Process         pwd  shell=True  alias=proc1
    ${WORKING_PATH}=    Get Process Result  proc1  stdout=true
    Set Suite Variable  ${WORKING_PATH}

Spawn Appium Server
    Get Working Path
    Start Process  appium  -p  ${APPIUM_PORT}  -bp  ${BOOTSTRAP_PORT}  stdout=${WORKING_PATH}/appium-log-${ALIAS}.txt  shell=true
    Sleep   5

Close Appium Server
    Run Keyword And Ignore Error  Close All Applications
    Terminate All Processes   kill=True
    Sleep   5




