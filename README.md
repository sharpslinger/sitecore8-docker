# Setup Guide #

Get a local Docker Sitecore instance up and running

### Sitecore Docker ###

* This sets up a Docker version of Sitecore for development, including mongo and SQL Developer.
* Version 1.0

### Getting Started ###

Download your desired Sitecore package (< 9.0) and license.xml file.
* Copy the Databases folder into /sqldata (so it has /sqldata/Databases)
* Copy the /Data and /Website folders into /website (/website/Data and /website/Website respectively)

Modify your App_Config/ConnectionStrings.config:

```
<?xml version="1.0" encoding="utf-8"?>
<connectionStrings>
  <!-- 
    Sitecore connection strings.
    All database connections for Sitecore are configured here.
  -->
  <add name="core" connectionString="user id=sa;password=Qwerty123;Data Source=sql2017;Database=Sitecore_Core" />
  <add name="master" connectionString="user id=sa;password=Qwerty123;Data Source=sql2017;Database=Sitecore_Master" />
  <add name="web" connectionString="user id=sa;password=Qwerty123;Data Source=sql2017;Database=Sitecore_Web" />
  <add name="analytics" connectionString="mongodb://mongo/analytics" />
  <add name="tracking.live" connectionString="mongodb://mongo/tracking_live" />
  <add name="tracking.history" connectionString="mongodb://mongo/tracking_history" />
  <add name="tracking.contact" connectionString="mongodb://mongo/tracking_contact" />
  <add name="reporting" connectionString="user id=sa;password=Qwerty123;Data Source=sql2017;Database=Sitecore_Analytics" />
</connectionStrings>
```
Run the following commands in order:

* `docker pull mongo:latest --platform=linux`
* `docker-compose build`
* `docker-compose up -d`
