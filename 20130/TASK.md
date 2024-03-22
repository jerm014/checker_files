Simple shell 1.0 +

- Handle variables replacement
- Handle the $? variable
- Handle the $$ variable

```
julien@ubuntu:~/shell$ ./shell_2.0
$ ls /var
backups  cache	crash  lib  local  lock  log  mail  metrics  opt  run  snap  spool  tmp
$ echo $?
0
$ echo $$
5104
$ echo $PATH
/home/julien/bin:/home/julien/.local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin
$ exit 
julien@ubuntu:~/shell$ 
```