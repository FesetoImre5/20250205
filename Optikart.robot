*** Settings ***
Library           Selenium2Library

*** Test Cases ***
valid_login
    Open Browser    https://keprendeles.optikart.hu/    firefox
    Click Link    //*[@id="post-95"]/div/div/div/div/div[4]/div/div/a
    Input Text    //*[@id="username-5474"]    ashShadowflame
    Input Password    //*[@id="user_password-5474"]    KHUqm8rp
    Click Element    //*[@id="um-submit-btn"]
    Page Should Contain Element    //*[@id="ast-desktop-header"]/div/div/div/div/div[3]/div[3]/div/div/a/img
    Location Should Be    https://keprendeles.optikart.hu/pquery/
    Close Browser
    Open Browser    https://keprendeles.optikart.hu/login/
    Input Text    //*[@id="username-5474"]    ashShadowflame
    Input Password    //*[@id="user_password-5474"]    KHUqm8rp
    Click Element    //*[@id="um-submit-btn"]
    Element Should Contain    //*[@id="post-5477"]/header/h1    Fesető Imre
    Element Should Contain    //*[@id="post-5477"]/div/div/div/div[2]/div[3]/div[1]/div[1]/a    Fesető Imre
    Page Should Contain Element    //*[@id="post-5477"]
    Close Browser

login_with_empty_username
    Open Browser    https://keprendeles.optikart.hu/    firefox
    Click Link    //*[@id="post-95"]/div/div/div/div/div[4]/div/div/a
    Input Text    //*[@id="username-5474"]    ${EMPTY}
    Input Password    //*[@id="user_password-5474"]    KHUqm8rp
    Click Element    //*[@id="um-submit-btn"]
    Element Should Contain    //*[@id="um-error-for-username-5474"]    Please enter your username or email
    Close Browser

login_with_empty_password
    Open Browser    https://keprendeles.optikart.hu/    firefox
    Click Link    //*[@id="post-95"]/div/div/div/div/div[4]/div/div/a
    Input Text    //*[@id="username-5474"]    ashShadowflame
    Input Password    //*[@id="user_password-5474"]    ${EMPTY}
    Click Element    //*[@id="um-submit-btn"]
    Element Should Contain    //*[@id="um-error-for-user_password-5474"]    Please enter your password
    Close Browser

login_with_empty_credentials
    Open Browser    https://keprendeles.optikart.hu/    firefox
    Click Link    //*[@id="post-95"]/div/div/div/div/div[4]/div/div/a
    Input Text    //*[@id="username-5474"]    ${EMPTY}
    Input Password    //*[@id="user_password-5474"]    ${EMPTY}
    Click Element    //*[@id="um-submit-btn"]
    Element Should Contain    //*[@id="um-error-for-username-5474"]    Please enter your username or email
    Element Should Contain    //*[@id="um-error-for-user_password-5474"]    Please enter your password
    Close Browser

login_with_wrong_username
    Open Browser    https://keprendeles.optikart.hu/    firefox
    Click Link    //*[@id="post-95"]/div/div/div/div/div[4]/div/div/a
    Input Text    //*[@id="username-5474"]    shadowflameash
    Input Password    //*[@id="user_password-5474"]    KHUqm8rp
    Click Element    //*[@id="um-submit-btn"]
    Element Should Contain    //*[@id="um-error-for-user_password-5474"]    Password is incorrect. Please try again.
    Close Browser
