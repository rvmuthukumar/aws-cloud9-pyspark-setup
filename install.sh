echo "-----------------------------------------------"
echo "###  Installing Java 1.8...                 ###"
echo "-----------------------------------------------"
sudo yum -y update     
sudo yum install -y java-1.8.0-openjdk-devel
echo "-----------------------------------------------"
echo "###  Please choose Java 1.8 from the list   ###"
echo "-----------------------------------------------"
sudo /usr/sbin/alternatives --config javac
sudo /usr/sbin/alternatives --config java
echo "Java Done."
echo "-----------------------------------------------"
echo "###  Installing Spark...                    ###"
echo "-----------------------------------------------"
wget http://www-us.apache.org/dist/spark/spark-2.2.1/spark-2.2.1-bin-hadoop2.7.tgz
tar xvf spark-2.2.1-bin-hadoop2.7.tgz 
rm spark-2.2.1-bin-hadoop2.7.tgz 
mv spark-2.2.1-bin-hadoop2.7 ~/spark-2.2.1-bin-hadoop2.7
echo SPARK_HOME="$HOME/spark-2.2.1-bin-hadoop2.7" >> ~/.bash_profile
echo PATH=\"\$PATH:\$SPARK_HOME/bin\" >> ~/.bash_profile
echo export PATH >> ~/.bash_profile
echo "-----------------------------------------------"
echo "###  Install pyspark.....               ###"
echo "-----------------------------------------------"
pip install pyspark
echo "-----------------------------------------------"
echo "###  Find where pyspark is instaled ...      ###"
echo "-----------------------------------------------"
whereis pyspark

