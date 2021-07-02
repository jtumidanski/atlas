array=("aos" "bns" "cac" "cdc" "cks" "clc" "cos" "csc" "cts" "dis" "drg" "eso" "fec" "iis" "marg" "mdc" "mis" "morg" "ncs" "nss" "pos" "ros" "sis" "tds" "wcc" "wrg")

cd ..
for OUTPUT in "${array[@]}"
do
   echo atlas-$OUTPUT
   if [ -d "atlas-$OUTPUT" ]
   then
      cd atlas-$OUTPUT
      git pull --no-rebase
      cd ..
   else
      mkdir atlas-$OUTPUT
      git clone https://github.com/jtumidanski/atlas-$OUTPUT.git
   fi
done
cd atlas
