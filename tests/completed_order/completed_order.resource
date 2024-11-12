*** Settings ***
Documentation    Кейворды для главного экрана
Resource    ../common.resource    # robotcode: ignore


*** Keywords ***
Open Completed Orders
    [Documentation]    Открываем историю заказов
    Click Element                    ${MAIN_MENU_BTN}
    Wait Until Element Is Visible    ${COMPLETED_ORDERS_BTN}
    Click Element                    ${COMPLETED_ORDERS_BTN}
    Wait Until Element Is Visible    //android.widget.TextView[@text="История заказов"]

Scroll Until Completed Order Is Found
    [Documentation]    Скролим, пока не найдем нужный завершенный заказ
    ${is_element_present}=    Set Variable    ${False}
    WHILE  not ${is_element_present}
        ${is_element_present}=    Run Keyword And Return Status
        ...    Wait Until Element Is Visible    ${COMPLETED_ORDER}    timeout=0.5s
        IF  ${is_element_present}
            BREAK
        ELSE
            Swipe By Percent    50    80    50    20    400
        END
    END
