#!/bin/sh
docker build -f tomcatDockerfile -t tomcat .
docker build -f sonarDockerfile -t sonar .
docker build -f nexusDockerfile -t nexus .
docker build -f jenkinsDockerfile -t jenkins .
