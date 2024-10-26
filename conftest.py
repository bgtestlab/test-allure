import os


def pytest_sessionfinish(session, exitstatus):
    os.system("allure generate --single-file")
