*** Settings ***
Library           Selenium2Library

*** Test Cases ***
optikart_login
    Open Browser    https://keprendeles.optikart.hu/    firefox
    Click Link    //*[@id="post-95"]/div/div/div/div/div[4]/div/div/a
    Input Text    //*[@id="username-5474"]    ashShadowflame
    Input Password    //*[@id="user_password-5474"]    KHUqm8rp
    Click Element    //*[@id="um-submit-btn"]
    Page Should Contain Element    //*[@id="ast-desktop-header"]/div/div/div/div/div[3]/div[3]/div/div/a/img
