*** Settings ***
Documentation    Ресурсы и предусловия
Resource    ../main_page/main_page.resource
Resource    order_in_work.resource
Suite Setup    Precondition: Main Page


*** Test Cases ***
Open orders in work
    Open orders in work

Scroll To Find Order To Accept
    Scroll Until Order To Accept Is Found

Open Accepted Order
    Click Element    ${ORDER_TO_ACCEPT}
    Wait Until Element Is Visible    ${LOAD_CAR_BTN}
    Check Taken Order Status

Load The Truck
    Load The Truck
    Check Loaded Order Status

Complete Order
    Complete Order
    Check Completed Order Status
    Close Application
    