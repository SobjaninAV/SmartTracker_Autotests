*** Settings ***
Documentation    Ресурсы и предусловия
Resource    ../main_page/main_page.resource
Resource    profile.resource
Suite Setup    Precondition: Main Page


*** Test Cases ***
Open profile
    Click Element    ${MAIN_MENU_BTN}
    Click Element    ${PROFILE_BTN}

Check actual FIO
    ${actual_value}=    Get Element Attribute    ${FIO_FLD}    text
    Should Be Equal    ${actual_value}    ${SECOND_NAME} ${FIRST_NAME} ${PATRONYMIC}
    
Check actual pasport number
    ${actual_value}=    Get Element Attribute    ${PROFILE_PASPORT_FLD}    text
    Should Be Equal    ${actual_value}    %{VALID_PASPORT}
    
Edit Profile
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
    ${actual_value}=    Get Element Attribute    ${FIO_FLD}    text
    Should Be Equal    ${actual_value}    ${NEW_SECOND_NAME} ${NEW_FIRST_NAME} ${NEW_PATRONYMIC}

Check new pasport number
    ${actual_value}=    Get Element Attribute    ${PROFILE_PASPORT_FLD}    text
    Should Be Equal    ${actual_value}    ${NEW_PASPORT}

Check main menu new FIO
    Click Element    ${MAIN_MENU_BTN}
    ${actual_value}=    Get Element Attribute    ${MAIN_MENU_FIO}    text
    Should Be Equal    ${actual_value}    ${NEW_SECOND_NAME} ${NEW_FIRST_NAME} ${NEW_PATRONYMIC}
    Tap On Left Side  

Restore Profile
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

Check Restored FIO
    ${actual_value}=    Get Element Attribute    ${FIO_FLD}    text
    Should Be Equal    ${actual_value}    ${SECOND_NAME} ${FIRST_NAME} ${PATRONYMIC}

Check Restored pasport number
    ${actual_value}=    Get Element Attribute    ${PROFILE_PASPORT_FLD}    text
    Should Be Equal    ${actual_value}    %{VALID_PASPORT}

Check main menu Restored FIO
    Click Element    ${MAIN_MENU_BTN}
    ${actual_value}=    Get Element Attribute    ${MAIN_MENU_FIO}    text
    Should Be Equal    ${actual_value}    ${SECOND_NAME} ${FIRST_NAME} ${PATRONYMIC}
    Close Application