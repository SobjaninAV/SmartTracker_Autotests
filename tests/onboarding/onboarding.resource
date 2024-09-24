*** Settings ***
Documentation    Кейворды для экрана онбординга
Resource    ../common.resource    # robotcode: ignore


*** Keywords ***
Allow Location And Notifications
    [Documentation]    Онбординг c разрешением уведомлений и геолокации

    Allow Notification
    Allow Location
    Go Back

Turn On Geolocation
    [Documentation]    Включение геолокации
    Sleep    time_=1
    ${element_present}=    Run Keyword And Return Status    Element Should Be Visible    ${GEOLCTN_TURN_ON_SCRN}
    IF    ${element_present}    Click Element    ${GEOLOCATION_TURN_ON_SWCH}
    IF    ${element_present}    Go Back
    ${element_present}=    Run Keyword And Return Status    Page Should Not Contain Element    ${GEOLCTN_TURN_ON_SCRN}
    IF    ${element_present}    No Operation

Passing Instructions
    [Documentation]    Прохождение слайдов c обучением работе в приложении

    Pass Instructions

Allow Notification
    [Documentation]    Разрешить уведомления

    Wait Until Page Contains Element    ${NOTIFICATION_ALLOW_BTN}    timeout=5s
    Click Element    ${NOTIFICATION_ALLOW_BTN}

Allow Location
    [Documentation]    Разрешить геолокацию

    Wait Until Page Contains Element    ${ONBOARDING_SUBMIT_BTN}
    Click Element    ${ONBOARDING_SUBMIT_BTN}

    Wait Until Page Contains Element    ${PERMISSION_FOREGROUND_ALLOW_BTN}
    Click Element    ${PERMISSION_FOREGROUND_ALLOW_BTN}

    Wait Until Page Contains Element    ${ONBOARDING_SUBMIT_BTN}
    Click Element    ${ONBOARDING_SUBMIT_BTN}

    Wait Until Page Contains Element    ${ALLOW_ALWAYS_RADIO_BTN}
    Click Element    ${ALLOW_ALWAYS_RADIO_BTN}

Pass Instructions
    [Documentation]    Прохождение слайдов c обучением работе в приложении

    Wait Until Page Contains Element    ${CONFIRM_EDUCATION_BTN}
    Click Element    ${CONFIRM_EDUCATION_BTN}

    Wait Until Page Contains Element    ${CONFIRM_EDUCATION_BTN}
    Click Element    ${CONFIRM_EDUCATION_BTN}

    Wait Until Page Contains Element    ${CONFIRM_EDUCATION_BTN}
    Click Element    ${CONFIRM_EDUCATION_BTN}

    Wait Until Page Contains Element    ${CONFIRM_EDUCATION_BTN}
    Click Element    ${CONFIRM_EDUCATION_BTN}

    Wait Until Page Contains Element    ${CONFIRM_EDUCATION_BTN}
    Click Element    ${CONFIRM_EDUCATION_BTN}
