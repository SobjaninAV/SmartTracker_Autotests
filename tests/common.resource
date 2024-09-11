*** Settings ***
Documentation    Подключение ресурсов
Resource    ../core/all.resource
Resource    onboarding/onboarding.resource
Resource    profile/authorization.resource
Resource    main_page/main_page.resource


*** Keywords ***
Launch App With Notifications And Geo
    [Documentation]    Запустить приложение с принятием настроек уведомлений и геолокации

    Launch App
    Allow Location And Notifications
    Passing Instructions

Launch App
    [Documentation]    Просто запустить приложение

    launcher.Open App

Close App
    [Documentation]    Просто закрыть приложение

    Close Application

Suite Setup
    [Documentation]    Установка предусловий

    launcher.Open App
    Set Appium Timeout    seconds=20s

Suite Teardown
    [Documentation]    Установка постусловий

    Pass Execution    message=Прогон завершен

Passing to the main page
    [Documentation]    Главный экран после первичной авторизации
    Input Pasport Password And Authorize
    Allow Geo At The Background Mode
    Pass Second Education
