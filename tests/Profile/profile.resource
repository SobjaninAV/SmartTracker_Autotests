*** Settings ***
Documentation    Кейворды для главного экрана
Resource    ../common.resource    # robotcode: ignore


*** Keywords ***
Tap On Left Side
    ${width}=    Get Window Width
    ${height}=    Get Window Height
    ${x}=       Evaluate    ${width} * 0.9
    ${y}=       Evaluate    ${height} * 0.5
    ${tap_position}=    Create List    ${x}    ${y}
    Tap With Positions    100    ${tap_position}
   