*** Settings ***
Documentation    Кейворды для главного экрана
Resource    ../common.resource    # robotcode: ignore


*** Keywords ***
Load The Truck
    [Documentation]    Сменить статус заявки на "Погружен"
    Wait Until Element Is Visible    ${LOAD_CAR_BTN}
    Click Element                    ${LOAD_CAR_BTN}
    Wait Until Element Is Visible    ${DO_NOT_CONFIRM_BTN}
    Click Element                    ${DO_NOT_CONFIRM_BTN}
    Wait Until Element Is Visible    ${LOAD_CAR_BTN}
    Click Element                    ${LOAD_CAR_BTN}
    Wait Until Element Is Visible    ${CONFIRM_BTN}
    Click Element                    ${CONFIRM_BTN}

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

Check Route And Added Pics Pages
     [Documentation]    Проверить вкладки "Маршрут" и "Фото"
     Click Element    ${ORDR_ROUT_PAGE}
     Wait Until Element Is Visible    ${LOAD_POINT_TTL}
     Wait Until Element Is Visible    ${UNLOAD_POINT_TTL}
     Click Element    ${ORDR_PICS_PAGE}
     Wait Until Element Is Visible    ${ADD_PIC_BTN}

Check TTN Filter
    [Documentation]    Проверить отбор по ТТН
    Click Element    ${PICS_FILTER_BTN}
    Click Element    ${TTN_PICS_FLTR}
    Wait Until Element Is Visible    ${TTN_TTL}
    Page Should Not Contain Element    ${ROUT_LIST_TTL}
    Page Should Not Contain Element    ${PROBLEM_TTL}

Check Route List Filter
    [Documentation]    Проверить отбор по ТТН
    Click Element    ${PICS_FILTER_BTN}
    Click Element    ${ROUT_LIST_PICS_FLTR}
    Wait Until Element Is Visible    ${ROUT_LIST_TTL}
    Page Should Not Contain Element    ${TTN_TTL}
    Page Should Not Contain Element    ${PROBLEM_TTL}

Check Problems Filter
    [Documentation]    Проверить отбор по браку
    Click Element    ${PICS_FILTER_BTN}
    Click Element    ${PROBLEM_PICS_FLTR}
    Wait Until Element Is Visible    ${PROBLEM_TTL}
    Page Should Not Contain Element    ${TTN_TTL}
    Page Should Not Contain Element    ${ROUT_LIST_TTL}

Check All Filter
    [Documentation]    Проверить отбор по браку
    Click Element    ${PICS_FILTER_BTN}
    Click Element    ${ALL_PICS_FLTR}
    Wait Until Element Is Visible    ${PROBLEM_TTL}
    Page Should Contain Element    ${TTN_TTL}
    Page Should Contain Element    ${ROUT_LIST_TTL}
