@ECHO off & setlocal enableextensions enabledelayedexpansion

:: Some settings are used to connect to an external dependency, e.g. Azure IoT Hub and IoT Hub Manager API
:: Depending on which settings and which dependencies are needed, edit the list of variables checked

IF "%PCS_STORAGE_CONNSTRING%" == "" (
    echo Error: the PCS_STORAGE_CONNSTRING environment variable is not defined.
    exit /B 1
)

IF "%PCS_STORAGEADAPTER_CONTAINER_NAME%" == "" (
    echo Error: the PCS_STORAGEADAPTER_CONTAINER_NAME environment variable is not defined.
    exit /B 1
)

endlocal