*** Settings ***
Documentation    Кейворды для главного экрана
Resource    ../common.resource    # robotcode: ignore


*** Keywords ***
Scroll Until Order To Reject Is Found
    [Documentation]    Скролим, пока не найдем нужный заказ
    ${is_element_present}=    Set Variable    ${False}
    WHILE  not ${is_element_present}
        ${is_element_present}=    Run Keyword And Return Status
        ...    Wait Until Element Is Visible    ${ORDER_TO_REJECT}    timeout=0.5s
        IF  ${is_element_present}
            BREAK
        ELSE
            Swipe By Percent    50    80    50    20    500
        END
    END

Check Rejected Order Status
    [Documentation]    Проверить статус заказа "Отказ"
    Sleep    3s
    ${actual_value}=    Get Element Attribute    ${ORDER_STATUS_FLD}    text
    Should Be Equal    ${actual_value}    Отказ
