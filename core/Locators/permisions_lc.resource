*** Settings ***
Documentation    Локаторы для экрана предоставления доступов


*** Variables ***
${ONBOARDING_SUBMIT_BTN}                com.b2b_logist.smarttracker.develop:id/btnSplashPermissionOk
${PERMISSION_FOREGROUND_ALLOW_BTN}      com.android.permissioncontroller:id/permission_allow_foreground_only_button
${ALLOW_ALWAYS_RADIO_BTN}               com.android.permissioncontroller:id/allow_always_radio_button
${GEOLOCATION_TURN_ON_SCRN}             //android.widget.FrameLayout[@content-desc="МЕСТОПОЛОЖЕНИЕ"]
${GEOLOCATION_TURN_ON_SWCH}             //android.widget.Switch[@resource-id="android:id/switch_widget"]
