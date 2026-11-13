@echo on
cd test
if errorlevel 1 exit /b 1
python -m unittest -v
if errorlevel 1 exit /b 1
mpiexec -localonly -n 2 python -m unittest -v
if errorlevel 1 exit /b 1
