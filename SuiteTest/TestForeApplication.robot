*** Settings ***
Documentation                   ALAMI Technical Recruitment Process
Library                         AppiumLibrary   run_on_failure=AppiumLibrary.Capture Page Screenshot
#Resource                       ../Resources/Common/Browsers.robot
#Resource                        ../../../Frameworks/RoutersMobile.robot
Resource                        /Users/andikaprananto/Documents/ProjAutomation/ALAMI-TestEngineer/Frameworks/Routers.robot


*** Variables ***
${slider_path}                  id=walkthrough_slider






*** Test Cases ***
TC001 Open application and allow permission apps
    [Documentation]             Open application and allow permission apps
	[Tags]                      ALAMI Technical Test
    OpenMobileSetUp.Setup and open dialer Android App
    ClassApplicationFore.Swipe Left to Right SplashScreen
    CommonKey.Allow Pemission Location

TC002 After Open App & Allow Pemission, Click Order Now
    [Documentation]             Open application and allow permission apps
	[Tags]                      ALAMI Technical Test
	ClassApplicationFore.Order Now Coffe
    ClassApplicationFore.Choose one menu & product Coffe
    ClassApplicationFore.Scroll Element Optional Topping
    ClassApplicationFore.Scroll Element Optional Topping
    ClassApplicationFore.Choose Ice Cube Normal to Less Ice
    ClassApplicationFore.Choose Syrup 'Aren'
    ClassApplicationFore.Scroll Element Add To Cart
    ClassApplicationFore.Click Add To Cart

TC003 Order Coffe Espresso in Indonesia Flavor
    [Documentation]             Open application and allow permission apps
	[Tags]                      ALAMI Technical Test
	ClassApplicationFore.Order Coffe Espresso in Indonesia Flavor
	ClassApplicationFore.Scroll Element to Espresso Coffe
		ClassApplicationFore.Scroll Two Element to Espresso Coffe
	ClassApplicationFore.Choose Coffe Espresso & Verify Price 17.000
	ClassApplicationFore.Scroll Element Add To Cart Espresso
	ClassApplicationFore.Click Add To Cart
	ClassApplicationFore.Validasi item in Cart

TC004 Scroll & Order Stainlees Straw
    [Documentation]             Open application and allow permission apps
	[Tags]                      ALAMI Technical Test
	ClassApplicationFore.Scroll Add To Marchendise "Stainlees Straw"
    ClassApplicationFore.Add To Marchendise "Stainlees Straw"
    ClassApplicationFore.Click Add To Cart
    ClassApplicationFore.Order Now
    ClassApplicationFore.Input No Handphone & Order























