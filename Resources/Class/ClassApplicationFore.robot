*** Settings ***
Resource                        /Users/andikaprananto/Documents/ProjAutomation/ALAMI-TestEngineer/Frameworks/Routers.robot

*** Variables ***
${slider_path}                  id=walkthrough_slider
${btn_close}                    id=wlk_close_button
${btn_close2}                   xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.widget.ImageView
${btn_next}                     id=button_text_button
${scroll_path_addToCart}        xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.widget.ScrollView






*** Keywords ***
Swipe Left to Right SplashScreen
    Wait until element is visible       ${slider_path}
    ${element_size}=    Get Element Size    ${slider_path}
    ${element_location}=    Get Element Location   ${slider_path}
    ${start_x}=         Evaluate      ${element_location['x']} + (${element_size['width']} * 0.1)
    ${start_y}=         Evaluate      ${element_location['y']} + (${element_size['height']} * 0.1)
    ${end_x}=           Evaluate      ${element_location['x']} + (${element_size['width']} * 1)
    ${end_y}=           Evaluate      ${element_location['y']} + (${element_size['height']} * 0.1)
    Swipe               ${start_x}    ${start_y}  ${end_x}  ${end_y}  500
    Sleep  1
    Click Element       ${btn_close}
        Click Element       ${btn_close2}
        Click Element       ${btn_next}

Order Now Coffe
    Wait until element is visible    coffee.fore2.fore:id/button_text_button
    Click Element                    coffee.fore2.fore:id/button_text_button

Choose one menu & product Coffe
    Sleep                           2s
    wait until element is visible   xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup[2]/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[6]/android.widget.FrameLayout/android.widget.ImageView
    Click Element                   xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup[2]/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[6]/android.widget.FrameLayout/android.widget.ImageView
    wait until element is visible   xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup[3]/android.widget.ScrollView/android.widget.LinearLayout/androidx.recyclerview.widget.RecyclerView/android.widget.LinearLayout/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[3]/android.widget.FrameLayout/android.widget.ImageView
    Click Element                   xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup[3]/android.widget.ScrollView/android.widget.LinearLayout/androidx.recyclerview.widget.RecyclerView/android.widget.LinearLayout/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[3]/android.widget.FrameLayout/android.widget.ImageView

Scroll Element Optional Topping
    ${element_size}=    Get Element Size    ${scroll_path_addToCart}
	  ${element_location}=    Get Element Location    ${scroll_path_addToCart}
	  ${start_x}=         Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
	  ${start_y}=         Evaluate      ${element_location['y']} + (${element_size['height']} * 0.7)
	  ${end_x}=           Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
	  ${end_y}=           Evaluate      ${element_location['y']} + (${element_size['height']} * 0.3)
	  Swipe               ${start_x}    ${start_y}  ${end_x}  ${end_y}      550
	  Sleep  1

Choose Ice Cube Normal to Less Ice
    Sleep                           2s
    wait until element is visible   xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.widget.ScrollView/android.widget.LinearLayout/androidx.viewpager.widget.ViewPager/android.widget.LinearLayout/androidx.recyclerview.widget.RecyclerView/android.widget.FrameLayout[2]/android.view.ViewGroup/android.view.View
    Click Element                   xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.widget.ScrollView/android.widget.LinearLayout/androidx.viewpager.widget.ViewPager/android.widget.LinearLayout/androidx.recyclerview.widget.RecyclerView/android.widget.FrameLayout[2]/android.view.ViewGroup/android.view.View
    wait until element is visible   xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[2]/android.widget.LinearLayout/android.widget.RadioButton
    Click Element                   xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[2]/android.widget.LinearLayout/android.widget.RadioButton

