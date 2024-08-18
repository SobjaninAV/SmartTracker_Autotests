*** Settings ***
Documentation    Кейворды для экрана авторизации
Resource    ../common.resource


*** Keywords ***
Precondition: At Authorizathion Form
    [Documentation]    Предусловие: на экране авторизации
    common.Launch App With Notifications And Geo

