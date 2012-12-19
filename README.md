solr-setup
==========

Solr Setup required for any catamaran project integration

Setup local Solr Indexer:

Check out sources from https://github.com/bdsilva/solr-setup.git into your local servers folder. 
	For ‘xxx’ project this should be your location in:	/catamaran/servers/xxx-web

After checking out, these folders should be present:
  ../bin
  ../solr_local
  ../solr_tomcat		

The following files are important: Understanding them will give a better insight for future extension and bug fixes.
	NOTE: Apart from these files, we do not need to touch other files to get Solr working with 
	on catamaran projects.

../solr_local/conf/schema.xml 
	--->	All the fields to be indexed WILL be listed in this file. 
			This is where you add new fields that need to get indexed.

../solr_local/conf/solrconfig.xml 
	---> Search for 'dataDir'. 
		 The path of the directory should point to the data directory within 

../solr_local/data 
	---> This is where Solr keeps the INDEX file and meta-data. 
		 If you need to back-up solr indexed data, just copy this folder.
		
		
../solr_tomcat/conf/Catalina/localhost/solr.xml 
	---> This is the tomcat specific file which makes ../solr_local as the context base directory. 
		 This ensures that all solr related files are within solr_local and tomcat will just rebase itself.



