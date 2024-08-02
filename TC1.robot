*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    chrome
${url}    https://demo.nopcommerce.comm

*** Test Cases ***
LoginTest
    open browser    ${url}    ${browser}
    loginToTheApplication
    close browser

*** keywords ***
loginToTheApplication
    click link    xpath://a[contains(text(),'Log in')]
    input text    id:Email    test@test.com
    input text    id:Password    Test@123
    click element    xpath://button[contains(text(),'Log in')]