*** Settings ***
Documentation    Ресурсы и предусловия
Resource    authorization.resource
Suite Setup    authorization.Precondition: At Authorizathion Form


*** Test Cases ***
Standart Authorization
    [Documentation]    Ввод логина, пароля и нажатие на кнопку авторизации

    authorization.Input Pasport Password And Authorize

Allow Background Geolocation
    [Documentation]    Разрешение отслеживания устройства в фоне

    authorization.Allow Geo At The Background Mode

Passing Secong Education
    [Documentation]    Прохождение обучения работе с заявками

    authorization.Pass Second Education
    