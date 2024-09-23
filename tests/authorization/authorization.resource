*** Settings ***
Documentation    Кейворды для экрана авторизации
Resource    ../common.resource    # robotcode: ignore


*** Variables ***
${INVALID_PASPORT}    5719946395
${INVALID_PASSWORD}    1234567


*** Keywords ***
Precondition: At Authorizathion Form
    [Documentation]    Предусловие: на экране авторизации
    common.Launch App With Notifications And Geo

Input Pasport Password And Authorize
    [Documentation]    Заполнение полей пасспорта, пароля и авторизация
    Wait Until Element Is Visible    ${PASSPORT_FLD}
    Input Text    ${PASSPORT_FLD}    text=%{VALID_PASPORT}

    Wait Until Element Is Visible    ${PASSPORT_FLD}
    Input Password    ${PASSWORD_FLD}    text=%{VALID_PASSWORD}

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
