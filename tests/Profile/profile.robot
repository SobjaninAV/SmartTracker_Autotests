*** Settings ***
Documentation    Ресурсы и предусловия
Resource    profile.resource
Suite Setup    Precondition: Main Page


*** Test Cases ***
Open Profile
    [Documentation]    Открыть страницу профиля
    Open Profile

Check Actual FIO
    [Documentation]    Проверить актуалные ФИО на странице профиля
    Check Actual FIO

Check Actual Pasport Number
    [Documentation]    Проверить актуалный номер паспорта на странице профиля
    Check Actual Pasport Number

Edit Profile
    [Documentation]    Редактируем профиль
    Edit Profile

Check New FIO
    [Documentation]    Проверить новые ФИО на странице профиля
    Check New FIO

Check New Pasport Number
    [Documentation]    Проверить актуалный номер паспорта на странице профиля
    Check New Pasport Number

Check Main Menu New FIO
    [Documentation]    Проверить новые ФИО на странице профиля
    Check Main Menu New FIO
    Tap On Right Side

Restore Profile
    [Documentation]    Восстанавливаем данные профиля к первоначальным ФИО и номеру паспорта
    Restore Profile

Check Restored FIO
    [Documentation]    Проверить восстановленные ФИО на странице профиля
    ${actual_value}=    Get Element Attribute    ${FIO_FLD}    text
    Should Be Equal    ${actual_value}    ${SECOND_NAME} ${FIRST_NAME} ${PATRONYMIC}

Check Restored pasport number
    [Documentation]    Проверить восстановленный номер паспорта на странице профиля
    ${actual_value}=    Get Element Attribute    ${PROFILE_PASPORT_FLD}    text
    Should Be Equal    ${actual_value}    %{VALID_PASPORT}

Check main menu Restored FIO
    [Documentation]    Проверить восстановленные ФИО на странице профиля
    Click Element    ${MAIN_MENU_BTN}
    ${actual_value}=    Get Element Attribute    ${MAIN_MENU_FIO}    text
    Should Be Equal    ${actual_value}    ${SECOND_NAME} ${FIRST_NAME} ${PATRONYMIC}
    Close Application
