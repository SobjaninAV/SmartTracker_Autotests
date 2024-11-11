*** Settings ***
Documentation    Подключение ресурсов
Resource    ../core/all.resource
Resource    onboarding/onboarding.resource
Resource    authorization/authorization.resource
Resource    main_page/main_page.resource
Resource    completed_order/completed_order.resource
Resource    restore_password/restore_password.resource
Resource    profile/profile.resource
Resource    password_change/password_change.resource
Resource    order_in_work/order_in_work.resource


*** Variables ***
${COMPLETED_ORDER}    ${ORDER_TO_ACCEPT}
${COMPLETED_ORDER_NMBR}    ${ORDER_NMBR_TO_ACCEPT}
${SECOND_NAME}    Семенов
${FIRST_NAME}    Семен
${PATRONYMIC}    Семенович
${NEW_SECOND_NAME}    Сидоров
${NEW_FIRST_NAME}    Иван
${NEW_PATRONYMIC}    Александрович
${NEW_PASPORT}    5428946215
${NEW_PASSWORD}    654321


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

Open Profile
    [Documentation]    Открыть страницу профиля
    Click Element    ${MAIN_MENU_BTN}
    Click Element    ${PROFILE_BTN}
