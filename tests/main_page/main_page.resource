*** Settings ***
Documentation    Кейворды для главного экрана
Resource    ../common.resource    # robotcode: ignore


*** Keywords ***
Precondition: Main Page
    [Documentation]    Предусловие: на главном экране
    common.Launch App With Notifications And Geo
    common.Passing to the main page

Open orders in work
    Wait Until Element Is Visible    ${ORDERS_IN_WORK_LAYOUT}
    Click Element    ${ORDERS_IN_WORK_LAYOUT}

Open new orders
    Wait Until Element Is Visible    ${NEW_ORDERS_LAYOUT}
    Click Element    ${NEW_ORDERS_LAYOUT}

Open main menu
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
