*** Settings ***
Documentation    Кейворды для главного экрана
Resource    ../common.resource    # robotcode: ignore


*** Keywords ***
Open Change Password Page
    [Documentation]    Открыть страницу изменения пароля
    Open Profile
    Click Element    ${EDIT_PROFILE_BTN}
    Wait Until Element Is Visible    ${CHANGE_PASSWORD_BTN}
    Click Element    ${CHANGE_PASSWORD_BTN}
    Wait Until Element Is Visible    ${CHANGE_PASSWORD_TTL}

Input Old And New Password
    [Documentation]    Заполнить старый и новый пароль
    Wait Until Element Is Visible    ${OLD_PASSWORD_FLD}
    Input Text    ${OLD_PASSWORD_FLD}    text=${VALID_PASSWORD}
    Input Text    ${NEW_PASSWORD_FLD}    text=${NEW_PASSWORD}
