*** Settings ***
Documentation    Кейворды для главного экрана
Resource    ../common.resource    # robotcode: ignore


*** Keywords ***
Check Actual FIO
    [Documentation]    Проверить актуалные ФИО на странице профиля
    ${actual_value}=    Get Element Attribute    ${FIO_FLD}    text
    Should Be Equal    ${actual_value}    ${SECOND_NAME} ${FIRST_NAME} ${PATRONYMIC}

Check Actual Pasport Number
    [Documentation]    Проверить актуалный номер паспорта на странице профиля
    ${actual_value}=    Get Element Attribute    ${PROFILE_PASPORT_FLD}    text
    Should Be Equal    ${actual_value}    %{VALID_PASPORT}

Edit Profile
    [Documentation]    Редактируем профиль
    Click Element    ${EDIT_PROFILE_BTN}
    Clear Text    ${EDIT_FIRST_NAME_FLD}
    Clear Text    ${EDIT_SECOND_NAME_FLD}
    Clear Text    ${EDIT_PATRONYMIC_FLD}
    Clear Text    ${EDIT_PASPORT_FLD}
    Input Text    ${EDIT_PASPORT_FLD}        text=${NEW_PASPORT}
    Input Text    ${EDIT_FIRST_NAME_FLD}     text=${NEW_FIRST_NAME}
    Input Text    ${EDIT_SECOND_NAME_FLD}    text=${NEW_SECOND_NAME}
    Input Text    ${EDIT_PATRONYMIC_FLD}     text=${NEW_PATRONYMIC}
    Click Element    ${SAVE_PROFILE_BTN}

Check New FIO
    [Documentation]    Проверить новые ФИО на странице профиля
    ${actual_value}=    Get Element Attribute    ${FIO_FLD}    text
    Should Be Equal    ${actual_value}    ${NEW_SECOND_NAME} ${NEW_FIRST_NAME} ${NEW_PATRONYMIC}

Check New Pasport Number
    [Documentation]    Проверить актуалный номер паспорта на странице профиля
    ${actual_value}=    Get Element Attribute    ${PROFILE_PASPORT_FLD}    text
    Should Be Equal    ${actual_value}    ${NEW_PASPORT}

Check Main Menu New FIO
    [Documentation]    Проверить новые ФИО на странице профиля
    Click Element    ${MAIN_MENU_BTN}
    ${actual_value}=    Get Element Attribute    ${MAIN_MENU_FIO}    text
    Should Be Equal    ${actual_value}    ${NEW_SECOND_NAME} ${NEW_FIRST_NAME} ${NEW_PATRONYMIC}

Tap On Right Side
    [Documentation]    Тапнуть у правого края экрана
    ${width}=    Get Window Width
    ${height}=    Get Window Height
    ${x}=       Evaluate    ${width} * 0.9
    ${y}=       Evaluate    ${height} * 0.5
    ${tap_position}=    Create List    ${x}    ${y}
    Tap With Positions    100    ${tap_position}

Restore Profile
    [Documentation]    Восстанавливаем данные профиля к первоначальным ФИО и номеру паспорта
    Click Element    ${EDIT_PROFILE_BTN}
    Clear Text    ${EDIT_FIRST_NAME_FLD}
    Clear Text    ${EDIT_SECOND_NAME_FLD}
    Clear Text    ${EDIT_PATRONYMIC_FLD}
    Clear Text    ${EDIT_PASPORT_FLD}
    Input Text    ${EDIT_PASPORT_FLD}        text=%{VALID_PASPORT}
    Input Text    ${EDIT_FIRST_NAME_FLD}     text=${FIRST_NAME}
    Input Text    ${EDIT_SECOND_NAME_FLD}    text=${SECOND_NAME}
    Input Text    ${EDIT_PATRONYMIC_FLD}     text=${PATRONYMIC}
    Click Element    ${SAVE_PROFILE_BTN}
