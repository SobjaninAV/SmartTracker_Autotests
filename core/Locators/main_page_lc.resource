*** Settings ***
Documentation    Локаторы для главного экрана

*** Variables ***
${NEW_ORDERS_LAYOUT}               //android.widget.TextView[contains(@text, 'НОВЫЕ')]
${ORDERS_IN_WORK_LAYOUT}           //android.widget.TextView[contains(@text, 'В РАБОТЕ')]
${NOTIFICATION_BELL}               com.b2b_logist.smarttracker.develop:id/ivAllMenuNotifications
${MAIN_MENU_BTN}                   //android.widget.ImageButton