export current_db=$(echo $PWD)
mkdir /opt

wget https://downloads.lightbend.com/scala/2.12.0/scala-2.12.0.tgz
wget https://github.com/sbt/sbt/releases/download/v1.7.1/sbt-1.7.1.tgz

cp scala-2.12.0.tgz /opt
cp sbt-1.7.1.tgz /opt

rm scala-2.12.0.tgz
rm sbt-1.7.1.tgz

cd /opt

tar -xzvf scala-2.12.0.tgz
tar -xzvf sbt-1.7.1.tgz 

rm scala-2.12.0.tgz
rm sbt-1.7.1.tgz

chmod -R 777 scala-2.12.0/
chmod -R 777 sbt/

echo "please run or copy this command to bash profile"
echo "export PATH=\$PATH:/opt/scala-2.12.0/bin"
echo "export PATH=\$PATH:/opt/sbt/bin"

cd $current_db

