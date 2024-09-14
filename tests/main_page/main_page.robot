*** Settings ***
Documentation    Ресурсы и предусловия
Resource    main_page.resource
Suite Setup    Precondition: Main Page


*** Test Cases ***
Open new orders
    Open new orders

Scroll To Find Order To Accept
    Scroll Until Order To Accept Is Found

Open Order To Accept
    Click Element    ${ORDER_TO_ACCEPT}

Take Order
    Check New Order Status
    Click Element    ${TAKE_ORDER_BTN}
    Click Element    ${DO_NOT_CONFIRM_BTN}
    Check New Order Status
    Click Element    ${TAKE_ORDER_BTN}
    Click Element    ${CONFIRM_BTN}
    Check Taken Order Status