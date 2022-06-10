*** Settings ***
#Library                         SeleniumLibrary
#Library                        OperatingSystem
#Library                        String
#Library                        RequestsLibrary
#Library                        JSONLibrary
#Library                        Collections
#Library                         XvfbRobot
Resource                        /Users/andikaprananto/Documents/ProjAutomation/ALAMI-TestEngineer/Frameworks/Routers.robot


*** Variables ***



*** Keywords ***
Allow Pemission Location
#    wait until element is visible       id=permission_allow_one_time_button
#    Click Element                       id=permission_allow_one_time_button
    wait until element is visible       com.android.permissioncontroller:id/permission_allow_one_time_button
    click element                       com.android.permissioncontroller:id/permission_allow_one_time_button