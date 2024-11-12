*** Settings ***
Documentation    Ресурсы и предусловия
Resource    reject_order.resource
Suite Setup    Precondition: Main Page


*** Test Cases ***
Open New Orders
    [Documentation]    Открыть страницу заявок в работе
    Open New Orders

Scroll To Find Order To Reject
    [Documentation]    Скролим, пока не найдем нужную заявку
    Scroll Until Order To Reject Is Found

Open Order To Accept
    [Documentation]    Открыть найденную заявку
    Click Element                    ${ORDER_TO_REJECT}

Take Order
    [Documentation]    Отказаться от заказа
    Check New Order Status
    Click Element                    ${REJECT_ORDER_BTN}
    Wait Until Element Is Visible    ${DO_NOT_CONFIRM_BTN}
    Click Element                    ${DO_NOT_CONFIRM_BTN}
    Check New Order Status
    Click Element                    ${REJECT_ORDER_BTN}
    Wait Until Element Is Visible    ${CONFIRM_BTN}
    Click Element                    ${CONFIRM_BTN}
    Check Rejected Order Status
    Close Application
