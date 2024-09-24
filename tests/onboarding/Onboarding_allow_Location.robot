*** Settings ***
Documentation    Ресурсы и предусловия
Resource    onboarding.resource
Suite Setup    common.Suite Setup


*** Test Cases ***
Allow_Location_And_Notifications
    [Documentation]    Онбординг с разрешением уведомлений и геолокации

    onboarding.Allow Notification
    onboarding.Allow Location
    Go Back

Turn On Geolocation
    [Documentation]    Включение геолокации
    Turn On Geolocation

Passing_Instructions
    [Documentation]    Прохождение слайдов с обучением работе в приложении

    Pass Instructions
