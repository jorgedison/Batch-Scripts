@echo "Verify Service MSSQLSERVER"
for /F "tokens=3 delims=: " %%H in ('sc query "MSSQLSERVER" ^| findstr "        STATE"') do (
  if /I "%%H" NEQ "RUNNING" (
   REM Put your code you want to execute here
   REM For example, the following line
   net start "MSSQLSERVER"
  )
)

@echo "Verify Service SQLSERVERAGENT"
for /F "tokens=3 delims=: " %%H in ('sc query "SQLSERVERAGENT" ^| findstr "        STATE"') do (
  if /I "%%H" NEQ "RUNNING" (
   REM Put your code you want to execute here
   REM For example, the following line
   net start "SQLSERVERAGENT"
  )
)
