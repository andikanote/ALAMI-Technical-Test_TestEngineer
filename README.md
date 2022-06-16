# ALAMI-Technical Test [TestEngineer]
 ALAMI Techinical Test

#Getting Started with Robot Framework Here are the prerequisites for running this acceptance testing framework.

    Python with PIP
    PIP3 install robotframework
    IDE PyCharme
    PIP3
    PIP3 install robotframework-Appiumlibrary
 
#Install Application Appium GUI 12.0.0, for connection Real Device & Get Element UIAutomator Mobile Android
    
    Download Appium 12.0.0
    Installtion
    Star Server
    
    #For Get Element UIAutomator
    {
    "platformName": "Android", // Device Type
    "platformVersion": "11", // Version Android
    "app": "/Users/unamedevices/Desktop/BrowserDriver/base.apk", // Path Location Real APK Fore
    "deviceName": "HT7A61A01144", // Device Name "adb Devices" on Terminal
    "automationName": "UiAutomator2"
    }
   
    
#Comman line running file robotframework
   
    Run Terminal
    $robot -d Result SuiteTest/TestForeApplication.robot
    
#File Directory Functional or Class Xpath

    /ALAMI-TestEngineer/Resources/Class/ClassApplicationFore.robot
    
#File Directory For Run SuiteTest Flip

    SuiteTest/TestForeApplication.robot
    
#Directory Running Result

    - Result
    -- report.html
    -- log.html
    -- output.xml


