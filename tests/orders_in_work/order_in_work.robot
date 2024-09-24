*** Settings ***
Documentation    Ресурсы и предусловия
Resource    ../main_page/main_page.resource
Resource    order_in_work.resource
Suite Setup    Precondition: Main Page


*** Test Cases ***
Open orders in work
    [Documentation]    Открыть страницу заявок в работе
    Open Orders In Work

Scroll To Find Order To Accept
    [Documentation]    Скролим, пока не найдем нужную заявку
    Scroll Until Order To Accept Is Found

Open Accepted Order
    [Documentation]    Открыть найденную заявку
    Click Element    ${ORDER_TO_ACCEPT}
    Wait Until Element Is Visible    ${LOAD_CAR_BTN}
    Check Taken Order Status

Load The Truck
    [Documentation]    Сменить статус заявки на "Погружен"
    Load The Truck
    Check Loaded Order Status

Complete Order
    [Documentation]    Сменить статус заявки на "Завершен"
    Complete Order
    order_in_work.Check Completed Order Status
    Close Application
