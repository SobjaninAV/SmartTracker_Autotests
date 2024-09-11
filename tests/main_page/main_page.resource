*** Settings ***
Documentation    Кейворды для главного экрана
Resource    ../common.resource    # robotcode: ignore

*** Keywords ***
Precondition: Main Page
    [Documentation]    Предусловие: на главном экране
    common.Launch App With Notifications And Geo
    common.Passing to the main page
