@echo off
cd /d "%~dp0"
echo Analizer - servidor local en http://localhost:8000
echo Presiona Ctrl+C para detenerlo.
python -m http.server 8000
