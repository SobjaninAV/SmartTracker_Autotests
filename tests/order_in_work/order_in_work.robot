*** Settings ***
Documentation    Ресурсы и предусловия
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

Check Route And Added Pics Pages
     [Documentation]    Проверить вкладки "Маршрут" и "Фото"
     Check Route And Added Pics Pages

Check Pics Filters
    [Documentation]    Проверить отборы на вкладке "Фото"
    Check TTN Filter
    Check Route List Filter
    Check Problems Filter
    Check All Filter

Complete Order
    [Documentation]    Сменить статус заявки на "Завершен"
    Click Element    ${ORDR_GENERAL_PAGE}
    Complete Order
    Check Completed Order Status
    Close Application
