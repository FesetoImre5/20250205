*** Settings ***
Library           Selenium2Library

*** Test Cases ***
Registration_EmptyMail
    Open Browser    https://www.mikrosat.hu/shop_reg.php?no_reg=0    Firefox
    Input Text    //*[@id="emai"]    ${EMPTY}
    Input Password    //*[@id="passwd1"]    KHUqm8rp
    Input Password    //*[@id="passwd2"]    KHUqm8rp
    Input Text    //*[@id="kap_mobile_sub"]    307169623
    Input Text    //*[@id="default_nev"]    Fesető Imre
    Input Text    //*[@id="default_varos"]    Ballószög
    Input Text    //*[@id="default_irany"]    6035
    Input Text    //*[@id="default_utca"]    Rákóczi út 49
    Click Element    //*[@id="div_out_company_choose"]/div/div[2]/label
    Click Button    //*[@id="cookie_alert_open"]/div/div/div[2]/div/div[2]/div/button
    Maximize Browser Window
    Click Button    //*[@id="button_reg"]
    Wait Until Element Is Visible    //*[@id="overlay_error"]/div[2]
    Location Should Be    https://www.mikrosat.hu/shop_reg.php?overlay=cust_error
    Close Browser

Registration_EmptyPass
    Open Browser    https://www.mikrosat.hu/shop_reg.php?no_reg=0    Firefox
    Input Text    //*[@id="emai"]    feseto.imre@diak.szbi-pg.hu
    Input Password    //*[@id="passwd1"]    ${EMPTY}
    Input Password    //*[@id="passwd2"]    KHUqm8rp
    Input Text    //*[@id="kap_mobile_sub"]    307169623
    Input Text    //*[@id="default_nev"]    Fesető Imre
    Input Text    //*[@id="default_varos"]    Ballószög
    Input Text    //*[@id="default_irany"]    6035
    Input Text    //*[@id="default_utca"]    Rákóczi út 49
    Click Element    //*[@id="div_out_company_choose"]/div/div[2]/label
    Click Button    //*[@id="cookie_alert_open"]/div/div/div[2]/div/div[2]/div/button
    Maximize Browser Window
    Click Button    //*[@id="button_reg"]
    Wait Until Element Is Visible    //*[@id="overlay_error"]/div[2]
    Location Should Be    https://www.mikrosat.hu/shop_reg.php?overlay=cust_error
    Close Browser

Registration_EmptyPass2
    Open Browser    https://www.mikrosat.hu/shop_reg.php?no_reg=0    Firefox
    Input Text    //*[@id="emai"]    feseto.imre@diak.szbi-pg.hu
    Input Password    //*[@id="passwd1"]    KHUqm8rp
    Input Password    //*[@id="passwd2"]    ${EMPTY}
    Input Text    //*[@id="kap_mobile_sub"]    307169623
    Input Text    //*[@id="default_nev"]    Fesető Imre
    Input Text    //*[@id="default_varos"]    Ballószög
    Input Text    //*[@id="default_irany"]    6035
    Input Text    //*[@id="default_utca"]    Rákóczi út 49
    Click Element    //*[@id="div_out_company_choose"]/div/div[2]/label
    Click Button    //*[@id="cookie_alert_open"]/div/div/div[2]/div/div[2]/div/button
    Maximize Browser Window
    Click Button    //*[@id="button_reg"]
    Wait Until Element Is Visible    //*[@id="overlay_error"]/div[2]
    Location Should Be    https://www.mikrosat.hu/shop_reg.php?overlay=cust_error
    Close Browser

Registration_EmptyPhone
    Open Browser    https://www.mikrosat.hu/shop_reg.php?no_reg=0    Firefox
    Input Text    //*[@id="emai"]    feseto.imre@diak.szbi-pg.hu
    Input Password    //*[@id="passwd1"]    KHUqm8rp
    Input Password    //*[@id="passwd2"]    KHUqm8rp
    Input Text    //*[@id="kap_mobile_sub"]    ${EMPTY}
    Input Text    //*[@id="default_nev"]    Fesető Imre
    Input Text    //*[@id="default_varos"]    Ballószög
    Input Text    //*[@id="default_irany"]    6035
    Input Text    //*[@id="default_utca"]    Rákóczi út 49
    Click Element    //*[@id="div_out_company_choose"]/div/div[2]/label
    Click Button    //*[@id="cookie_alert_open"]/div/div/div[2]/div/div[2]/div/button
    Maximize Browser Window
    Click Button    //*[@id="button_reg"]
    Wait Until Element Is Visible    //*[@id="overlay_error"]/div[2]
    Location Should Be    https://www.mikrosat.hu/shop_reg.php?overlay=cust_error
    Close Browser

Registration_EmptyName
    Open Browser    https://www.mikrosat.hu/shop_reg.php?no_reg=0    Firefox
    Input Text    //*[@id="emai"]    feseto.imre@diak.szbi-pg.hu
    Input Password    //*[@id="passwd1"]    KHUqm8rp
    Input Password    //*[@id="passwd2"]    KHUqm8rp
    Input Text    //*[@id="kap_mobile_sub"]    307169623
    Input Text    //*[@id="default_nev"]    ${EMPTY}
    Input Text    //*[@id="default_varos"]    Ballószög
    Input Text    //*[@id="default_irany"]    6035
    Input Text    //*[@id="default_utca"]    Rákóczi út 49
    Click Element    //*[@id="div_out_company_choose"]/div/div[2]/label
    Click Button    //*[@id="cookie_alert_open"]/div/div/div[2]/div/div[2]/div/button
    Maximize Browser Window
    Click Button    //*[@id="button_reg"]
    Wait Until Element Is Visible    //*[@id="overlay_error"]/div[2]
    Location Should Be    https://www.mikrosat.hu/shop_reg.php?overlay=cust_error
    Close Browser

