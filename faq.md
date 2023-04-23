## FAQ

<details>
  <summary>补全功能无法使用了</summary>
  删除 <code>~/.cache/SpaceVim</code> 文件夹即可
</details>

报错

```
Error detected while processing function leaderf#Any#start[4]..leaderf#LfPy[1]..provider#python3#Call:
line   18:
Error invoking 'python_execute' on channel 3 (python3-script-host):
Traceback (most recent call last):
  File "<string>", line 1, in <module>
  File "/Users/guanhua/.cache/vimfiles/repos/github.com/Yggdroot/LeaderF/autoload/leaderf/python/leaderf/anyExpl.py", line 771, in start
    parser = subparsers.add_parser(category, help=help, formatter_class=LfHelpFormatter, epilog="If [!] is given, enter normal mode directly.")
             ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/opt/homebrew/Cellar/python@3.11/3.11.3/Frameworks/Python.framework/Versions/3.11/lib/python3.11/argparse.py", line 1192, in add_parser
    raise ArgumentError(self, _('conflicting subparser: %s') % name)
argparse.ArgumentError: argument {jumplist,menu,neomru,unicode,quickfix,manpage,message,register,locationlist,bookmarks,snippet,neoyank,tag,line,command,file,jumps,mru,window,filetype,bufTag,rg,function}: conflic
ting subparser: quickfix
```

这里需要把 python 版本降低一点，3.8
