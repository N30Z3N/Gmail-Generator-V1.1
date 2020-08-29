@Echo Off
color 02
title Gmail Generator
:gg
cls
set /P lengthnumberuser="What Length Do You Want Your Gmail To Be? :    "
echo.
echo Types: Gmail,AOL,OutLook,Zoho,Mail,Yahoo,ProtonMail,Icloud
echo.
set /P typegmail="What Type Of Gmail Do You Want? :    "
cls
Setlocal EnableDelayedExpansion
Set _RNDLength=%lengthnumberuser%
Set _Alphanumeric=ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz
Set _Str=%_Alphanumeric%987654321
:_LenLoop
IF NOT "%_Str:~18%"=="" SET _Str=%_Str:~9%& SET /A _Len+=9& GOTO :_LenLoop
SET _tmp=%_Str:~9,1%
SET /A _Len=_Len+_tmp
Set _count=0
SET _RndAlphaNum=
:_loop
Set /a _count+=1
SET _RND=%Random%
Set /A _RND=_RND%%%_Len%
SET _RndAlphaNum=!_RndAlphaNum!!_Alphanumeric:~%_RND%,1!
If !_count! lss %_RNDLength% goto _loop
set /P done=Gmail is: !_RndAlphaNum!.!_RndAlphaNum1!@%typegmail%.com


:ll1
Setlocal EnableDelayedExpansion
Set _RNDLength=%lengthnumberuser%
Set _Alphanumeric=ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz
Set _Str=%_Alphanumeric%987654321
:_LenLoop
IF NOT "%_Str:~18%"=="" SET _Str=%_Str:~9%& SET /A _Len+=9& GOTO :_LenLoop
SET _tmp=%_Str:~9,1%
SET /A _Len=_Len+_tmp
Set _count=0
SET _RndAlphaNum1=
:_loop
Set /a _count+=1
SET _RND=%Random%
Set /A _RND=_RND%%%_Len%
SET _RndAlphaNum1=!_RndAlphaNum1!!_Alphanumeric:~%_RND%,1!
If !_count! lss %_RNDLength% goto _loop
