*** Settings ***
Library     AppiumLibrary
#Library     SeleniumLibrary
Variables   ../../Locators/Locators_mobile.py

*** Keywords ***
Launch Application
        Open Application  http://localhost:4723/wd/hub  platformName=Android  platformVersion=12.0  deviceName=ANQL6R2C20009240
        ...  appPackage=my.com.tmrnd.eptw    appActivity=my.com.tmrnd.eptw.MainActivity  automationName=Uiautomator2
        Sleep    5
#        Set Selenium Implicit Wait    30
        Wait Until Page Contains Element    ${cs_menu}   timeout=20
        Wait Until Page Contains Element    ${hr_menu}   timeout=20
        Wait Until Page Contains Element    ${ss_menu}   timeout=20
        Capture Page Screenshot




