*** Settings ***
Documentation    Кейворды для главного экрана
Resource    ../common.resource    # robotcode: ignore


*** Keywords ***
Precondition: Main Page
    [Documentation]    Предусловие: на главном экране
    common.Launch App With Notifications And Geo
    common.Passing To The Main Page

Open Orders In Work
    [Documentation]    Открыть страницу заявок в работе
    Wait Until Element Is Visible    ${ORDERS_IN_WORK_LAYOUT}
    Click Element    ${ORDERS_IN_WORK_LAYOUT}

Open New Orders
    [Documentation]    Открыть страницу новых заявок
    Wait Until Element Is Visible    ${NEW_ORDERS_LAYOUT}
    Click Element    ${NEW_ORDERS_LAYOUT}

Open Main Menu
    [Documentation]    Открыть главное меню
    Wait Until Element Is Visible    ${MAIN_MENU_BTN}
    Click Element    ${MAIN_MENU_BTN}

Scroll Until Order To Accept Is Found
    [Documentation]    Скролим, пока не найдем нужный заказ
    ${is_element_present}=    Set Variable    ${False}
    WHILE  not ${is_element_present}
        ${is_element_present}=    Run Keyword And Return Status
        ...    Wait Until Element Is Visible    ${ORDER_TO_ACCEPT}    timeout=0.5s
        IF  ${is_element_present}
            BREAK
        ELSE
            Swipe By Percent    50    80    50    20    500
        END
    END

Check New Order Status
    [Documentation]    Проверить статус заказа "Новый"
    Sleep    time_=3s
    ${actual_value}=    Get Element Attribute    ${ORDER_STATUS_FLD}    text
    Should Be Equal    ${actual_value}    Новый заказ

Check Taken Order Status
    [Documentation]    Проверить статус заказа "В работе"
    Sleep    3s
    ${actual_value}=    Get Element Attribute    ${ORDER_STATUS_FLD}    text
    Should Be Equal    ${actual_value}    В работе
