CREATE DATABASE mydb
ON (FILENAME= N'C:\Publish\App_Data\mydb.mdf')
LOG ON (FILENAME= N'C:\Publish\App_Data\mydb_log.ldf')
FOR ATTACH;
go