*** Settings ***
Library    AppiumLibrary

*** Keywords ***  
Open app  
    Open Application    
    ...    remote_url=${CONNECTION_URL}
    ...    automationName=${AUTOMATION_NAME}    
    ...    platformName=${PLATFORM_NAME}    
    ...    platformVersion=${PLATFORM_VERSION}    
    ...    deviceName=${DEVICE_NAME}    
    ...    udid=${UDID}    
    ...    appPackage=${APP_PACKAGE}    
    ...    appActivity=${APP_ACTIVITY}


*** Variables ***
${CONNECTION_URL}     http://127.0.0.1:4723    # Адрес сервера
${AUTOMATION_NAME}    UiAutomator2    # Драйвер автоматизации
${PLATFORM_NAME}      Android
${PLATFORM_VERSION}   13
${DEVICE_NAME}        NothingPhone
${UDID}            670b4d70           # Можно найти через adb devices
${APP_PACKAGE}     com.b2b_logist.smarttracker.develop
${APP_ACTIVITY}    com.b2b_logist.smarttracker.presentation.ui.MainActivity