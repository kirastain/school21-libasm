# school21-libasm

### Useful links

https://ravesli.com/uroki-assemblera/ - lessons (rus)

https://asmtutor.com/ - lessons (eng)

### Current sys call rax values for x64 Ubuntu

[Full list here](http://blog.rchapman.org/posts/Linux_System_Call_Table_for_x86_64/?__cf_chl_captcha_tk__=b490c6ba7c290ecfa693c700687352ba4d0d8b7b-1605006146-0-AaoV99UV-pIk3OKeZBzkV1189A7qf4W9_iRyZNOnq4iWdRLlQ4GRtHZvHzehcxbCZjy9IFjQpZli9d9Ocbc99vJpD4NOZgPHgzK8NCEMVCtFJcy6j532oZq-qy74dPyMVPPh6t7jVSdAJumrT46RkJROOValPPSvOrg4B_dmElFh1jCsTBGpiMYxRquMALX8SoinZdHW1lYQRaE8DtX42WhWKGOwIz25OnBTfWMTP5h5N34XoqRxAtnFyGwDsNevUnMrj5q-0g_v-DnYE3YSV9wwu60FG44oJjqU53-bok4ttVuAdb6KigYm9fwvsiTRp6ajPp5frcDdrulR54iW3rFa424SPxF20qqmBrSeo3RWLEa0i_Cyd965zsKs_5j1otBSuVb8O18jW1DEZdB8sTu69kfAqGl22Zyhf316EMRGAX_GKRcy0uzYGBZXAFnHY12wgj0esnZIapZBfVWyBD3stmt7mDrqce471a7JRGKRQTf-Q30SJlQfaX5bSwzmNywTsKOgKfbL9YTRagfFsX7jGbOqbvDsImDePiBs1yGN)

|%rax|sys call|%rdi|%rsi|%rdx|
|:-:|:-:|:-:|:-:|:-:|
|0|sys_read|unsigned int fd|char \*buf|size_t count|
|1|sys_write|unsigned int fd|const char \*buf|size_t count|
|2|sys_open|const char \*filename|int flags|int mode| 
|3|sys_close|unsigned int fd|-|-|
