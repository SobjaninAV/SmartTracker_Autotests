*** Settings ***
Documentation    Кейворды для экрана онбординга
Resource    ../common.resource

*** Keywords ***
Allow_Location_And_Notifications
    [Documentation]    Онбординг с разрешением уведомлений и геолокации

    Allow Notification
    Allow Location
    Go Back
    

Passing_Instructions
    [Documentation]    Прохождение слайдов с обучением работе в приложении
    
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
    [Documentation]    Прохождение слайдов с обучением работе в приложении
    
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


