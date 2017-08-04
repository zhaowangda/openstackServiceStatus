#!/usr/bin/python  
#coding=utf-8
import os;
import cgi,cgitb;
#-----------------------------------------------------------
argsArray = cgi.FieldStorage()
#-----------------------------------------------------------
#serviceName = "httpd"
serviceName = argsArray.getvalue('serviceName')
status = "Unkown"
resultData = ""
command1 = "systemctl status " + serviceName + " |grep Loaded |awk '{print $2}'"
command2 = "systemctl status " + serviceName + " |grep Active |awk '{print $2}'"
command3 = "systemctl status " + serviceName + "|grep 'Main PID' |awk '{print $3}'"
command4 = " uptime "
command5 = "df -h |grep /dev/mapper/centos-root |awk '{print " + '"allSpace:"$2  "  used:"$3 " usageRate:"$5  }'+"'"
command6 = "free -h |grep Mem | awk '{ print "+ ' "allSpace:" $2   "  used:"$3 }'+"'"
command7 = "ps -ef |wc -l "

commandVersion = "rpm -qf /lib/systemd/system/"+ serviceName +".service "
#print command1
#print command2
#---------------------------------------------------------------

result = os.popen(command1)
resultData =  result.read()

#--------------------------------------------------------------

if "not-found" in resultData:
  status = "Unknown"
else :
        result = os.popen(command2)
        resultData =  result.read()
        #--------------------------
        result = os.popen(command3)
        servicePID =  result.readline()
        #--------------------------
        result = os.popen(command4)
        uptime =  result.read()
        #--------------------------
        result = os.popen(command5)
        rootDirInfo =  result.readline()
        #-------------------------
        #--------------------------
        result = os.popen(command6)
        memoryInfo =  result.readline()
        #-------------------------
        #--------------------------
        result = os.popen(command7)
        proccessInfo =  result.readline()

        #--------------------------
        versionResult = os.popen(commandVersion)
        version = versionResult.readline()
        #-------------------------
        if "inactive" in resultData:
                status = "Stopped"
        elif "active" in resultData:
                status = "Running"
        elif "running" in resultData:
                status = "Running"
        elif "stopped" in resultData:
                status = "Stopped"
        elif "dead" in resultData:
                status = "Stopped"
        else :
                status = "Error"
#-----------------------------------------------------------
#print "Content-Type: text/html"

print ""
#print('<html>')  
#print('<head>')  
#print('<title>nagiosPython</title>')  
#print('</head>')  
#print('<body>')
#-----------------------------------------------------------
print('<result>')
#print('serviceName:')
print('<serviceName>')
print serviceName
print('</serviceName>')


print('<status>')
print status
print('</status>')

#print('status:')
print('<version>')
print version
print('</version>')
#print ('<br />')
#




print('<sysuptime>')
print uptime
print('</sysuptime>')

print('<rootDirInfo>')
print rootDirInfo
print('</rootDirInfo>')


print('<memoryInfo>')
print memoryInfo
print('</memoryInfo>')

print('<proccessInfo>')
print proccessInfo
print('</proccessInfo>')


print('<pid>')
print servicePID
print('</pid>')

print('</result>')
#----------------------------------------------------------
#print('</body>')  
#print('</html>') 


