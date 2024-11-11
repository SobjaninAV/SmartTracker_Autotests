*** Settings ***
Documentation    Кейворды для экрана изменения пароля
Resource    ../common.resource    # robotcode: ignore


*** Keywords ***
Input New Password And Authorize
    [Documentation]    Заполнение полей пасспорта, пароля и авторизация
    Wait Until Element Is Visible    ${PASSPORT_FLD}
    Input Text    ${PASSPORT_FLD}    text=${VALID_PASPORT}
    Wait Until Element Is Visible    ${PASSPORT_FLD}
    Input Password    ${PASSWORD_FLD}    text=${NEW_PASSWORD}
    Wait Until Element Is Visible    ${AUTHORIZATION_BTN}
    Click Element    ${AUTHORIZATION_BTN}

Input New And Old Password
    [Documentation]    Заполнить старый и новый пароль
    Input Text    ${OLD_PASSWORD_FLD}    text=${NEW_PASSWORD}
    Input Text    ${NEW_PASSWORD_FLD}    text=${VALID_PASSWORD}