Choose Syrup 'Aren'
    wait until element is visible   xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.widget.ScrollView/android.widget.LinearLayout/androidx.viewpager.widget.ViewPager/android.widget.LinearLayout/androidx.recyclerview.widget.RecyclerView/android.widget.FrameLayout[5]/android.view.ViewGroup/android.widget.ImageView
    Click Element                   xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.widget.ScrollView/android.widget.LinearLayout/androidx.viewpager.widget.ViewPager/android.widget.LinearLayout/androidx.recyclerview.widget.RecyclerView/android.widget.FrameLayout[5]/android.view.ViewGroup/android.widget.ImageView
    wait until element is visible   xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[2]/android.widget.TextView[1]
    Click Element                   xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[2]/android.widget.TextView[1]

Scroll Element Add To Cart
    ${element_size}=    Get Element Size    ${scroll_path_addToCart}
	  ${element_location}=    Get Element Location    ${scroll_path_addToCart}
	  ${start_x}=         Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
	  ${start_y}=         Evaluate      ${element_location['y']} + (${element_size['height']} * 0.7)
	  ${end_x}=           Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
	  ${end_y}=           Evaluate      ${element_location['y']} + (${element_size['height']} * 0.3)
	  Swipe               ${start_x}    ${start_y}  ${end_x}  ${end_y}      500
	  Sleep  1

Click Add To Cart
    wait until element is visible       coffee.fore2.fore:id/product_add_to_cart
    click element                       coffee.fore2.fore:id/product_add_to_cart
    Sleep                               3s

Order Coffe Espresso in Indonesia Flavor
    wait until element is visible       xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup[2]/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[3]/android.widget.TextView
    Click Element                       xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup[2]/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[3]/android.widget.TextView

Scroll Element to Espresso Coffe
    ${element_size}=    Get Element Size    	coffee.fore2.fore:id/catalog_scroll_view
            ${element_location}=    Get Element Location    	coffee.fore2.fore:id/catalog_scroll_view
            ${start_x}=         Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
            ${start_y}=         Evaluate      ${element_location['y']} + (${element_size['height']} * 0.3)
            ${end_x}=           Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
            ${end_y}=           Evaluate      ${element_location['y']} + (${element_size['height']} * 0.7)
            Swipe               ${start_x}    ${start_y}  ${end_x}  ${end_y}  300
            Sleep  1

Scroll Two Element to Espresso Coffe
    ${element_size}=    Get Element Size    	coffee.fore2.fore:id/catalog_scroll_view
            ${element_location}=    Get Element Location    	coffee.fore2.fore:id/catalog_scroll_view
            ${start_x}=         Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
            ${start_y}=         Evaluate      ${element_location['y']} + (${element_size['height']} * 0.3)
            ${end_x}=           Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
            ${end_y}=           Evaluate      ${element_location['y']} + (${element_size['height']} * 0.7)
            Swipe               ${start_x}    ${start_y}  ${end_x}  ${end_y}  600
            Sleep  1

Choose Coffe Espresso & Verify Price 17.000
    Wait until element is visible       xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup[3]/android.widget.ScrollView/android.widget.LinearLayout/androidx.recyclerview.widget.RecyclerView/android.widget.LinearLayout/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[1]/android.widget.TextView
    Click Element                       xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup[3]/android.widget.ScrollView/android.widget.LinearLayout/androidx.recyclerview.widget.RecyclerView/android.widget.LinearLayout/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[1]/android.widget.TextView
    wait until element is visible       coffee.fore2.fore:id/product_detail_product_price
    Page should contain element         coffee.fore2.fore:id/product_detail_product_price       17.000

Scroll Element Add To Cart Espresso
    ${element_size}=    Get Element Size    ${scroll_path_addToCart}
	  ${element_location}=    Get Element Location    ${scroll_path_addToCart}
	  ${start_x}=         Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
	  ${start_y}=         Evaluate      ${element_location['y']} + (${element_size['height']} * 0.7)
	  ${end_x}=           Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
	  ${end_y}=           Evaluate      ${element_location['y']} + (${element_size['height']} * 0.3)
	  Swipe               ${start_x}    ${start_y}  ${end_x}  ${end_y}      300

	${element_size}=    Get Element Size    ${scroll_path_addToCart}
	  ${element_location}=    Get Element Location    ${scroll_path_addToCart}
	  ${start_x}=         Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
	  ${start_y}=         Evaluate      ${element_location['y']} + (${element_size['height']} * 0.7)
	  ${end_x}=           Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
	  ${end_y}=           Evaluate      ${element_location['y']} + (${element_size['height']} * 0.3)
	  Swipe               ${start_x}    ${start_y}  ${end_x}  ${end_y}      300
	  Sleep  1

