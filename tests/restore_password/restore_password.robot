*** Settings ***
Documentation    Ресурсы и предусловия
Resource    restore_password.resource
Suite Setup    Precondition: At Authorizathion Form


*** Test Cases ***
New Authorization
    [Documentation]    Ввод логина, пароля и нажатие на кнопку авторизации
    Input New Password And Authorize
    Allow Geo At The Background Mode
    Pass Second Education

Restore Password
    [Documentation]    Открыть страницу изменения пароля
    Open Change Password Page
    Input New And Old Password
    Click Element    ${SAVE_PASSWORD_BTN}
    Click Element    ${SAVE_PROFILE_BTN}
    Close Application
