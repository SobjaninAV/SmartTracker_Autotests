*** Settings ***
Resource    ../core/all.resource
Resource    onboarding/onboarding.resource

*** Keywords ***
Launch App With Notifications And Geo
    [Documentation]    Запустить приложение с принятием настроек уведомлений и геолокации

    Launch App
    onboarding.Allow_Location_And_Notifications
    onboarding.Passing_Instructions
    
Launch App
    [Documentation]    Просто запустить приложение

    launcher.Open app

Close App
    [Documentation]    Просто закрыть приложение

    Close Application

Suite Setup
    [Documentation]    Установка предусловий

    launcher.Open app
    Set Appium Timeout    seconds=20s
    
Suite Teardown
    [Documentation]    Установка постусловий

    Pass Execution    message=Прогон завершен