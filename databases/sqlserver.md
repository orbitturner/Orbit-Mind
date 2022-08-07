# TWEAKS

## DARK MODE

**DARKMODE SQLMGMTSTD**
```ps
powershell -Command "(gc 'C:\Program Files (x86)\Microsoft SQL Server Management Studio 18\Common7\IDE\ssms.pkgundef') -replace '\[\`$RootKey\`$\\Themes\\{1ded0138-47ce-435e-84ef-9ec1f439b749}\]', '//[`$RootKey`$\Themes\{1ded0138-47ce-435e-84ef-9ec1f439b749}]' | Out-File 'C:\Program Files (x86)\Microsoft SQL Server Management Studio 18\Common7\IDE\ssms.pkgundef'"
```

___

## **CASE STATEMENT**

https://www.sqlshack.com/understanding-sql-server-case-statement/#:~:text=SQL%20Server%20CASE%20statement%20syntax&text=The%20condition%20can%20be%20any,clause%20is%20stored%20in%20columnX.

___

## **Move SQL Server Maintenance Plan from One Server to Another**

https://www.mssqltips.com/sqlservertip/5335/move-sql-server-maintenance-plan-from-one-server-to-another/