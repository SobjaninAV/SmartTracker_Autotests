*** Settings ***
Documentation    Ресурсы и предусловия
Resource    ../main_page/main_page.resource
Resource    completed_order.resource
Suite Setup    Precondition: Main Page


*** Test Cases ***
Open completed orders
    Open completed orders

Scroll Until Completed Order Is Found
    Scroll Until Completed Order Is Found
    Click Element    ${COMPLETED_ORDER}

Open Compted Order
    Wait Until Element Is Visible    //android.widget.TextView[@text="${COMPLETED_ORDER_NMBR}"]

Check Completed Order Status
    Check Completed Order Status
    Close Application