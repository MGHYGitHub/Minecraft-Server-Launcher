::[Bat To Exe Converter]
::
::fBE1pAF6MU+EWH3eyE85Jh5XXgWEKFc8+liZAil+FiK7J73S0Qj3eo7P5jFg32blDcE/o6oe02hMndlMLxRVbh2lawEgug4=
::YAwzoRdxOk+EWAjk
::fBw5plQjdCuDJFSN+kczOhpSWDgEwIY/7HSZESDHahpIJ6fVVuMrRAcGFjJj4mXqInlhjkirFp1mHQ/Licu39s9lIAY3pg4=
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSjk=
::cBs/ulQjdF25
::ZR41oxFsdFKZSTk=
::eBoioBt6dFKZSTk=
::cRo6pxp7LAbNWATEpSI=
::egkzugNsPRvcWATEpSI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+IeA==
::cxY6rQJ7JhzQF1fEqQJlZkoaHErUXA==
::ZQ05rAF9IBncCkqN+0xwdVtCGUrTcj3a
::ZQ05rAF9IAHYFVzEqQIdIRVRTxaDOn/6NbAO/u3pr8aGt0MeXOctGA==
::eg0/rx1wNQPfEVWB+kM9LVsJDCmLMm65FLQa/KjI6viRp19deOMqdozT36bAJfgWig==
::fBEirQZwNQPfEVWB+kM9LVsJDCmLMm65FLQa/KjI6viRp19deOMqdozT36bAJfgWig==
::cRolqwZ3JBvQF1fEqQIdIRVRTxaDOn/6gEnxbQI6ahNPJ73S0Qj3/XYTug==
::dhA7uBVwLU+EWHSN+kczOhpSWGQ=
::YQ03rBFzNR3SWATE0008LB5acyONOHivCNU=
::dhAmsQZ3MwfNWATE100gMQldSwyWfCO5T/VOuLqpr82IrkkYWt0Yd4vIz7ru
::ZQ0/vhVqMQ3MEVWAtB9wDxRYSAGMA0y1AqYJ5og=
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRmp/Uw1KwlVShDCupdXg1/dbREzahpIJ6fV0Rv3OMdeMmIK/RxJzUrocZMj6V1VnNgZAlI4
::Zh4grVQjdCuDJFSN+kczOhpSWDgEwIY/7HSZESDHahpIJ6fVVuMrRAoVNjJm0GXgC3lhhVmoPLIajp5CXVUOMBeza28=
::YB416Ek+Zm8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
set ReTimes=0
:start
title ��������������...
@echo                             �������������v5.1.6
@echo                               Golden_Godsun����
@echo -----------------------------------------------------------------------------------
@echo.
@echo                                   ����������
@echo                     �û�����ʹ�ñ���������µ��κ���������
@echo                     ����������Լ����𣬱���������κ�����
@echo                     ʹ�ñ�����������û���֪���������ݣ���
@echo.
@echo -----------------------------------------------------------------------------------
@echo.
@echo                                ��������������
@echo                                  �����ĵȴ���
@echo.
@echo -----------------------------------------------------------------------------------
if not exist "%~dp0����.ini" (goto :1)
for /f "tokens=1,* delims==" %%a in ('findstr "����汾=" "����.ini"') do (set Version=%%~b)
if not "%Version%"=="v5.1.6" (goto :2)
if not exist "%~dp0*.jar" (goto :4)
for /f "tokens=1,* delims==" %%a in ('findstr "���˿ں�=" "����.ini"') do (set AutoPort=%%~b)
if not "%AutoPort%"=="��" (if not "%AutoPort%"=="��" (goto :3))
if "%AutoPort%"=="��" (goto :nport)
if exist "%~dp0server.properties" (for /f "tokens=1,* delims==" %%a in ('findstr "server-port=" "server.properties"') do (set Port=%%b)) else (set Port=25565)
:nport
for /f "tokens=1,* delims==" %%a in ('findstr "�Զ�����=" "����.ini"') do (set AutoRestart=%%~b)
if not "%AutoRestart%"=="��" (if not "%AutoRestart%"=="��" (goto :3))
if "%AutoRestart%"=="��" (goto :nrestart)
for /f "tokens=1,* delims==" %%a in ('findstr "�������ʱ��=" "����.ini"') do (set LaSeconds=%%~b)
for /f "tokens=1,* delims==" %%a in ('findstr "����ʱ��=" "����.ini"') do (set ReSeconds=%%~b)
for /f "tokens=1,* delims==" %%a in ('findstr "��������=" "����.ini"') do (set ReLimits=%%~b)
for /f "tokens=1,* delims==" %%a in ('findstr "�Զ�����=" "����.ini"') do (set AutoBackup=%%~b)
if not "%LaSeconds%"=="��" (if not "%LaSeconds%"=="��" (goto :3))
if not "%AutoBackup%"=="��" (if not "%AutoBackup%"=="��" (goto :3))
if "%AutoBackup%"=="��" (goto :nrestart)
for /f "tokens=1,* delims==" %%a in ('findstr "���ݵȼ�=" "����.ini"') do (set BackupLevel=%%~b)
for /f "tokens=1,* delims==" %%a in ('findstr "����·��=" "����.ini"') do (set BackupWay=%%~b)
for /f "tokens=1,* delims==" %%a in ('findstr "��������=" "����.ini"') do (set BackupName=%%~b)
if "%BackupWay%"=="" (goto :8)
if not "%BackupLevel%"=="1" (if not "%BackupLevel%"=="9" (if not "%BackupLevel%"=="2" (if not "%BackupLevel%"=="8" (if not "%BackupLevel%"=="3" (if not "%BackupLevel%"=="7" (if not "%BackupLevel%"=="4" (if not "%BackupLevel%"=="6" (if not "%BackupLevel%"=="5" (goto :9)))))))))
:nrestart
for /f "tokens=1,* delims==" %%a in ('findstr "ʹ��Ĭ��Java=" "����.ini"') do (set MainJava=%%~b)
if not "%MainJava%"=="��" (if not "%MainJava%"=="��" (goto :3))
if "%MainJava%"=="��" (goto :yjava)
for /f "tokens=1,* delims==" %%a in ('findstr "Java·��=" "����.ini"') do (set Java=%%~b)
if not exist "%Java%" (goto :6)
:yjava
for /f "tokens=1,* delims==" %%a in ('findstr "�Զ�������=" "����.ini"') do (set AutoCore=%%~b)
if not "%AutoCore%"=="��" (if not "%AutoCore%"=="��" (goto :3))
if "%AutoCore%"=="��" (goto :ycore)
for /f "tokens=1,* delims==" %%a in ('findstr "��������=" "����.ini"') do (set Core=%%~b)
if not exist "%~dp0%Core%" (goto :5)
:ycore
for /f %%a in ('dir /b *.jar') do (set Core=%%a)
for /f "tokens=1,* delims==" %%a in ('findstr "����JVM=" "����.ini"') do (set JVM=%%~b)
for /f "tokens=1,* delims==" %%a in ('findstr "����=" "����.ini"') do (set Title=%%~b)
for /f "tokens=1,* delims==" %%a in ('findstr "����ڴ�=" "����.ini"') do (set MaxRAM=%%~b)
for /f "tokens=1,* delims==" %%a in ('findstr "��С�ڴ�=" "����.ini"') do (set MinRAM=%%~b)
set /a Thour=%time:~0,2%
if %Thour% LSS 10 (set Ttime=%date:~5,2%.%date:~8,2%-%time:~1,1%:%time:~3,2%) else (set Ttime=%date:~5,2%.%date:~8,2%-%time:~0,2%:%time:~3,2%)
if "%LaSeconds%"=="��" (if "%AutoRestart%"=="��" (if "%AutoPort%"=="��" (title [%Title%]--����[%ReTimes%]��--�˿�=[%Port%]--�������ʱ��[%Ttime%]--�ڴ�=[%MinRAM%/%MaxRAM%]--Golden_Godsun����v5.1.6) else (title [%Title%]--����[%ReTimes%]��--�������ʱ��[%Ttime%]--�ڴ�=[%MinRAM%/%MaxRAM%]--Golden_Godsun����v5.1.6)) else (if "%AutoPort%"=="��" (title [%Title%]--�˿�=[%Port%]--�ڴ�=[%MinRAM%/%MaxRAM%]--Golden_Godsun����v5.1.6) else (title [%Title%]--�ڴ�=[%MinRAM%/%MaxRAM%]--Golden_Godsun����v5.1.6))) else (if "%AutoRestart%"=="��" (if "%AutoPort%"=="��" (title [%Title%]--����[%ReTimes%]��--�˿�=[%Port%]--�ڴ�=[%MinRAM%/%MaxRAM%]--Golden_Godsun����v5.1.6) else (title [%Title%]--����[%ReTimes%]��--�ڴ�=[%MinRAM%/%MaxRAM%]--Golden_Godsun����v5.1.6)) else (if "%AutoPort%"=="��" (title [%Title%]--�˿�=[%Port%]--�ڴ�=[%MinRAM%/%MaxRAM%]--Golden_Godsun����v5.1.6) else (title [%Title%]--�ڴ�=[%MinRAM%/%MaxRAM%]--Golden_Godsun����v5.1.6)))
if exist "%~dp0eula.txt" (goto :yeula)
if exist "%~dp0modules.yml" (goto :yeula)
if exist "%~dp0velocity.toml" (goto :yeula)
echo #This End User License Agreement has been automatically written and agreed to using the startup software!>>eula.txt
echo (https://account.mojang.com/documents/minecraft_eula).>>eula.txt
echo #Golden_Godsun production, software version v5.1.6>>eula.txt
echo eula=true>>eula.txt
@echo.
@echo                   δ��⵽"eula.txt"�ļ������Զ�д�벢ͬ�⣡
@echo.
@echo -----------------------------------------------------------------------------------
:yeula
set Fdate=%date:~0,4%%date:~5,2%%date:~8,2%&set Ftime=%time:~0,2%%time:~3,2%%time:~6,2%
if "%MainJava%"=="��" (goto :njava)
if exist "%~dp0modules.yml" (goto :B&V)&if exist "%~dp0velocity.toml" (goto :B&V)
java %JVM% -Xms%MinRAM% -Xmx%MaxRAM% -XX:+UseG1GC -XX:+ParallelRefProcEnabled -XX:MaxGCPauseMillis=200 -XX:+UnlockExperimentalVMOptions -XX:+DisableExplicitGC -XX:+AlwaysPreTouch -XX:G1NewSizePercent=30 -XX:G1MaxNewSizePercent=40 -XX:G1HeapRegionSize=8M -XX:G1ReservePercent=20 -XX:G1HeapWastePercent=5 -XX:G1MixedGCCountTarget=4 -XX:InitiatingHeapOccupancyPercent=15 -XX:G1MixedGCLiveThresholdPercent=90 -XX:G1RSetUpdatingPauseTimePercent=5 -XX:SurvivorRatio=32 -XX:+PerfDisableSharedMem -XX:MaxTenuringThreshold=1 -Dusing.aikars.flags=https://mcflags.emc.gs -Daikars.new.flags=true -jar %Core% nogui
goto :stop
:B&V
java %JVM% -Xms%MinRAM% -Xmx%MaxRAM% -XX:+UseG1GC -XX:G1HeapRegionSize=4M -XX:+UnlockExperimentalVMOptions -XX:+ParallelRefProcEnabled -XX:+AlwaysPreTouch -jar %Core% nogui
goto :stop
:njava
if exist "%~dp0modules.yml" (goto :JavaB&V)&if exist "%~dp0velocity.toml" (goto :JavaB&V)
"%Java%" %JVM% -Xms%MinRAM% -Xmx%MaxRAM% -XX:+UseG1GC -XX:+ParallelRefProcEnabled -XX:MaxGCPauseMillis=200 -XX:+UnlockExperimentalVMOptions -XX:+DisableExplicitGC -XX:+AlwaysPreTouch -XX:G1NewSizePercent=30 -XX:G1MaxNewSizePercent=40 -XX:G1HeapRegionSize=8M -XX:G1ReservePercent=20 -XX:G1HeapWastePercent=5 -XX:G1MixedGCCountTarget=4 -XX:InitiatingHeapOccupancyPercent=15 -XX:G1MixedGCLiveThresholdPercent=90 -XX:G1RSetUpdatingPauseTimePercent=5 -XX:SurvivorRatio=32 -XX:+PerfDisableSharedMem -XX:MaxTenuringThreshold=1 -Dusing.aikars.flags=https://mcflags.emc.gs -Daikars.new.flags=true -jar %Core% nogui
goto :stop
:JavaB&V
"%Java%" %JVM% -Xms%MinRAM% -Xmx%MaxRAM% -XX:+UseG1GC -XX:G1HeapRegionSize=4M -XX:+UnlockExperimentalVMOptions -XX:+ParallelRefProcEnabled -XX:+AlwaysPreTouch -jar %Core% nogui
goto :stop
:stop
set /a Stime=%time:~0,2%%time:~3,2%%time:~6,2%-%Ftime%&set Sdate=%date:~0,4%%date:~5,2%%date:~8,2%
if %Stime% LEQ 2 (if %Fdate% == %Sdate% (goto :10))
set /a ReTimes=%ReTimes%+1
if "%AutoRestart%"=="��" (goto :exit)
if "%ReTimes%"=="%ReLimits%" (goto :7)
if "%AutoBackup%"=="��" (goto :backup)
:end
@echo -----------------------------------------------------------------------------------
@echo.
@echo                             ����������%ReSeconds%�������
@echo.
@echo -----------------------------------------------------------------------------------
timeout -t %ReSeconds% >nul
goto :start
:backup
title ������������...
@echo -----------------------------------------------------------------------------------
@echo.
@echo                              ���������ڽ��б���
@echo.
@echo -----------------------------------------------------------------------------------
set /a Bhour=%time:~0,2%
if %Bhour% LSS 10 (set Btime=%time:~1,1%.%time:~3,2%.%time:~6,2%) else (set Btime=%time:~0,2%.%time:~3,2%.%time:~6,2%)
"%AppData%\Server Components\7-Zip\7z.exe" a -t7z "%BackupWay%\%BackupName%-[%date:~0,4%.%date:~5,2%.%date:~8,2%]-[%Btime%].7z" "%~dp0*" -r -mf -mmt -mhc -mhcf -mx%BackupLevel% -ms=200m
title ��������������ɣ���������...
@echo -----------------------------------------------------------------------------------
@echo.
@echo                          ��������������ɣ���������...
@echo.
@echo -----------------------------------------------------------------------------------
@echo.
goto :end
:config
echo #����������ı�������>>����.ini
echo #���������˿ںŲ���ʾ�ڱ����ϣ����루����أ�>>����.ini
echo #�����������������ʱ�䲢��ʾ�ڱ����ϣ����루����أ�>>����.ini
echo ����="������">>����.ini
echo ���˿ں�="��">>����.ini
echo �������ʱ��="��">>����.ini
echo.>>����.ini
echo #�Ƿ�ָ��ʹ��ĳ��·����Java>>����.ini
echo #�����ڲ�ͬ�汾�ķ������ò�ͬ�汾��Java��������л�ģʽ�������루����أ�������ʱ����Javaλ�ã�>>����.ini
echo #�����ʹ��Ĭ��Java�����ֶ�����Java·��������: "C:\Program Files\Zulu\zulu-8\bin\java.exe"��>>����.ini
echo #�Ƿ���������Ķ���JVM����������: "-Dusing.aikars.flags=https://mcflags.emc.gs"��>>����.ini
echo #������Ѳ���ʹ��aikar�Ľű������������ظ���ӣ����������գ�>>����.ini
echo ʹ��Ĭ��Java="��">>����.ini
echo Java·��="">>����.ini
echo ����JVM="">>����.ini
echo.>>����.ini
echo #����ڴ漰��С�ڴ棨����д��λM��G��>>����.ini
echo ����ڴ�="2G">>����.ini
echo ��С�ڴ�="2G">>����.ini
echo.>>����.ini
echo #�����������Զ���⼰�ֶ�����>>����.ini
echo #�Ƿ��Զ�ʶ����ģ�������л�ģʽ�������루����أ�������ʱ���Ӻ������ƣ�>>����.ini
echo #�����Ľ����ڵ�ǰ·��ֻ��һ��jar�ļ���������ܳ������������Ʋ��ܴ��ո�>>����.ini
echo #����ر��Զ���⣬���ֶ�����������ƣ�����: Server.jar��>>����.ini
echo �Զ�������="��">>����.ini
echo ��������="">>����.ini
echo.>>����.ini
echo #����������ģʽ��ʱ�����>>����.ini
echo #�������رպ��Ƿ�������������л�ģʽ�������루����أ����ر�ʱ���Ӻ��������������ر��Զ����ݣ�>>����.ini
echo #������ӳ�����ʱ�䣬��ô����д���֣���λ: �룩>>����.ini
echo #������������˼���������Σ������رգ�������������д0����>>����.ini
echo �Զ�����="��">>����.ini
echo ����ʱ��="0">>����.ini
echo ��������="0">>����.ini
echo.>>����.ini
echo #�������������Զ�����>>����.ini
echo #�Ƿ��ڷ�������������б��ݣ������루����أ����ر�ʱ���Ӻ�����������>>����.ini
echo #���ݵȼ�ָ�����ٶȼ���С������ԽСѹ���ٶ�Խ�죬�����Խ�󣬿�ʹ�÷�Χ: ��1~9����>>����.ini
echo #��������ָ�����������ļ����ļ����������Զ�������>>����.ini
echo #��������Զ����ݣ������뱸��·��������: "C:\Users\Administrator\Desktop\Server\����"��>>����.ini
echo �Զ�����="��">>����.ini
echo ���ݵȼ�="1">>����.ini
echo ��������="����������">>����.ini
echo ����·��="">>����.ini
echo.>>����.ini
echo #ע����һ�ο������ܷ������ļ���δ���£��ᵼ�¼��˿ںŵȳ������������������У�>>����.ini
echo #ע��ÿ���������ϸ���ע�ͽ������ã�������ֻ�ѡ���Ƿ�������ȷ�����򱨴�Ų�����>>����.ini
echo.>>����.ini
echo #����������>>����.ini
echo #�û�����ʹ�ñ���������µ��κ��������⼰����������Լ����𣬱���������κ����Σ�>>����.ini
echo #ʹ�ñ�����������û���֪���������ݣ�>>����.ini
echo #Golden_Godsun�����������޸İ汾�ţ�>>����.ini
echo ����汾="v5.1.6">>����.ini
goto :exit
:1
title ��ʾ��δ��⵽"����.ini"�ļ������Զ������µ������ļ�����ǰ��"����.ini"��������������
@echo.
@echo -----------------------------------------------------------------------------------
@echo.
@echo ��ʾ��δ��⵽"����.ini"�ļ������Զ������µ������ļ�����ǰ��"����.ini"��������������
@echo.
@echo -----------------------------------------------------------------------------------
goto :config
:2
title ���棺�����ļ��汾�����޷��������У����Զ������µ������ļ�����ǰ����������������
@echo.
@echo -----------------------------------------------------------------------------------
@echo.
@echo ���棺�����ļ��汾�����޷��������У����Զ������µ������ļ�����ǰ����������������
@echo.
@echo -----------------------------------------------------------------------------------
del /q ����.ini >nul
goto :config
:3
title ���棺�Զ�������ò������������Ƿ�Ϊ����أ�
@echo.
@echo -----------------------------------------------------------------------------------
@echo.
@echo                ���棺�Զ�������ò������������Ƿ�Ϊ����أ�
@echo.
@echo -----------------------------------------------------------------------------------
goto :exit
:4
title ��ʾ��δ��⵽��������jar���뽫���ĸ��Ƶ����������Ŀ¼��
@echo.
@echo -----------------------------------------------------------------------------------
@echo.
@echo           ��ʾ��δ��⵽��������jar���뽫���ĸ��Ƶ����������Ŀ¼��
@echo.
@echo -----------------------------------------------------------------------------------
goto :exit
:5
title ���棺"%Core%"�����������ô�������"����.ini"�������������ƣ�
@echo.
@echo -----------------------------------------------------------------------------------
@echo.
@echo         ���棺"%Core%"�����������ô�������"����.ini"�������������ƣ�
@echo.
@echo -----------------------------------------------------------------------------------
goto :exit
:6
title ���棺δ��⵽%Java%·���µ�Java������"����.ini"����������Java·����
@echo.
@echo -----------------------------------------------------------------------------------
@echo.
@echo ���棺δ��⵽%Java%·���µ�Java������"����.ini"����������Java·����
@echo.
@echo -----------------------------------------------------------------------------------
goto :exit
:7
title ��ʾ�����õ��������������Ѵﵽ%ReLimits%�Σ����Զ��رշ�������
@echo.
@echo -----------------------------------------------------------------------------------
@echo.
@echo               ��ʾ�����õ��������������Ѵﵽ%ReLimits%�Σ����Զ��رշ�������
@echo.
@echo -----------------------------------------------------------------------------------
goto :exit
:8
title ���棺���������Զ����ݣ���δ�����Զ����ݵ�·������ǰ��"����.ini"������·����
@echo.
@echo -----------------------------------------------------------------------------------
@echo.
@echo ���棺���������Զ����ݣ���δ�����Զ����ݵ�·������ǰ��"����.ini"������·����
@echo.
@echo -----------------------------------------------------------------------------------
goto :exit
:9
title ���棺�����õı��ݵȼ��д��󣬲���1-9�ķ�Χ�У���ǰ��"����.ini"������·����
@echo.
@echo -----------------------------------------------------------------------------------
@echo.
@echo ���棺�����õı��ݵȼ��д��󣬲���1-9�ķ�Χ�У���ǰ��"����.ini"������·����
@echo.
@echo -----------------------------------------------------------------------------------
goto :exit
:10
title ���棺��⵽�����������쳣����������������Java���û�����������ѯ�����ˣ�
@echo -----------------------------------------------------------------------------------
@echo.
@echo                 ���棺��⵽�����������쳣�����Զ�ֹͣ��������
@echo              ��������������Java�汾��Java���û�����������ѯ�����ˣ�
@echo.
@echo -----------------------------------------------------------------------------------
goto :exit
:exit
@echo.
@echo -----------------------------------------------------------------------------------
@echo.
@echo                                  �������ѹر�
@echo                                ��������˳�....
@echo.
@echo -----------------------------------------------------------------------------------
pause >nul
exit