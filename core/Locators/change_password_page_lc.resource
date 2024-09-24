*** Settings ***
Documentation    Локаторы экрана смены пароля
Resource    ../../tests/common.resource


*** Variables ***
${CHANGE_PASSWORD_TTL}           com.b2b_logist.smarttracker.develop:id/tvChangePassword
${OLD_PASSWORD_FLD}              com.b2b_logist.smarttracker.develop:id/etChangePasswordOld
${NEW_PASSWORD_FLD}              com.b2b_logist.smarttracker.develop:id/etChangePasswordNew
${CLOSE_FORM_BTN}                com.b2b_logist.smarttracker.develop:id/btnChangePasswordClose
${SAVE_PASSWORD_BTN}             com.b2b_logist.smarttracker.develop:id/btnChangePasswordSave
