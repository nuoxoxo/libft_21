## Stress test
- ***NEW*** strncmp passes trip and warm whatever the return
- ***NEW*** strlcpy solved for trip
- ***NEW*** split solved for warm && trip
- war machine
  - strlcat ---> *Command './user_exe 07' got killed by an Abort 💥*
  - trim -----> *Command './user_exe 05' got killed by an Abort 💥*
- tripouille
  - ~~join [ 3 MKO 💥 ]~~ casting problem fixed: `malloc( sizeof( char * ) )`
- alelievr
  - ~~substr [💥 ]~~ fixed: `if (!s)` --x--> `strlen(s)`
  - ~~strtrim [💥 ]~~ fixed: idem
<br>

![made in c](http://ForTheBadge.com/images/badges/made-with-c.svg)
![built with love](http://ForTheBadge.com/images/badges/built-with-love.svg)
