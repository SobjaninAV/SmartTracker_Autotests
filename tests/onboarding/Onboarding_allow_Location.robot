*** Settings ***
Resource    onboarding.resource
Suite Setup    common.Suite Setup
# Suite Teardown    common.Suite Teardown
#Test Setup    common.Launch App
#Test Teardown    common.Close App

*** Test Cases ***
Allow_Location_And_Notifications
    [Documentation]    Онбординг с разрешением уведомлений и геолокации

    onboarding.Allow Notification
    onboarding.Allow Location
    Go Back
    

Passing_Instructions
    [Documentation]    Прохождение слайдов с обучением работе в приложении
    
    Pass Instructions

#Wrong_Authorization
 #   [Documentation]    Авторизация c невалидными данными

