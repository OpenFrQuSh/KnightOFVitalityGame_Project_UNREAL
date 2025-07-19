# KnightOFVitalityGame_Project_UNREAL



<p align="center">
  <img src="README_QuotedAssetes/demo.gif" alt="演示" width="400" />
  <br>
  <b>演示效果</b>
</p>

# 基于🛠️[Inno Setup]打包成.exe
立刻前往➠[下载游戏(Output.7z)](https://github.com/OpenFrQuSh/KnightOFVitalityGame_Project_UNREAL/releases/tag/shipping)

⚠️: 请下载下面的 Output.7z（而不是 Source code.zip，或者Source code.tar.gz）

📂.iss↓

```
KnightOFVitality.iss是Inno Setup打包脚本，可以参考参考
```


 
 # 🟥 KnightOFVitality.iss  ⇣
我们大致讲一下.iss脚本语句的意思。
```
//setup定义安装程序的信息和属性
[Setup]
//安装界面标题
AppName=OpenFrquShGame
//安装界面的版本号
AppVersion=1.0
```
如图所示：

<img width="234" height="22" alt="602px-BookAndQuillDemonstration" src="https://github.com/user-attachments/assets/22dcb319-131f-4b0b-99c2-f94b13c1f5b1" />

AppName=OpenFrquShGame所以显示OpenFrquShGame，AppVersion=1.0所以显示Version 1.0

接下来，我们继续看
```
//{autopf}是一个常量，它代表系统Program Files 目录
//而这段语法，则可以表示：C:\Program Files\OpenFrquShGame
DefaultDirName={autopf}\OpenFrquShGame
```
如图所示：

<img width="499" height="392" alt="QQ20250720-020510" src="https://github.com/user-attachments/assets/bde99e39-09a2-43b2-aacc-0f3066adcb7a" />

⚠️:注意，它只是默认路径，并且你可以选择其他路径，它不具备强制性
```
//你开始菜单下创建的程序组名称
DefaultGroupName=OpenFrquShGame
```
如图所示：

<img width="760" height="717" alt="QQ20250720-021016" src="https://github.com/user-attachments/assets/760b3482-5722-4260-9ab3-3cbfab7d7e67" />


```
// 卸载程序显示的图标，指向\KnightOFVitality_openfrqushgame.exe图标
UninstallDisplayIcon={app}\KnightOFVitality_openfrqushgame.exe
```

如图所示：

<img width="796" height="274" alt="QQ20250720-022446" src="https://github.com/user-attachments/assets/b1bef133-6038-400e-bf2a-b57c0d824907" />

# ⚠️:注意由于我没有KnightOFVitality_openfrqushgame.exe，所以

<img width="1125" height="634" alt="QQ20250720-022307" src="https://github.com/user-attachments/assets/2601a815-b125-492c-9ba9-3ecee4f69620" />

# 🚫它什么也没显示

```
//生成的安装包名称，KnightInstaller会生成KnightInstaller.exe
OutputBaseFilename=KnightInstaller
```
如图所示：
<img width="640" height="42" alt="QQ20250720-023105" src="https://github.com/user-attachments/assets/a1dbfb21-0351-4f65-bfbb-7ea45cc142f8" />



```
//压缩算法
Compression=lzma
//开启固定压缩模式，多个文件压缩更小，解压时间增加
SolidCompression=yes
//安装界面的小图标，必须的.ico
SetupIconFile=C:\Users\zxxuh\Desktop\MC_UI\favicon (1).ico
```
如图所示：

<img width="1426" height="782" alt="QQ20250720-023503" src="https://github.com/user-attachments/assets/bcd6ade6-23a8-4ab9-b697-1096b5c17e67" />

.ico格式转换网站：https://www.xbgjw.com/ico
（⚠️:注意，没有表明推存，作者随便使用的）
```
//安装界面左侧图片，必须.bmp
WizardImageFile=C:\Users\zxxuh\Desktop\MC_UI\orig_480x480.bmp
//在64位系统上用64位模式安装
ArchitecturesInstallIn64BitMode=x64compatible
//安装程序需要管理员权限运行
PrivilegesRequired=admin
```
如图所示：
<img width="499" height="392" alt="QQ20250720-020944" src="https://github.com/user-attachments/assets/6c6dab40-c4d0-4a94-a561-4d2900b97d44" />
# ⚠️:注意，.bmp推荐等比缩放：🟢 1：1.9 布局推荐164-492 * 314-942.依据自身需求来，‼️太大可能导致失真，需注意

.bmp格式转换网站：https://cdkm.com/cn/jpg-to-bmp
（⚠️:注意，没有表明推存，作者随便使用的）
#        

        
#  Files，定义需要复制安装目录的文件

关键字：Source（需要打包的源文件），关键字：DestDir: "{app}"（目标目录= "{app}"），关键字：Flags（控制文件复制方式）：recursesubdirs（包含子目录），ignoreversion（忽略文件版本检测），createallsubdirs（创建源文件下的所有文件）
```
[Files]
Source: "F:\BaiduNetdiskDownload\1\KnightOFVitalityGame\*"; DestDir: "{app}"; Flags: recursesubdirs ignoreversion createallsubdirs
```

# ❌Icons
```
//⚠️:注意，你可能很仔细发现了最下面的一摸一样的Icons段，没错，它不会选择2个都要，而是会覆盖靠前的Icons，所以这段话并不是最终输出！
[Icons]
Name: "{commondesktop}\OpenFrquShGame"; Filename: "{app}\KnightOFVitality_openfrqushgame.exe"; WorkingDir: "{app}"
```
# RUN：定义安装完后执行的程序

```
[Run]
Filename: "{app}\KnightOFVitality\Binaries\Win64\KnightOFVitality-Win64-Shipping.exe"; Description: "运行 OpenFrquShGame"; Flags: nowait postinstall skipifsilent
```
1.Filename: "{app}\KnightOFVitality\Binaries\Win64\KnightOFVitality-Win64-Shipping.exe" 执行运行的程序路径
<img width="491" height="384" alt="QQ20250720-031756" src="https://github.com/user-attachments/assets/bdf0821d-23f6-49e8-a664-5918ed462b0a" />


2. Description: "运行 OpenFrquShGame"
<img width="489" height="383" alt="QQ20250720-031809" src="https://github.com/user-attachments/assets/ece58cee-79d6-4ede-a7e8-030bff000fb1" />

   
3.Flags: nowait postinstall skipifsilent：nowait（安装程序直接结束） postinstall（显示Description） skipifsilent（静默安装时跳过运行）


# ⭕这才是有效，会执行的Icons段
定义创建桌面快捷方式

1.Name: "{commondesktop}\OpenFrquShGame";桌面上创建快捷方式名字为：OpenFrquShGame

2. Filename: "{app}\KnightOFVitality\Binaries\Win64\KnightOFVitality-Win64-Shipping.exe"：快捷方式指向{app}
  
3.  WorkingDir: "{app}\KnightOFVitality\Binaries\Win64"：启动程序时工作目录
```
[Icons]
Name: "{commondesktop}\OpenFrquShGame"; Filename: "{app}\KnightOFVitality\Binaries\Win64\KnightOFVitality-Win64-Shipping.exe"; WorkingDir: "{app}\KnightOFVitality\Binaries\Win64"
```

# 至此，.iss脚本内容大致讲完了🎉🎉🎉

