*** Settings ***
Documentation    Ресурсы и предусловия
Resource    password_change.resource
Suite Setup    Precondition: Main Page


*** Test Cases ***
Open Change Password Page
    [Documentation]    Открыть страницу изменения пароля
    Open Change Password Page

Change password
    [Documentation]    Заполнить старый и новый пароль
    Input Old And New Password
    Click Element    ${CLOSE_FORM_BTN}
    Click Element    ${CHANGE_PASSWORD_BTN}
    Input Old And New Password
    Click Element    ${SAVE_PASSWORD_BTN}
    Click Element    ${SAVE_PROFILE_BTN}
    Close Application
