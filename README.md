使用`Start-Process -FilePath "python" -ArgumentList "C:\work\clip.py" -RedirectStandardOutput "clip_stdout.log" -RedirectStandardError "clip_stderr.log" -WindowStyle Hidden`在windows中运行clip.py脚本.

微信无法使用fcitx5输入法问题：  
添加`GTK_IM_MODULE=fcitx QT_IM_MODULE=fcitx QT_IM_MODULE=fcitx XMODIFIERS=@im=fcitx`到wechat.desktop之中的环境变量配置部分；   
微信在高分屏中界面太小问题：  
添加`QT_AUTO_SCREEN_SCALE_FACTOR=1`到wechat.desktop之中的环境变量配置部分；
