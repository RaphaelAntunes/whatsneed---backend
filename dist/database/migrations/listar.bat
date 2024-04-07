@echo off
setlocal EnableDelayedExpansion

rem Defina o diretório onde estão os arquivos
set "DIRETORIO=C:\Users\f\Desktop\Whatsneed\whatsneed---backend\dist\database\migrations"
rem Nome do arquivo de saída
set "ARQUIVO_SAIDA=output.txt"

rem Exclua o arquivo de saída, se ele já existir
if exist "%ARQUIVO_SAIDA%" del "%ARQUIVO_SAIDA%"

rem Percorra todos os arquivos no diretório
for %%F in ("%DIRETORIO%\*") do (
    rem Verifique se o item é um arquivo
    if exist "%%F" (
        rem Exiba o nome do arquivo
        echo %%~nxF >> "%ARQUIVO_SAIDA%"
    )
)

echo Arquivos listados em "%ARQUIVO_SAIDA%"

pause
