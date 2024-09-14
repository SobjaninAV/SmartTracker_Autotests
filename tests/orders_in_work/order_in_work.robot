*** Settings ***
Documentation    Ресурсы и предусловия
Resource    ../main_page/main_page.resource
Suite Setup    Precondition: Main Page


*** Test Cases ***
Open orders in work
    Open orders in work

Scroll To Find Order To Accept
    Scroll Until Order To Accept Is Found

#Open Accepted Order
    #Click Element    ${ORDER_TO_ACCEPT}
