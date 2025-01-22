*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  Chrome
${url}  https://www.rollerderbyhouse.eu/

*** Test Cases ***
AddItemToCart
    Open Browser    ${url}     ${browser}

    ${cookies}  Set Variable     xpath://*[@class="cc_banner cc_container cc_container--open"]/*[@class="cc_btn cc_btn_accept_all"]
    Wait Until Page Contains Element      ${cookies}    timeout=10      # page takes a long time to load
    Click Element   ${cookies}

    ${"search_box"}     Set Variable  id:search
    Input Text  ${"search_box"}     chaya onyx
    Click Element   xpath://*[@value="Search"]

    Click Element   xpath://*[@title="CHAYA Rollerskates Onyx"]
    Select From List By Value   id:product[0][selectoption1]  1753
    Click Element   xpath://*[@id="tobasketform"]/button

    Sleep  3

*** Keywords ***



