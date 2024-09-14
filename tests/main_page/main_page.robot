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
