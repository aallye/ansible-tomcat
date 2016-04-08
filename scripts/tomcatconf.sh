#! /bin/bash

export work_folder=/var/local/ansible/tomcatsrc/apache-tomcat-9.0.0.M4-src
export CATALINA_HOME=$work_folder/output/build
sed -i 's/Connector port=\"8080\"/Connector port=\"8083\"/g' $work_folder/output/build/conf/server.xml
#cp -f $work_folder/conf/tomcat-users.xml $work_folder/output/build/conf/tomcat-users.xml
#echo '<user username="anton" password="tomcat" roles="admin-gui,manager-gui,manager-script"/>' >> $work_folder/output/build/conf/tomcat-users.xml
#echo '<user username="upload" password="upload" roles="manager-gui,manager-script"/>' >> $work_folder/output/build/conf/tomcat-users.xml
#sed -i "s/<\/tomcat-users>/ /g" $work_folder/output/build/conf/tomcat-users.xml
#echo '</tomcat-users>' >> $work_folder/output/build/conf/tomcat-users.xml
#nohup /var/local/mavenworkspace/TomCat8_work/output/build/bin/startup.sh
#$work_folder/output/build/bin/catalina.sh stop
#nohup $work_folder/output/build/bin/catalina.sh start &
