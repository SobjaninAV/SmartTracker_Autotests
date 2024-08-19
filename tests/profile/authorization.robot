*** Settings ***
Documentation    Подключение ресурсов
Resource    authorization.resource
Suite Setup    Launch App With Notifications And Geo


*** Test Cases ***
Input Data And Authorize
    [Documentation]    Заполнение полей пасспорта, пароля и авторизация
    Wait Until Element Is Visible    ${PASSPORT_FLD}
    Input Text    ${PASSPORT_FLD}    text=5719946393

    Wait Until Element Is Visible    ${PASSPORT_FLD}
    Input Text    ${PASSWORD_FLD}    text=123456

    Wait Until Element Is Visible    ${AUTHORIZATION_BTN}
    Click Element    ${AUTHORIZATION_BTN}

Allow Geo At The Background Mode
    [Documentation]    Разрешение на использование геолокации в фоне
    Wait Until Element Is Visible    ${BACKGROUND_GEO_ACCESS_BTN}
    Click Element    ${BACKGROUND_GEO_ACCESS_BTN}

Pass Second Education
    [Documentation]    Прохождение обучение работы с заявками
    Wait Until Page Contains Element    ${EDUCATION_SCRN}
    Click Element    ${EDUCATION_SCRN}
    Click Element    ${EDUCATION_SCRN}
    Click Element    ${EDUCATION_SCRN}
    Click Element    ${EDUCATION_SCRN}
    Click Element    ${EDUCATION_SCRN}
    Click Element    ${EDUCATION_SCRN}
    Click Element    ${EDUCATION_SCRN}
    Wait Until Element Is Visible    locator=com.b2b_logist.smarttracker.develop:id/ivAllMenuNotifications
