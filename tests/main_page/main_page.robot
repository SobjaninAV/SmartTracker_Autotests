*** Settings ***
Documentation    Ресурсы и предусловия
Resource    main_page.resource
Suite Setup    Precondition: Main Page


*** Test Cases ***
View orders in work
    [Documentation]     Посмотреть заказы в работе
    Wait Until Element Is Visible    ${ORDERS_IN_WORK_LAYOUT}
    Click Element    ${ORDERS_IN_WORK_LAYOUT}

View new orders
    [Documentation]     Посмотреть новые заказы
    Wait Until Element Is Visible    ${NEW_ORDERS_LAYOUT}
    Click Element    ${NEW_ORDERS_LAYOUT}

View new orders
    [Documentation]     Нажать на кнопку главного меню
    Wait Until Element Is Visible    ${MAIN_MENU_BTN}
    Click Element    ${MAIN_MENU_BTN}
