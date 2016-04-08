#! bin/sh
export CATALINA_HOME=/var/local/ansible/tomcatsrc/apache-tomcat-9.0.0.M4-src/output/build/
cd $CATALINA_HOME
export CATALINA_BASE=CATALINA_HOME
./bin/jsvc -classpath $CATALINA_HOME/bin/bootstrap.jar:$CATALINA_HOME/bin/tomcat-juli.jar -outfile $CATALINA_BASE/logs/catalina.out -errfile $CATALINA_BASE/logs/catalina.err -Dcatalina.home=$CATALINA_HOME -Dcatalina.base=$CATALINA_BASE -Djava.util.logging.manager=org.apache.juli.ClassLoaderLogManager -Djava.util.logging.config.file=$CATALINA_BASE/conf/logging.properties  org.apache.catalina.startup.Bootstrap
