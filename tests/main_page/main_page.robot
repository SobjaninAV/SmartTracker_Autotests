*** Settings ***
Documentation    Ресурсы и предусловия
Resource    main_page.resource
Suite Setup    Precondition: Main Page


*** Test Cases ***
Generate Random Variables
    [Documentation]     Генерируем ФИО
    Generate Random Variables

Open orders in work
    [Documentation]     Посмотреть заказы в работе
    Open orders in work

Open new orders
    [Documentation]     Посмотреть новые заказы
    Open new orders

Open main menu
    [Documentation]     Нажать на кнопку главного меню
    Open main menu
