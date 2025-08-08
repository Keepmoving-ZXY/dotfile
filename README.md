使用`Start-Process -FilePath "python" -ArgumentList "C:\work\clip.py" -RedirectStandardOutput "clip_stdout.log" -RedirectStandardError "clip_stderr.log" -WindowStyle Hidden`在windows中运行clip.py脚本.

fedora41中微信无法使用fcitx5输入法问题：  
添加`GTK_IM_MODULE=fcitx QT_IM_MODULE=fcitx QT_IM_MODULE=fcitx XMODIFIERS=@im=fcitx`到wechat.desktop之中的环境变量配置部分；   
    
fedora41中微信在高分屏中界面太小问题：  
添加`QT_AUTO_SCREEN_SCALE_FACTOR=1`到wechat.desktop之中的环境变量配置部分；
    
fedora41中微信中文字体显示不正常问题:  
将`fonts.conf`复制到`~/.config/fontconfig/`之中，参考[这里](https://blog.geekgo.tech/linux/flatpak-%E5%BA%94%E7%94%A8%E4%B8%AD%E6%96%87%E5%AD%97%E4%BD%93%E9%97%AE%E9%A2%98/)；

kubuntu 24.04 LTS中坚果云主界面显示不正常问题：  
将坚果云的desktop文件中exec部分修改为：`-c 'GDK_SCALE=2 GDK_DPI_SCALE=0.5 exec ~/.nutstore/dist/bin/nutstore-pydaemon.py'`，解决方法参考[这里](https://naxiro.com/posts/linux-hidpi-nutstore/);

rime输入法输入顿号时出现候选列标而非直接输入的问题：  
`luna_pinyin.custom.yaml`文件放到`.local/share/fcitx5/rime/`中；  

todesk在kde中界面缩放问题：  
在`~/.config/environment.d/gtk-hidpi.conf`文件中放入如下内容：    
```
GDK_SCALE=2
GDK_DPI_SCALE=0.75
```
