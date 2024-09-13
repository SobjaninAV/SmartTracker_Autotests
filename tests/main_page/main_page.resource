*** Settings ***
Documentation    Кейворды для главного экрана
Resource    ../common.resource    # robotcode: ignore

*** Variables ***
${SECOND_NAME}    random
${FIRST_NAME}    random
${PATRONYMIC}    random

*** Keywords ***
Precondition: Main Page
    [Documentation]    Предусловие: на главном экране
    common.Launch App With Notifications And Geo
    common.Passing to the main page

Generate Random Variables
    ${SECOND_NAME}=    Evaluate    random.choice(["Иванов", "Петров", "Сидоров", "Кузнецов", "Смирнов"])    modules=random
    ${FIRST_NAME}=    Evaluate    random.choice(["Александр", "Максим", "Иван", "Дмитрий", "Егор"])    modules=random
    ${PATRONYMIC}=    Evaluate    random.choice(["Александрович", "Максимович", "Иванович", "Дмитриевич", "Егорович"])    modules=random

Open orders in work
    Wait Until Element Is Visible    ${ORDERS_IN_WORK_LAYOUT}
    Click Element    ${ORDERS_IN_WORK_LAYOUT}

Open new orders
    Wait Until Element Is Visible    ${NEW_ORDERS_LAYOUT}
    Click Element    ${NEW_ORDERS_LAYOUT}

Open main menu
    Wait Until Element Is Visible    ${MAIN_MENU_BTN}
    Click Element    ${MAIN_MENU_BTN}