Validasi item in Cart
    wait until element is visible        coffee.fore2.fore:id/catalog_header_cart_icon
    Click Element                       coffee.fore2.fore:id/catalog_header_cart_icon
    Wait until element is visible       xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[1]/android.widget.TextView
    Element Should Contain Text         xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[1]/android.widget.TextView          Hot Espresso
    Element Should Contain Text         xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[2]/android.widget.TextView          Iced Manuka Americano
    Click Element                       xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout[2]/android.widget.FrameLayout/android.widget.Button

Scroll Add To Marchendise "Stainlees Straw"
    Wait until element is visible       coffee.fore2.fore:id/catalog_left_layout
    ${element_size}=    Get Element Size    coffee.fore2.fore:id/catalog_left_layout
	  ${element_location}=    Get Element Location    coffee.fore2.fore:id/catalog_left_layout
	  ${start_x}=         Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
	  ${start_y}=         Evaluate      ${element_location['y']} + (${element_size['height']} * 0.7)
	  ${end_x}=           Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
	  ${end_y}=           Evaluate      ${element_location['y']} + (${element_size['height']} * 0.3)
	  Swipe               ${start_x}    ${start_y}  ${end_x}  ${end_y}      300

    ${element_size}=    Get Element Size    coffee.fore2.fore:id/catalog_left_layout
	  ${element_location}=    Get Element Location    coffee.fore2.fore:id/catalog_left_layout
	  ${start_x}=         Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
	  ${start_y}=         Evaluate      ${element_location['y']} + (${element_size['height']} * 0.7)
	  ${end_x}=           Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
	  ${end_y}=           Evaluate      ${element_location['y']} + (${element_size['height']} * 0.3)
	  Swipe               ${start_x}    ${start_y}  ${end_x}  ${end_y}      300

	  ${element_size}=    Get Element Size    coffee.fore2.fore:id/catalog_left_layout
	  ${element_location}=    Get Element Location    coffee.fore2.fore:id/catalog_left_layout
	  ${start_x}=         Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
	  ${start_y}=         Evaluate      ${element_location['y']} + (${element_size['height']} * 0.7)
	  ${end_x}=           Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
	  ${end_y}=           Evaluate      ${element_location['y']} + (${element_size['height']} * 0.3)
	  Swipe               ${start_x}    ${start_y}  ${end_x}  ${end_y}      300

Add To Marchendise "Stainlees Straw"
    wait until element is visible       xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup[2]/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[6]/android.widget.TextView
    Click Element                       xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup[2]/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[6]/android.widget.TextView
    Click Element                       xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup[3]/android.widget.ScrollView/android.widget.LinearLayout/androidx.recyclerview.widget.RecyclerView/android.widget.LinearLayout[1]/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[1]/android.widget.TextView
    ${element_size}=    Get Element Size    ${scroll_path_addToCart}
	  ${element_location}=    Get Element Location    ${scroll_path_addToCart}
	  ${start_x}=         Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
	  ${start_y}=         Evaluate      ${element_location['y']} + (${element_size['height']} * 0.7)
	  ${end_x}=           Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
	  ${end_y}=           Evaluate      ${element_location['y']} + (${element_size['height']} * 0.3)
	  Swipe               ${start_x}    ${start_y}  ${end_x}  ${end_y}      300

Order Now
    Wait until element is visible   coffee.fore2.fore:id/cart_summary_layout
    Click Element                   coffee.fore2.fore:id/cart_summary_layout

Input No Handphone & Order
    Wait Until Element Is Visible   coffee.fore2.fore:id/input_text_input
    Input Text                      coffee.fore2.fore:id/input_text_input           812374
    Click Element                   coffee.fore2.fore:id/input_text_icon





