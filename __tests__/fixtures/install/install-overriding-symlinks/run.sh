mkdir tmp
echo "{\"name\":\"____slinky____\"}" > tmp/package.json
cd tmp
../../../../../bin/yarn link
cd ..
echo "{\"name\":\"test\", \"dependencies\":{ \"left-pad\":\"1.1.1\"}}" > package.json
../../../../bin/yarn
../../../../bin/yarn link ____slinky____
ls -al node_modules

echo "{\"name\":\"test\", \"dependencies\":{ \"left-pad\":\"1.1.2\"}}" > package.json
../../../../bin/yarn
ls -al node_modules

../../../../bin/yarn unlink ____slinky____
# rm -r tmp
# rm package.json
