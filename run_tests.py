from appium.webdriver.appium_service import AppiumService
import subprocess

def start_appium():
    service = AppiumService()
    service.start()
    return service

if __name__ == "__main__":
    service = start_appium()
    print("Appium сервер запущен")
    
test_files = [
    'tests/main_page/main_page.robot',
    'tests/order_in_work/order_in_work.robot',
    'tests/reject_order/reject_order.robot',
    'tests/Profile/profile.robot',
    'tests/password_change/password_change.robot',
    'tests/restore_password/restore_password.robot'
]

for test in test_files:
    result = subprocess.run(['robot', test])
    if result.returncode != 0:
        print(f"Тест {test} завершился с ошибкой.")
        break

service.stop()
print("Appium сервер остановлен")