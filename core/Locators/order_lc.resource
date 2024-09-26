*** Settings ***
Documentation    Локаторы экрана заказа


*** Variables ***
${TAKE_ORDER_BTN}                com.b2b_logist.smarttracker.develop:id/btnOrderInProgress
${REJECT_ORDER_BTN}              com.b2b_logist.smarttracker.develop:id/btnOrderReject
${CONFIRM_BTN}                   com.b2b_logist.smarttracker.develop:id/btnChangeStatusOk
${DO_NOT_CONFIRM_BTN}            com.b2b_logist.smarttracker.develop:id/btnChangeStatusClose
${ORDER_STATUS_FLD}              //android.widget.TextView
...    [@resource-id="com.b2b_logist.smarttracker.develop:id/tvOrderStatusValue"]
${LOAD_CAR_BTN}                  com.b2b_logist.smarttracker.develop:id/btnOrderLoad
${COMPLETE_ORDER_BTN}            com.b2b_logist.smarttracker.develop:id/btnOrderComplete
${ORDR_GENERAL_PAGE}             //android.widget.TextView[@text="ОСНОВНОЕ"]
${ORDR_ROUT_PAGE}                //android.widget.TextView[@text="МАРШРУТ"]
${ORDR_PICS_PAGE}                //android.widget.TextView[@text="ФОТО"]
${LOAD_POINT_TTL}                //android.widget.TextView
...    [@resource-id="com.b2b_logist.smarttracker.develop:id/tvOrderRouteTitle" and @text="Погрузка"]
${UNLOAD_POINT_TTL}              //android.widget.TextView
...    [@resource-id="com.b2b_logist.smarttracker.develop:id/tvOrderRouteTitle" and @text="Разгрузка"]
${ADD_PIC_BTN}                   com.b2b_logist.smarttracker.develop:id/fab_expand_menu_button
${PICS_FILTER_BTN}               com.b2b_logist.smarttracker.develop:id/miOrderFilter
${ALL_PICS_FLTR}                 //android.widget.TextView
...    [@resource-id="com.b2b_logist.smarttracker.develop:id/title" and @text="Все"]
${TTN_PICS_FLTR}                 //android.widget.TextView
...    [@resource-id="com.b2b_logist.smarttracker.develop:id/title" and @text="Транспортная накладная"]
${ROUT_LIST_PICS_FLTR}                 //android.widget.TextView
...    [@resource-id="com.b2b_logist.smarttracker.develop:id/title" and @text="Путевые листы"]
${PROBLEM_PICS_FLTR}                 //android.widget.TextView
...    [@resource-id="com.b2b_logist.smarttracker.develop:id/title" and @text="Брак"]
${TTN_TTL}                //android.widget.TextView[@resource-id="com.b2b_logist.smarttracker.develop:id/tvOrderRoutePhotoTypeTitle" and @text="Транспортная накладная"]
${ROUT_LIST_TTL}                //android.widget.TextView[@resource-id="com.b2b_logist.smarttracker.develop:id/tvOrderRoutePhotoTypeTitle" and @text="Путевые листы"]
${PROBLEM_TTL}                //android.widget.TextView[@resource-id="com.b2b_logist.smarttracker.develop:id/tvOrderRoutePhotoTypeTitle" and @text="Брак"]
