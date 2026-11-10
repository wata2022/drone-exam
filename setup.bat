@echo off
echo Setting up Python environment...

echo Creating virtual environment...
python -m venv venv

echo Activating virtual environment...
call venv\Scripts\activate.bat

echo Upgrading pip and installing build tools...
python -m pip install --upgrade pip wheel setuptools

echo Installing packages one by one...
pip install --no-cache-dir pandas==3.1.1
pip install --no-cache-dir streamlit==1.67.0

if errorlevel 1 (
    echo.
    echo ============================================
    echo Error: Package installation failed.
    echo Detailed error information above.
    echo.
    echo Troubleshooting steps:
    echo 1. Check the error message above
    echo 2. Try running the script again
    echo 3. If the error persists, please share the error message
    echo ============================================
    echo.
    pause
    exit /b 1
)

echo.
echo Setup completed successfully!
pause 