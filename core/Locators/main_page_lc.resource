*** Settings ***
Documentation    Локаторы для главного экрана
Resource    ../../variables.resource

*** Variables ***
${NEW_ORDERS_LAYOUT}               //android.widget.TextView[contains(@text, 'НОВЫЕ')]
${ORDERS_IN_WORK_LAYOUT}           //android.widget.TextView[contains(@text, 'В РАБОТЕ')]
${NOTIFICATION_BELL}               com.b2b_logist.smarttracker.develop:id/ivAllMenuNotifications
${MAIN_MENU_BTN}                   //android.widget.ImageButton
${ORDER_TO_ACCEPT}                 //android.widget.TextView[@resource-id="com.b2b_logist.smarttracker.develop:id/tvOrderTitle" and @text="${ORDER_NMBR_TO_ACCEPT}"]
${ORDER_TO_REJECT}                 //android.widget.TextView[@resource-id="com.b2b_logist.smarttracker.develop:id/tvOrderTitle" and @text="${ORDER_NMBR_TO_REJECT}"]
