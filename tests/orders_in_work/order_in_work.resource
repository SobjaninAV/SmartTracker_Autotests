*** Settings ***
Documentation    Кейворды для главного экрана
Resource    ../common.resource    # robotcode: ignore


*** Keywords ***
Load The Truck
    Click Element    ${LOAD_CAR_BTN}
    Click Element    ${DO_NOT_CONFIRM_BTN}
    Click Element    ${LOAD_CAR_BTN}
    Click Element    ${CONFIRM_BTN}

Check Loaded Order Status
    ${actual_value}=    Get Element Attribute    ${ORDER_STATUS_FLD}    text
    Should Be Equal    ${actual_value}    Погрузился

Check Completed Order Status
    ${actual_value}=    Get Element Attribute    ${ORDER_STATUS_FLD}    text
    Should Be Equal    ${actual_value}    Завершенный заказ

Complete Order
    Wait Until Element Is Visible    ${COMPLETE_ORDER_BTN}
    Click Element    ${COMPLETE_ORDER_BTN}
    Click Element    ${DO_NOT_CONFIRM_BTN}
    Click Element    ${COMPLETE_ORDER_BTN}
    Click Element    ${CONFIRM_BTN}
