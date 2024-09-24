*** Settings ***
Documentation    Ресурсы и предусловия
Resource    ../main_page/main_page.resource
Suite Setup    Precondition: Main Page


*** Test Cases ***
Open Completed Orders
    [Documentation]    Открыть завершенные заказы
    Open Completed Orders

Scroll Until Completed Order Is Found
    [Documentation]    Скролим, пока не найдем нужный завершенный заказ
    Scroll Until Completed Order Is Found

Open Completed Order
    [Documentation]    Открыть завершенный заказ
    Click Element    ${COMPLETED_ORDER}
    Wait Until Element Is Visible    //android.widget.TextView[@text="${COMPLETED_ORDER_NMBR}"]

Check Completed Order Status
    [Documentation]    Проверить статус завершенного заказа
    Check Completed Order Status
    Close Application
