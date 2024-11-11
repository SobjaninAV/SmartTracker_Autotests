import subprocess

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
