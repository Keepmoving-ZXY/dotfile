使用`Start-Process -FilePath "python" -ArgumentList "C:\work\clip.py" -RedirectStandardOutput "clip_stdout.log" -RedirectStandardError "clip_stderr.log" -WindowStyle Hidden`在windows中运行clip.py脚本.

fedora41中微信无法使用fcitx5输入法问题：  
添加`GTK_IM_MODULE=fcitx QT_IM_MODULE=fcitx QT_IM_MODULE=fcitx XMODIFIERS=@im=fcitx`到wechat.desktop之中的环境变量配置部分；   
    
fedora41中微信在高分屏中界面太小问题：  
添加`QT_AUTO_SCREEN_SCALE_FACTOR=1`到wechat.desktop之中的环境变量配置部分；
    
fedora41中微信中文字体显示不正常问题:  
将`fonts.conf`复制到`~/.config/fontconfig/`之中，参考[这里](https://blog.geekgo.tech/linux/flatpak-%E5%BA%94%E7%94%A8%E4%B8%AD%E6%96%87%E5%AD%97%E4%BD%93%E9%97%AE%E9%A2%98/)；
