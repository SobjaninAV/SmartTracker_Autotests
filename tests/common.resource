*** Settings ***
Documentation    Подключение ресурсов
Resource    ../core/all.resource
Resource    onboarding/onboarding.resource
Resource    profile/authorization.resource
Resource    main_page/main_page.resource
Resource    completed_order/completed_order.resource


*** Variables ***
${COMPLETED_ORDER}    ${ORDER_TO_ACCEPT}
${COMPLETED_ORDER_NMBR}    ${ORDER_NMBR_TO_ACCEPT}
${SECOND_NAME}    random
${FIRST_NAME}    random
${PATRONYMIC}    random


*** Keywords ***
Launch App With Notifications And Geo
    [Documentation]    Запустить приложение с принятием настроек уведомлений и геолокации

    Launch App
    onboarding.Allow Location And Notifications
    onboarding.Turn_On_Geolocation
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

Passing to the main page
    [Documentation]    Главный экран после первичной авторизации
    authorization.Input Pasport Password And Authorize
    authorization.Allow Geo At The Background Mode
    authorization.Pass Second Education

Generate Random Variables
    ${SECOND_NAME}=    Evaluate    random.choice(["Иванов", "Петров", "Сидоров", "Кузнецов", "Смирнов"])    modules=random
    ${FIRST_NAME}=    Evaluate    random.choice(["Александр", "Максим", "Иван", "Дмитрий", "Егор"])    modules=random
    ${PATRONYMIC}=    Evaluate    random.choice(["Александрович", "Максимович", "Иванович", "Дмитриевич", "Егорович"])    modules=random
