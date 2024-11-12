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
    result = subprocess.run(['robot', test])
    output = 'output.xml'
    report = 'report.html'
    log = 'log.html'
    new_folder = (str(i))
    if not os.path.exists(new_folder):
        os.makedirs(new_folder)
    destination1 = os.path.join(new_folder, output)
    destination2 = os.path.join(new_folder, report)
    destination3 = os.path.join(new_folder, log)
    shutil.move(output, destination1)
    shutil.move(report, destination2)
    shutil.move(log, destination3)
    if result.returncode != 0:
        print(f"Тест {test} завершился с ошибкой.")
        break

#Останавливаем Appium сервер
service.stop()
print("Appium сервер остановлен")