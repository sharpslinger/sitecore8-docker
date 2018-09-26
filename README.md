# Setup Guide #

Get a local Docker Sitecore instance up and running

### Sitecore Docker ###

* This sets up a Docker version of Sitecore for development, including mongo and SQL Developer.
* Version 1.0

#### todo ####
NOTE: currently you still need to pull the databases folder out of the Sitecore zip and place it in the site root.

* copy over sc zip
* extract all
* keep databases, throw away the rest
* attach normally

### Getting Started ###

Download your desired Sitecore package (< 9.0) and license.xml file.
Place both of them in the /site folder.

Run the following commands in order:

* `docker pull mongo:latest --platform=linux`
* `docker-compose build`
* `docker-compose up -d`