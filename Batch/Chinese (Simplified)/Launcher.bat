:: ������Ϣ���趨
@echo off
set ReTimes=0
:start
title ��������������...
@echo                             �������������v5.2.4
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
:: �������������
if not exist "%~dp0����.ini" (goto :1)
for /f "tokens=1,* delims==" %%a in ('findstr "����汾=" "����.ini"') do (set Version=%%~b)
for /f "tokens=1,* delims==" %%a in ('findstr "Debug=" "����.ini"') do (set Debug=%%~b)
if not "%Debug%"=="true" (@echo off) else (goto :11)
:debug
if not "%Version%"=="v5.2.4" (goto :2)
if not exist "%~dp0*.jar" (goto :4)
for /f "tokens=1,* delims==" %%a in ('findstr "�Զ�����=" "����.ini"') do (set AutoRestart=%%~b)
for /f "tokens=1,* delims==" %%a in ('findstr "���˿ں�=" "����.ini"') do (set AutoPort=%%~b)
if not "%AutoRestart%"=="��" (if not "%AutoRestart%"=="��" (goto :3))
if not "%AutoPort%"=="��" (if not "%AutoPort%"=="��" (goto :3))
if "%AutoPort%"=="��" (
    if exist "%~dp0server.properties" (for /f "tokens=1,* delims==" %%a in ('findstr "server-port=" "server.properties"') do (set Port=%%b)) else (set Port=25565))
if "%AutoRestart%"=="��" (
    for /f "tokens=1,* delims==" %%a in ('findstr "�������ʱ��=" "����.ini"') do (set LaSeconds=%%~b)
    for /f "tokens=1,* delims==" %%a in ('findstr "����ʱ��=" "����.ini"') do (set ReSeconds=%%~b)
    for /f "tokens=1,* delims==" %%a in ('findstr "��������=" "����.ini"') do (set ReLimits=%%~b)
    for /f "tokens=1,* delims==" %%a in ('findstr "�Զ�����=" "����.ini"') do (set AutoBackup=%%~b))
if "%AutoRestart%"=="��" (
    if not "%LaSeconds%"=="��" (if not "%LaSeconds%"=="��" (goto :3))
    if not "%AutoBackup%"=="��" (if not "%AutoBackup%"=="��" (goto :3)))
if "%AutoBackup%"=="��" (
    for /f "tokens=1,* delims==" %%a in ('findstr "���ݵȼ�=" "����.ini"') do (set BackupLevel=%%~b)
    for /f "tokens=1,* delims==" %%a in ('findstr "����·��=" "����.ini"') do (set BackupWay=%%~b)
    for /f "tokens=1,* delims==" %%a in ('findstr "��������=" "����.ini"') do (set BackupName=%%~b))
if "%AutoBackup%"=="��" (
    if "%BackupWay%"=="" (goto :8)
    if not "%BackupLevel%" LSS "1" (if not "%BackupLevel%" LSS "10" (goto :9)))
for /f "tokens=1,* delims==" %%a in ('findstr "ʹ��Ĭ��Java=" "����.ini"') do (set MainJava=%%~b)
for /f "tokens=1,* delims==" %%a in ('findstr "�Զ�ѡ��JVM" "����.ini"') do (set AutoJVM=%%~b)
for /f "tokens=1,* delims==" %%a in ('findstr "�Զ���JVM����=" "����.ini"') do (set JVM=%%~b)
for /f "tokens=1,* delims==" %%a in ('findstr "�Զ���������=" "����.ini"') do (set OJVM=%%~b)
if not "%MainJava%"=="��" (if not "%MainJava%"=="��" (goto :3))
if not "%AutoJVM%"=="��" (if not "%AutoJVM%"=="��" (goto :3))
if "%MainJava%"=="��" (
    for /f "tokens=1,* delims==" %%a in ('findstr "Java·��=" "����.ini"') do (set Java=%%~b))
