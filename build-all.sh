cd ..
for OUTPUT in $(ls | grep -e 'atlas-')
do
   ECHO Building $OUTPUT
   cd $OUTPUT
   chmod 777 ./docker-build.sh
   ./docker-build.sh
   cd ..
done
cd atlas
