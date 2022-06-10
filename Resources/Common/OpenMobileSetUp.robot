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
${Device_name}      HT7A61A01144
#${device_name_renot8}    filvgqizde4djzhq
${Appium_server}    http://localhost:4723/wd/hub
${appPackage}       coffee.fore2.fore
${appActivity}      coffee.fore2.fore.MainActivity #com.misteraladin.android.activity.FirstScreenActivity_
${platfrom}         11.0
${automationName}   Uiautomator2


*** Keywords ***
Setup and open dialer Android App
  ${androiddriver}=  Open Application   ${Appium_server}    platformName=android    platformVersion=${platfrom}     deviceName=${Device_name}  automationName=${automationName}
  ...  appPackage=${appPackage}     newCommandTimeout=3000      appActivity=${appActivity}