if "%MainJava%"=="��" (if not exist "%Java%" (goto :6))
for /f "tokens=1,* delims==" %%a in ('findstr "�Զ�������=" "����.ini"') do (set AutoCore=%%~b)
if not "%AutoCore%"=="��" (if not "%AutoCore%"=="��" (goto :3))
if "%AutoCore%"=="��" (
    for /f "tokens=1,* delims==" %%a in ('findstr "��������=" "����.ini"') do (set Core=%%~b)) else (
    for /f %%a in ('dir /b *.jar') do (set Core=%%a))
if "%Core%"=="" (goto :5)
if not exist "%~dp0%Core%" (goto :5)
for /f "tokens=1,* delims==" %%a in ('findstr "����=" "����.ini"') do (set Title=%%~b)
for /f "tokens=1,* delims==" %%a in ('findstr "����ڴ�=" "����.ini"') do (set MaxRAM=%%~b)
for /f "tokens=1,* delims==" %%a in ('findstr "��С�ڴ�=" "����.ini"') do (set MinRAM=%%~b)
:: ����������ʱ��
if %time:~0,2% LSS 10 (
    set Atime=%date:~5,2%.%date:~8,2%-%time:~1,1%:%time:~3,2%) else (
    set Atime=%date:~5,2%.%date:~8,2%-%time:~0,2%:%time:~3,2%)
if "%LaSeconds%"=="��" (
    if "%AutoRestart%"=="��" (
        if "%AutoPort%"=="��" (
            title [%Title%]--����[%ReTimes%]��--�˿�=[%Port%]-�������ʱ��[%Atime%]--�ڴ�=[%MinRAM%/%MaxRAM%]--Golden_Godsun����v5.2.4) else (
            title [%Title%]--����[%ReTimes%]��--�������ʱ��[%Atime%]--�ڴ�=[%MinRAM%/%MaxRAM%]--Golden_Godsun����v5.2.4)) else (
        if "%AutoPort%"=="��" (
            title [%Title%]--�˿�=[%Port%]--�ڴ�=[%MinRAM%/%MaxRAM%]--Golden_Godsun����v5.2.4) else (
            title [%Title%]--�ڴ�=[%MinRAM%/%MaxRAM%]--Golden_Godsun����v5.2.4))) else (
    if "%AutoRestart%"=="��" (
        if "%AutoPort%"=="��" (
            title [%Title%]--����[%ReTimes%]��--�˿�=[%Port%]--�ڴ�=[%MinRAM%/%MaxRAM%]--Golden_Godsun����v5.2.4) else (
            title [%Title%]--����[%ReTimes%]��--�ڴ�=[%MinRAM%/%MaxRAM%]--Golden_Godsun����v5.2.4)) else (
        if "%AutoPort%"=="��" (
            title [%Title%]--�˿�=[%Port%]--�ڴ�=[%MinRAM%/%MaxRAM%]--Golden_Godsun����v5.2.4) else (
            title [%Title%]--�ڴ�=[%MinRAM%/%MaxRAM%]--Golden_Godsun����v5.2.4)))
