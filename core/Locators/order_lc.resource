*** Settings ***
Documentation    Локаторы экрана авторизации


*** Variables ***
${TAKE_ORDER_BTN}                com.b2b_logist.smarttracker.develop:id/btnOrderInProgress
${REJECT_ORDER_BTN}              com.b2b_logist.smarttracker.develop:id/btnOrderReject
${CONFIRM_BTN}                   com.b2b_logist.smarttracker.develop:id/btnChangeStatusOk
${DO_NOT_CONFIRM_BTN}            com.b2b_logist.smarttracker.develop:id/btnChangeStatusClose
${ORDER_STATUS_FLD}              //android.widget.TextView[@resource-id="com.b2b_logist.smarttracker.develop:id/tvOrderStatusValue"]
${LOAD_CAR_BTN}                  com.b2b_logist.smarttracker.develop:id/btnOrderLoad
${COMPLETE_ORDER_BTN}            com.b2b_logist.smarttracker.develop:id/btnOrderComplete
