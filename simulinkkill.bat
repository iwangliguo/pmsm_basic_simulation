del *.slxc /s
::del *.mat /s
del *.mexw64 /s
del *.tlc /s
::rmdir slprj /s
FOR /d /r . %%d IN (slprj) DO @IF EXIST "%%d" rd /s /q "%%d"
::del *.opt /s  ::不允许删除JLINK的设置
exit