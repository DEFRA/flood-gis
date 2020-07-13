# flood-gis

This is the repository for the geoserver configuration for the service refresh project for the "Check flood risk" service.

The geoserver installation provides geospatial tiles for our geospatial datasets that are stored in a postgis:postgres installation found at https://github.com/DEFRA/flood-db

# Pre requisites

These data files are designed for use with an installation of Geoserver > 2.8 http://geoserver.org/.

There are several ways to host this, but we use it as a tomcat webapp.

Tomcat installation on Linux: https://www.digitalocean.com/community/tutorials/how-to-install-apache-tomcat-8-on-ubuntu-16-04

## installation

Download your version of geoserver.war and extract (if needed) and copy war file to your tomcat webapp directory at: `/opt/tomcat/webapps`

Make sure the war file is owned by the tomcat user: `sudo chown tomcat:tomcat geoserver.war`

## Configuration
The database connection file can be created at `geoserver/data/workspaces/flood/flooddev/datastore.xml`
Format:
```
<dataStore>
  <id>DataStoreInfoImpl--30633af1:14863bcf984:-7fff</id>
  <name>flooddev</name>
  <description>Postgis</description>
  <type>PostGIS</type>
  <enabled>true</enabled>
  <workspace>
    <id>WorkspaceInfoImpl-4d72205b:1489c5817f9:-8000</id>
  </workspace>
  <connectionParameters>
    <entry key="Connection timeout">20</entry>
    <entry key="port">5432</entry>
    <entry key="passwd">************</entry>
    <entry key="dbtype">postgis</entry>
    <entry key="encode functions">false</entry>
    <entry key="Evictor run periodicity">300</entry>
    <entry key="namespace">http://apps.environment-agency.gov.uk/flood</entry>
    <entry key="schema">************</entry>
    <entry key="create database">false</entry>
    <entry key="fetch size">1000</entry>
    <entry key="preparedStatements">false</entry>
    <entry key="min connections">1</entry>
    <entry key="host">************</entry> 	
    <entry key="Evictor tests per run">3</entry>
    <entry key="validate connections">true</entry>
    <entry key="max connections">10</entry>
    <entry key="Support on the fly geometry simplification">true</entry>
    <entry key="database">************</entry>
    <entry key="Max connection idle time">300</entry>
    <entry key="Test while idle">true</entry>
    <entry key="Loose bbox">true</entry>
    <entry key="Expose primary keys">false</entry>
    <entry key="Max open prepared statements">50</entry>
    <entry key="Estimated extends">true</entry>
    <entry key="user">************</entry>
  </connectionParameters>
  <__default>false</__default>
</dataStore>
```
You'll need to update passwd, schema, host, database, user for your postgres database with postgis extension installed. See https://github.com/DEFRA/flood-db

## Data dir
Your tomcat installation needs its geoserver data dir parameter updating as follows (found in `/etc/systemd/system/tomcat.service` if tomcat installation from previous is followed):
`Environment='CATALINA_OPTS=-DGEOSERVER_DATA_DIR=/{absolute_repo_dir}/flood-gis/geoserver/data -Xms512M -Xmx1024M -server -XX:+UseParallelGC'`
Update {absolute_repo_dir} with the dir of this cloned repository

## File ownership
The files need to be writable or owned by the tomcat user that has been set up.
`sudo chown tomcat:tomcat . -R`

## Start up the tomcat service
`sudo service tomcat start`

Navigate to `http://localhost:8080/geoserver` and login with geoserver:admin to access geoserver tool. If successful then the flood layers should be viewable in the app, otherwise check all tomcat, catalina, geoserver logs for issues. Database connection etc.