Registration_EmptyNum
    Open Browser    https://www.mikrosat.hu/shop_reg.php?no_reg=0    Firefox
    Input Text    //*[@id="emai"]    feseto.imre@diak.szbi-pg.hu
    Input Password    //*[@id="passwd1"]    KHUqm8rp
    Input Password    //*[@id="passwd2"]    KHUqm8rp
    Input Text    //*[@id="kap_mobile_sub"]    307169623
    Input Text    //*[@id="default_nev"]    Fesető Imre
    Input Text    //*[@id="default_varos"]    Ballószög
    Input Text    //*[@id="default_irany"]    ${EMPTY}
    Input Text    //*[@id="default_utca"]    Rákóczi út 49
    Click Element    //*[@id="div_out_company_choose"]/div/div[2]/label
    Click Button    //*[@id="cookie_alert_open"]/div/div/div[2]/div/div[2]/div/button
    Maximize Browser Window
    Click Button    //*[@id="button_reg"]
    Wait Until Element Is Visible    //*[@id="overlay_error"]/div[2]
    Location Should Be    https://www.mikrosat.hu/shop_reg.php?overlay=cust_error
    Close Browser

Registration_EmptyAddress
    Open Browser    https://www.mikrosat.hu/shop_reg.php?no_reg=0    Firefox
    Input Text    //*[@id="emai"]    feseto.imre@diak.szbi-pg.hu
    Input Password    //*[@id="passwd1"]    KHUqm8rp
    Input Password    //*[@id="passwd2"]    KHUqm8rp
    Input Text    //*[@id="kap_mobile_sub"]    307169623
    Input Text    //*[@id="default_nev"]    Fesető Imre
    Input Text    //*[@id="default_varos"]    Ballószög
    Input Text    //*[@id="default_irany"]    6035
    Input Text    //*[@id="default_utca"]    ${EMPTY}
    Click Element    //*[@id="div_out_company_choose"]/div/div[2]/label
    Click Button    //*[@id="cookie_alert_open"]/div/div/div[2]/div/div[2]/div/button
    Maximize Browser Window
    Click Button    //*[@id="button_reg"]
    Wait Until Element Is Visible    //*[@id="overlay_error"]/div[2]
    Location Should Be    https://www.mikrosat.hu/shop_reg.php?overlay=cust_error
    Close Browser

Registration
    Open Browser    https://www.mikrosat.hu/shop_reg.php?no_reg=0    Firefox
    Input Text    //*[@id="emai"]    feseto.imre@diak.szbi-pg.hu
    Input Password    //*[@id="passwd1"]    KHUqm8rp
    Input Password    //*[@id="passwd2"]    KHUqm8rp
    Input Text    //*[@id="kap_mobile_sub"]    307169623
    Input Text    //*[@id="default_nev"]    Fesető Imre
    Input Text    //*[@id="default_varos"]    Ballószög
    Input Text    //*[@id="default_irany"]    6035
    Input Text    //*[@id="default_utca"]    Rákóczi út 49
    Click Element    //*[@id="div_out_company_choose"]/div/div[2]/label
    Click Button    //*[@id="cookie_alert_open"]/div/div/div[2]/div/div[2]/div/button
    Maximize Browser Window
    Click Button    //*[@id="button_reg"]
    Wait Until Element Is Visible    //*[@id="overlay_error"]/div[2]
    Location Should Be    https://www.mikrosat.hu/shop_reg.php?overlay=cust_error
    Close Browser

Login_EmptyUser
    Open Browser    https://www.mikrosat.hu/    Firefox
    Click Element    //*[@id="profile__btn"]/span
    Input Text    //*[@id="shop_user_login"]    ${EMPTY}
    Input Password    //*[@id="shop_pass_login"]    KHUqm8rp
    Click Button    //*[@id="container"]/header/div/div/div[2]/div/div[2]/div[3]/div/div[2]/form/div[1]/button
    Wait Until Element Is Visible    //*[@id="overlay_error"]/div[2]
    Location Should Be    https://www.mikrosat.hu/?overlay=login_error1
    Close Browser

Login_EmptyPass
    Open Browser    https://www.mikrosat.hu/    Firefox
    Click Element    //*[@id="profile__btn"]/span
    Input Text    //*[@id="shop_user_login"]    feseto.imre@diak.szbi-pg.hu
    Input Password    //*[@id="shop_pass_login"]    ${EMPTY}
    Click Button    //*[@id="container"]/header/div/div/div[2]/div/div[2]/div[3]/div/div[2]/form/div[1]/button
    Wait Until Element Is Visible    //*[@id="overlay_error"]/div[2]
    Location Should Be    https://www.mikrosat.hu/?overlay=login_error1
    Close Browser

Login
    Open Browser    https://www.mikrosat.hu/    Firefox
    Click Element    //*[@id="profile__btn"]/span
    Input Text    //*[@id="shop_user_login"]    feseto.imre@diak.szbi-pg.hu
    Input Password    //*[@id="shop_pass_login"]    KHUqm8rp
    Click Button    //*[@id="container"]/header/div/div/div[2]/div/div[2]/div[3]/div/div[2]/form/div[1]/button
    Close Browser
