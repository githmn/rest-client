#!/bin/sh

VERSION=`head pom.xml | grep 'version.*version' | sed -E 's/.*version.(.*)..version.*/\1/g'`

java -Dorg.apache.commons.logging.Log=org.apache.commons.logging.impl.SimpleLog -Dorg.apache.commons.logging.simplelog.log.org.apache.http.wire=DEBUG -Dapple.laf.useScreenMenuBar=true  -Dapple.awt.application.name=RESTClient -jar restclient-ui/target/restclient-ui-$VERSION-jar-with-dependencies.jar
