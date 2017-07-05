#!/usr/bin/python
#coding=utf-8
import  xml.dom.minidom
import urllib2  
import MySQLdb;
import os, sys,string;
import cgi,cgitb;
import ConfigParser
import time


#print "Content-Type: text/html"

print ""
timeNow =  time.strftime('%Y-%m-%d %H:%M:%S',time.localtime(time.time()))
print "<p>Start At: "+timeNow + "</p>"
#------------------------------------------------------------------------------
cf = ConfigParser.ConfigParser()
cf.read('/var/www/cgi-bin/database.ini')

conn= MySQLdb.connect(
        host=cf.get("mysqlConfig", "host"),
        port = int(cf.get("mysqlConfig", "port")),
        user=cf.get("mysqlConfig", "user"),
        passwd=cf.get("mysqlConfig", "passwd"),
        db =cf.get("mysqlConfig", "dbname"),
        charset=cf.get("mysqlConfig", "charset")
        )
'''
conn= MySQLdb.connect(
        host='192.168.35.66',
        port = 3306,
        user='hiiservice',
        passwd='hiiservice',
        db ='openstackService',
        charset='utf8'
        )
'''
#----------------------------------------------------------------------------
cur = conn.cursor()
#-----------------------------------------------------------------------------
#update service status to database
def updateMysqRecord(hostIP,sName,sStatus,pid,suggestion):
	timeNow =  time.strftime('%Y-%m-%d %H:%M:%S',time.localtime(time.time()))
	strcmd = "call updateHostServiceStatus('"+hostIP+"','"+sName+"','"+sStatus+"','"+timeNow+"','"+ pid +"','"+suggestion+"')"
	#print strcmd
	result = cur.execute(strcmd)
	conn.commit()
#-----------------------------------------------------------------------------
#get service status
def updateServiceStatus(hostIP,sName):
	url = "http://"+ hostIP +"/cgi-bin/serviceStatusApi.py?serviceName="+sName
	#url ='http://172.16.41.65/cgi-bin/serviceStatusApi.py?serviceName=sshd'
	try:
		data = urllib2.urlopen(url,timeout=1)
		result = data.readlines()
		#print result
		serviceName = result[2].replace("\n","")
		serviceStatus = result[5].replace("\n","")
		return serviceStatus
	except Exception,e:
		#print Exception,":",e
		return 'Unknown'
#-----------------------------------------------------------------------------
#-----------------------------------------------------------------------------
#get service PID
def getServicePID(hostIP,sName):
	url = "http://"+ hostIP +"/cgi-bin/serviceStatusApi.py?serviceName="+sName
	#url ='http://172.16.41.65/cgi-bin/serviceStatusApi.py?serviceName=sshd'
	try:
		data = urllib2.urlopen(url,timeout=1)
		result = data.readlines()
		servicePID = result[8].replace("\n","")
		return servicePID
	except Exception,e:
		#print Exception,":",e
		return 'Unknown'
#-----------------------------------------------------------------------------

#-----------------------------------------------------------------------------
def hoststatus(hostip):
	url = "http://"+hostip+"/cgi-bin/serviceStatusApi.py?serviceName=httpd"
	try:
		data = urllib2.urlopen(url,timeout=1)
		result = data.readlines()
		uptime = result[12].replace("\n","")

		#data = urllib2.urlopen(urlTime,timeout=1)
		strcmd = " update hostSchema set status='Running'  where hostIP='"+hostip+"'"
		strcmd1 = " update hostSchema set uptime='"+uptime+"' where hostIP='"+hostip+"'"
		result = cur.execute(strcmd)
                result = cur.execute(strcmd1)
                conn.commit()
		return "Running"
	except Exception,e:
                #print Exception,":",e
		strcmd = " update hostSchema set status='Down'  where hostIP='"+hostip+"'"
                result = cur.execute(strcmd)
                conn.commit()
		return "Down"
#-----------------------------------------------------------------------------
#main
#-----------------
#update host status
result = cur.execute('select DISTINCT hostip from hostSchema ')
records = cur.fetchmany(result)
for record in records:
	#updateHostStatus(record[0])
	hoststatus(record[0])
	
#-----------------
#update Service status
result = cur.execute('select hostName,hostIP,serviceName from  serviceStatus ')
records = cur.fetchmany(result)
for record in records:
	ip = record[1]
	sname = record[2]
	status = updateServiceStatus(ip,sname)
	pid = getServicePID(ip,sname)
	suggestion = ""
	if status == "argsArray = cgi.FieldStorage()" :
		status = "Unknown"
		suggestion = "Http config Error"
	
	updateMysqRecord(ip,sname,status,pid,suggestion)	
 
#-----------------------------------------------------------------------------
#updateServiceStatus('127.0.0.1','sshd')
#updateMysqRecord('172.16.41.65','cinder-status-function-test','Running')
#hoststatus("172.16.41.66")
cur.close()

print "<p>finished service checking</p>"
timeNow =  time.strftime('%Y-%m-%d %H:%M:%S',time.localtime(time.time()))
print "<p>Finished At: "+timeNow + "</p>"



