*** Settings ***
Documentation    Кейворды для главного экрана
Resource    ../common.resource    # robotcode: ignore


*** Keywords ***
Load The Truck
    [Documentation]    Сменить статус заявки на "Погружен"
    Click Element    ${LOAD_CAR_BTN}
    Click Element    ${DO_NOT_CONFIRM_BTN}
    Click Element    ${LOAD_CAR_BTN}
    Click Element    ${CONFIRM_BTN}

Check Loaded Order Status
    [Documentation]    Проверрить статус "Погрузился"
    ${actual_value}=    Get Element Attribute    ${ORDER_STATUS_FLD}    text
    Should Be Equal    ${actual_value}    Погрузился

Check Completed Order Status
    [Documentation]    Проверрить статус "Завершенный заказ"
    ${actual_value}=    Get Element Attribute    ${ORDER_STATUS_FLD}    text
    Should Be Equal    ${actual_value}    Завершенный заказ

Complete Order
    [Documentation]    Сменить статус заявки на "Завершен"
    Wait Until Element Is Visible    ${COMPLETE_ORDER_BTN}
    Click Element    ${COMPLETE_ORDER_BTN}
    Click Element    ${DO_NOT_CONFIRM_BTN}
    Click Element    ${COMPLETE_ORDER_BTN}
    Click Element    ${CONFIRM_BTN}
