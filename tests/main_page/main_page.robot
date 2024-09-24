*** Settings ***
Documentation    Ресурсы и предусловия
Resource    main_page.resource
Suite Setup    Precondition: Main Page


*** Test Cases ***
Open New Orders
    [Documentation]    Открыть страницу заявок в работе
    Open New Orders

Scroll To Find Order To Accept
    [Documentation]    Скролим, пока не найдем нужную заявку
    Scroll Until Order To Accept Is Found

Open Order To Accept
    [Documentation]    Открыть найденную заявку
    Click Element    ${ORDER_TO_ACCEPT}

Take Order
    [Documentation]    Взять заявку в работу
    Check New Order Status
    Click Element    ${TAKE_ORDER_BTN}
    Click Element    ${DO_NOT_CONFIRM_BTN}
    Check New Order Status
    Click Element    ${TAKE_ORDER_BTN}
    Click Element    ${CONFIRM_BTN}
    Check Taken Order Status
    Close Application
