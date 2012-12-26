SOLR_LOCAL_HOME=/catamaran/servers/soldonsunday-web/solr_local
PROJECT_HOME=/projects/soldonsunday/trunk

echo "copying the latest solr schema.xml"
cp -rf $PROJECT_HOME/src/main/resources/solr/schema.xml $SOLR_LOCAL_HOME/conf/.

/catamaran/servers/soldonsunday-web/solr_tomcat/bin/catalina.sh start