:: ��Ⲣͬ��EULA
if exist "%~dp0eula.txt" (goto :yeula)
if exist "%~dp0modules.yml" (goto :yeula)
if exist "%~dp0velocity.toml" (goto :yeula)
echo #This End User License Agreement has been automatically written and agreed to using the startup software!>>eula.txt
echo (https://account.mojang.com/documents/minecraft_eula).>>eula.txt
echo #Golden_Godsun production, software version v5.2.4>>eula.txt
echo #%date:~0,4%/%date:~5,2%/%date:~8,2% %time:~0,2%:%time:~3,2%:%time:~6,2%>>eula.txt
echo eula=true>>eula.txt
@echo.
@echo                   δ��⵽'eula.txt'�ļ������Զ�д�벢ͬ�⣡
@echo.
@echo -----------------------------------------------------------------------------------
:yeula
:: ����������
set Adate=%date:~0,4%%date:~5,2%%date:~8,2%&if %time:~0,2% EQU 0 (set Atime=%time:~3,2%%time:~6,2%) else (set Atime=%time:~0,2%%time:~3,2%%time:~6,2%)
if "%AutoJVM%"=="��" (
    if "%MainJava%"=="��" (
        "%Java%" %JVM% -Xms%MinRAM% -Xmx%MaxRAM% -jar "%Core%" %OJVM% nogui) else (
        java %JVM% -Xms%MinRAM% -Xmx%MaxRAM% -jar "%Core%" %OJVM% nogui)) else (
    if "%MainJava%"=="��" (
        if not exist "%~dp0server.properties" (
            "%Java%" %JVM% -Xms%MinRAM% -Xmx%MaxRAM% -XX:+UseG1GC -XX:G1HeapRegionSize=4M -XX:+UnlockExperimentalVMOptions -XX:+ParallelRefProcEnabled -XX:+AlwaysPreTouch -jar "%Core%" %OJVM% nogui) else (
            "%Java%" %JVM% -Xms%MinRAM% -Xmx%MaxRAM% -XX:+UseG1GC -XX:+ParallelRefProcEnabled -XX:MaxGCPauseMillis=200 -XX:+UnlockExperimentalVMOptions -XX:+DisableExplicitGC -XX:+AlwaysPreTouch -XX:G1NewSizePercent=30 -XX:G1MaxNewSizePercent=40 -XX:G1HeapRegionSize=8M -XX:G1ReservePercent=20 -XX:G1HeapWastePercent=5 -XX:G1MixedGCCountTarget=4 -XX:InitiatingHeapOccupancyPercent=15 -XX:G1MixedGCLiveThresholdPercent=90 -XX:G1RSetUpdatingPauseTimePercent=5 -XX:SurvivorRatio=32 -XX:+PerfDisableSharedMem -XX:MaxTenuringThreshold=1 -Dusing.aikars.flags=https://mcflags.emc.gs -Daikars.new.flags=true -jar "%Core%" %OJVM% nogui)) else (
        if not exist "%~dp0server.properties" (
            java %JVM% -Xms%MinRAM% -Xmx%MaxRAM% -XX:+UseG1GC -XX:G1HeapRegionSize=4M -XX:+UnlockExperimentalVMOptions -XX:+ParallelRefProcEnabled -XX:+AlwaysPreTouch -jar "%Core%" %OJVM% nogui) else (
            java %JVM% -Xms%MinRAM% -Xmx%MaxRAM% -XX:+UseG1GC -XX:+ParallelRefProcEnabled -XX:MaxGCPauseMillis=200 -XX:+UnlockExperimentalVMOptions -XX:+DisableExplicitGC -XX:+AlwaysPreTouch -XX:G1NewSizePercent=30 -XX:G1MaxNewSizePercent=40 -XX:G1HeapRegionSize=8M -XX:G1ReservePercent=20 -XX:G1HeapWastePercent=5 -XX:G1MixedGCCountTarget=4 -XX:InitiatingHeapOccupancyPercent=15 -XX:G1MixedGCLiveThresholdPercent=90 -XX:G1RSetUpdatingPauseTimePercent=5 -XX:SurvivorRatio=32 -XX:+PerfDisableSharedMem -XX:MaxTenuringThreshold=1 -Dusing.aikars.flags=https://mcflags.emc.gs -Daikars.new.flags=true -jar "%Core%" %OJVM% nogui)))
:: �ر�������������
set Bdate=%date:~0,4%%date:~5,2%%date:~8,2%&if %time:~0,2% EQU 0 (set /a Btime=%time:~3,2%%time:~6,2%-%Atime%) else (set /a Btime=%time:~0,2%%time:~3,2%%time:~6,2%-%Atime%)
if %Btime% LEQ 2 (if %Adate%==%Bdate% (goto :10))
set /a ReTimes=%ReTimes%+1
if "%AutoRestart%"=="��" (goto :stop)
if "%ReTimes%"=="%ReLimits%" (goto :7)
if "%AutoBackup%"=="��" (goto :backup)
:endbackup
title ����������%ReSeconds%�������
@echo.
@echo -----------------------------------------------------------------------------------
@echo.
@echo                             ����������%ReSeconds%�������
@echo.
@echo -----------------------------------------------------------------------------------
timeout -t %ReSeconds% >nul
goto :start
:: ���ݷ�����
:backup
title �������������ݣ������ȷ�ϣ�
@echo.
@echo -----------------------------------------------------------------------------------
@echo.
@echo                            �������������ݣ������ȷ�ϣ�
@echo.
@echo -----------------------------------------------------------------------------------
choice /c TF /n /t 10 /d F /m "ȷ�ϱ����밴"T"�������밴"F"��10����Զ�ȡ�����ݣ�"
if not %errorlevel%==1 (goto :endbackup)
title ������������...
@echo -----------------------------------------------------------------------------------
@echo.
@echo                              ���������ڽ��б���
@echo.
@echo -----------------------------------------------------------------------------------
if %time:~0,2% LSS 10 (
    set Atime=%time:~1,1%.%time:~3,2%.%time:~6,2%) else (
    set Atime=%time:~0,2%.%time:~3,2%.%time:~6,2%)
"%AppData%\Server Components\7z.exe" a -t7z "%BackupWay%\%BackupName%-[%date:~0,4%.%date:~5,2%.%date:~8,2%]-[%Atime%].7z" "%~dp0*" -r -mf -mmt -mhc -mhcf -mx%BackupLevel% -ms=200m
goto :endbackup
:: ���������ļ�
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
echo #�����ʹ��Ĭ��Java�����ֶ�����Java·��������: "C:\Program Files\Eclipse Adoptium\jre-17.0.5.8-hotspot\bin\java.exe"��>>����.ini
echo ʹ��Ĭ��Java="��">>����.ini
echo Java·��="">>����.ini
echo.>>����.ini
echo #����������Ż���aikars������BC������ע��: ����趨���Զ���Ĳ������Զ��ϲ��������Ż��Ĳ������棩>>����.ini
echo #�ر��Զ�ѡ��JVM���ʹ��Ĭ���������������ر���JVM�������Ż����������п��ǲ��������������ѡ���У�>>����.ini
echo #�Զ���JVM����Ϊ����Minecraftʱʹ�õĶ���JVM��������û��ȷ�����յ�������벻Ҫ�����޸�>>����.ini
echo #�Զ������������ı����е����ݽ��ᱻֱ��ƴ��������������ĩβ������: "--forceUpgrade"��>>����.ini
echo �Զ�ѡ��JVM="��">>����.ini
echo �Զ���JVM����="">>����.ini
echo �Զ���������="">>����.ini
echo.>>����.ini
echo #�����������Զ���⼰�ֶ�����>>����.ini
echo #�Ƿ��Զ�ʶ����ģ�������л�ģʽ�������루����أ�������ʱ���Ӻ������ƣ�>>����.ini
echo #�Զ������Ŀ����ڵ�ǰ·��ֻ��һ��jar�ļ���jar�ļ����ܴ��ո񣬷�����ܳ���>>����.ini
echo #����ر��Զ���⣬���ֶ�����������ƣ��ɴ��ո�����: "Minecraft Server.jar"��>>����.ini
echo �Զ�������="��">>����.ini
echo ��������="">>����.ini
echo.>>����.ini
echo #����ڴ漰��С�ڴ棨����д��λM��G��>>����.ini
echo ����ڴ�="4G">>����.ini
echo ��С�ڴ�="4G">>����.ini
echo.>>����.ini
echo #����������ģʽ��ʱ�����>>����.ini
echo #�������رպ��Ƿ�������������л�ģʽ�������루����أ����ر�ʱ���Ӻ��������������ر��Զ����ݣ�>>����.ini
echo #������ӳ�����ʱ�䣬��ô����д���֣���λ: �룩>>����.ini
echo #����������ʾ�������Σ������ʹ����0����>>����.ini
echo �Զ�����="��">>����.ini
echo ����ʱ��="0">>����.ini
echo ��������="0">>����.ini
echo.>>����.ini
echo #������������ѡ�񱸷�>>����.ini
echo #�Ƿ��ڷ�����������ѡ����б��ݣ������루����أ����ر�ʱ���Ӻ�����������>>����.ini
echo #���ݵȼ�ָ�����ٶȼ���С������ԽСѹ���ٶ�Խ�죬�����Խ�󣬿�ʹ�÷�Χ: ��1~9����>>����.ini
echo #��������ָ�����������ļ����ļ����������Զ�������>>����.ini
echo #��������Զ����ݣ������뱸��·��������: "C:\Users\Administrator\Desktop\����������"��>>����.ini
echo �Զ�����="��">>����.ini
echo ���ݵȼ�="1">>����.ini
echo ��������="�Զ�����">>����.ini
echo ����·��="%UserProfile%\Desktop\����������">>����.ini
echo.>>����.ini
echo #ע������������ص�ַΪ��https://github.com/SolitudeSun/Minecraft-Server-Launcher>>����.ini
echo #ע��ÿ���������ϸ���ע�ͽ������ã�������ֻ�ѡ���Ƿ�������ȷ�����򱨴�Ų�����>>����.ini
echo.>>����.ini
echo #����������>>����.ini
echo #�û�����ʹ�ñ���������µ��κ��������⼰����������Լ����𣬱���������κ����Σ�>>����.ini
echo #ʹ�ñ�����������û���֪���������ݣ�>>����.ini
echo #Golden_Godsun�����������޸İ汾�ţ�>>����.ini
echo ����汾="v5.2.4">>����.ini
echo Debug="false">>����.ini
goto :stop
:: �������⼰��ʾ
:1
title ��ʾ��δ��⵽'����.ini'�ļ������Զ������µ������ļ�����ǰ��'����.ini'��������������
@echo.
@echo -----------------------------------------------------------------------------------
@echo.
@echo ��ʾ��δ��⵽'����.ini'�ļ������Զ������µ������ļ�����ǰ��'����.ini'��������������
@echo.
@echo -----------------------------------------------------------------------------------
mshta vbscript:msgbox("��ʾ��δ��⵽'����.ini'�ļ������Զ������µ������ļ�����ǰ��'����.ini'��������������",vbSystemModal,"�������������v5.2.4     Golden_Godsun����")(window.close)
goto :config
:2
title ���棺�����ļ��汾�����޷��������У����Զ������µ������ļ�����ǰ����������������
@echo.
@echo -----------------------------------------------------------------------------------
@echo.
@echo ���棺�����ļ��汾�����޷��������У����Զ������µ������ļ�����ǰ����������������
@echo.
@echo -----------------------------------------------------------------------------------
mshta vbscript:msgbox("���棺�����ļ��汾�����޷��������У����Զ������µ������ļ�����ǰ����������������",vbSystemModal,"�������������v5.2.4     Golden_Godsun����")(window.close)
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
mshta vbscript:msgbox("���棺�Զ�������ò������������Ƿ�Ϊ����أ�",vbSystemModal,"�������������v5.2.4     Golden_Godsun����")(window.close)
goto :stop
:4
title ��ʾ��δ��⵽��������jar���뽫���ĸ��Ƶ����������Ŀ¼��
@echo.
@echo -----------------------------------------------------------------------------------
@echo.
@echo           ��ʾ��δ��⵽��������jar���뽫���ĸ��Ƶ����������Ŀ¼��
@echo.
@echo -----------------------------------------------------------------------------------
mshta vbscript:msgbox("��ʾ��δ��⵽��������jar���뽫���ĸ��Ƶ����������Ŀ¼��",vbSystemModal,"�������������v5.2.4     Golden_Godsun����")(window.close)
goto :stop
:5
title ���棺'%Core%'�������ƴ����пո�ĺ���������'����.ini'�н������ã�
@echo.
@echo -----------------------------------------------------------------------------------
@echo.
@echo         ���棺'%Core%'�������ƴ����пո�ĺ���������'����.ini'�н������ã�
@echo.
@echo -----------------------------------------------------------------------------------
mshta vbscript:msgbox("���棺'%Core%'�������ƴ����пո�ĺ���������'����.ini'�н������ã�",vbSystemModal,"�������������v5.2.4     Golden_Godsun����")(window.close)
goto :stop
:6
title ���棺δ��⵽%Java%·���µ�Java������'����.ini'����������Java·����
@echo.
@echo -----------------------------------------------------------------------------------
@echo.
@echo ���棺δ��⵽%Java%·���µ�Java������'����.ini'����������Java·����
@echo.
@echo -----------------------------------------------------------------------------------
mshta vbscript:msgbox("���棺δ��⵽%Java%·���µ�Java������'����.ini'����������Java·����",vbSystemModal,"�������������v5.2.4     Golden_Godsun����")(window.close)
goto :stop
:7
title ��ʾ�����õ��������������Ѵﵽ%ReLimits%�Σ����Զ��رշ�������
@echo.
@echo -----------------------------------------------------------------------------------
@echo.
@echo               ��ʾ�����õ��������������Ѵﵽ%ReLimits%�Σ����Զ��رշ�������
@echo.
@echo -----------------------------------------------------------------------------------
mshta vbscript:msgbox("��ʾ�����õ��������������Ѵﵽ%ReLimits%�Σ����Զ��رշ�������",vbSystemModal,"�������������v5.2.4     Golden_Godsun����")(window.close)
goto :stop
:8
title ���棺���������Զ����ݣ���δ�����Զ����ݵ�·������ǰ��'����.ini'������·����
@echo.
@echo -----------------------------------------------------------------------------------
@echo.
@echo ���棺���������Զ����ݣ���δ�����Զ����ݵ�·������ǰ��'����.ini'������·����
@echo.
@echo -----------------------------------------------------------------------------------
mshta vbscript:msgbox("���棺���������Զ����ݣ���δ�����Զ����ݵ�·������ǰ��'����.ini'������·����",vbSystemModal,"�������������v5.2.4     Golden_Godsun����")(window.close)
goto :stop
:9
title ���棺�����õı��ݵȼ��д��󣬲���1-9�ķ�Χ�У���ǰ��'����.ini'������·����
@echo.
@echo -----------------------------------------------------------------------------------
@echo.
@echo ���棺�����õı��ݵȼ��д��󣬲���1-9�ķ�Χ�У���ǰ��'����.ini'������·����
@echo.
@echo -----------------------------------------------------------------------------------
mshta vbscript:msgbox("���棺�����õı��ݵȼ��д��󣬲���1-9�ķ�Χ�У���ǰ��'����.ini'������·����",vbSystemModal,"�������������v5.2.4     Golden_Godsun����")(window.close)
goto :stop
:10
title ���棺��⵽�����������쳣����������������Java���û�����������ѯ�����ˣ�
@echo -----------------------------------------------------------------------------------
@echo.
@echo                 ���棺��⵽�����������쳣�����Զ�ֹͣ��������
@echo              ��������������Java�汾��Java���û�����������ѯ�����ˣ�
@echo.
@echo -----------------------------------------------------------------------------------
mshta vbscript:msgbox("���棺��⵽�����������쳣�����Զ�ֹͣ����������������������Java�汾��Java���û�����������ѯ�����ˣ�",vbSystemModal,"�������������v5.2.4     Golden_Godsun����")(window.close)
goto :stop
:11
title ��ʾ��Debugģʽ�ѿ�������Ϊά��ʱר��ѡ����������ǰ��������رգ�
@echo -----------------------------------------------------------------------------------
@echo.
@echo        ��ʾ��Debugģʽ�ѿ�������Ϊά��ʱר��ѡ����������ǰ��������رգ�
@echo.
@echo -----------------------------------------------------------------------------------
mshta vbscript:msgbox("��ʾ��Debugģʽ�ѿ�������Ϊά��ʱר��ѡ����������ǰ��������رգ�",vbSystemModal,"�������������v5.2.4     Golden_Godsun����")(window.close)
@echo on
goto :debug
:: ֹͣ��Ϣ���˳�
:stop
@echo.
@echo -----------------------------------------------------------------------------------
@echo.
@echo                                  �������ѹر�
@echo                                ��������˳�....
@echo.
@echo -----------------------------------------------------------------------------------
pause >nul
exit