@ECHO OFF

set list="aos" "bns" "cac" "cashshop" "cdc" "cks" "clc" "cos" "csc" "cts" "dis" "drg" "eso" "fec" "iis" "marg" "mdc" "mis" "morg" "ncs" "nss" "party" "pos" "quest" "ros" "sis" "tds" "wcc" "wrg"

cd ..
(for %%a in (%list%) do (
   echo atlas-%%a
   IF EXIST atlas-%%a/docker-build.bat (
      cd atlas-%%a
      git pull --no-rebase
      cd ..
   ) ELSE (
      mkdir atlas-%%a
      git clone https://github.com/jtumidanski/atlas-%%a.git
   )
))
cd atlas
