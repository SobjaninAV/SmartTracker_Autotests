*** Settings ***
Documentation    Подключение ресурсов
Resource    ../core/all.resource
Resource    onboarding/onboarding.resource
Resource    authorization/authorization.resource
Resource    main_page/main_page.resource
Resource    completed_order/completed_order.resource


*** Variables ***
${COMPLETED_ORDER}    ${ORDER_TO_ACCEPT}
${COMPLETED_ORDER_NMBR}    ${ORDER_NMBR_TO_ACCEPT}
${SECOND_NAME}    Максимов
${FIRST_NAME}    Максим
${PATRONYMIC}    Максимович
${NEW_SECOND_NAME}    Сидоров
${NEW_FIRST_NAME}    Иван
${NEW_PATRONYMIC}    Александрович
${NEW_PASPORT}    5428946215


*** Keywords ***
Launch App With Notifications And Geo
    [Documentation]    Запустить приложение с принятием настроек уведомлений и геолокации

    Launch App
    onboarding.Allow Location And Notifications
    onboarding.Turn On Geolocation
    onboarding.Passing Instructions

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

Passing To The Main Page
    [Documentation]    Главный экран после первичной авторизации
    authorization.Input Pasport Password And Authorize
    authorization.Allow Geo At The Background Mode
    authorization.Pass Second Education
