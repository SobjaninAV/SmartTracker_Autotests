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
    Take Order
    Close Application
