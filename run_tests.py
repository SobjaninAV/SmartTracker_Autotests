from appium.webdriver.appium_service import AppiumService
import subprocess
import os
import shutil

#Запускаем Appium сервер
def start_appium():
    service = AppiumService()
    service.start()
    return service

if __name__ == "__main__":
    service = start_appium()
    print("Appium сервер запущен")

#Список сценариев по порядку выполнения    
test_files = [
    'tests/main_page/main_page.robot',
    'tests/order_in_work/order_in_work.robot',
    'tests/reject_order/reject_order.robot',
    'tests/Profile/profile.robot',
    'tests/password_change/password_change.robot',
    'tests/restore_password/restore_password.robot'
]

#Запускаем сценарии друг за другом
i = 0
for test in test_files:
    i = i + 1
    result = subprocess.run(['robot', test])            #запускаем сценарий
    output = 'output.xml'                               #файл отчета
    report = 'report.html'                              #файл отчета
    log = 'log.html'                                    #файл отчета
    new_folder = (str("Отчёт " + str(i) + "-й сценарий"))
    if not os.path.exists(new_folder):                  #создаем папку для отчетов
        os.makedirs(new_folder)                         #создаем папку для отчетов
    destination1 = os.path.join(new_folder, output)     #кладем отчеты в отдельную папку
    destination2 = os.path.join(new_folder, report)     #кладем отчеты в отдельную папку
    destination3 = os.path.join(new_folder, log)        #кладем отчеты в отдельную папку
    shutil.move(output, destination1)                   #кладем отчеты в отдельную папку
    shutil.move(report, destination2)                   #кладем отчеты в отдельную папку
    shutil.move(log, destination3)                      #кладем отчеты в отдельную папку
    if result.returncode != 0:                          #останавливаем выполнение сценария в случае ошибки 
        print(f"Тест {test} завершился с ошибкой.")
        break

#Останавливаем Appium сервер
service.stop()
print("Appium сервер остановлен")