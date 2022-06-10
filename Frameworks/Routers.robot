*** Settings ***
Library                 AppiumLibrary       run_on_failure=AppiumLibrary.Capture Page Screenshot
Library                 OperatingSystem
Library                 String
Library                 RequestsLibrary
Library                 JSONLibrary
Library                 Collections
#Library                 XvfbRobot
Library                 DateTime


#Frameworks
Resource                Configs.robot


#Resource
Resource                /Users/andikaprananto/Documents/ProjAutomation/ALAMI-TestEngineer/Resources/Common/OpenMobileSetUp.robot
Resource                /Users/andikaprananto/Documents/ProjAutomation/ALAMI-TestEngineer/Resources/Class/ClassApplicationFore.robot
Resource                /Users/andikaprananto/Documents/ProjAutomation/ALAMI-TestEngineer/Resources/Common/CommonKey.robot