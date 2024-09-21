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
    Click Element    ${ORDER_TO_ACCEPT}

Open Compted Order
    Wait Until Element Is Visible    //android.widget.TextView[@text="${ORDER_NMBR_TO_ACCEPT}"]

Check Completed Order Status
    Check Completed Order Status
    Close Application