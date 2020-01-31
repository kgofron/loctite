#!../../bin/linux-x86_64/loctite-chx-led

## You may have to change loctite-chx-led to something else
## everywhere it appears in this file

< envPaths
epicsEnvSet("STREAM_PROTOCOL_PATH", "$(TOP)/epics-loctite-eqcl25App/Db")

## Register all support components
dbLoadDatabase("../../dbd/loctite-chx-led.dbd",0,0)
loctite_chx_led_registerRecordDeviceDriver(pdbbase) 

drvAsynIPPortConfigure("port", "192.168.1.139:4001")

## Load record instances
#CHNM = CHannel NaMe
#CHNUM = CHannel NUMber
#RINTENADDR = Reading INTENsity ADDRess
#WINTENADDR = Writing INTENsity ADDRess
#SELADDR = SELected ADDRess
#SELSTATADDR = SELected STATus ADDRess
#TEMPADDR = reading TEMPerature ADDRess
#STADDR = STart signal ADDRess for one channel
#RTIMEADDR = Reading irradiation TIME ADDRess
#WTIMEADDR = Writing irradiation TIME ADDRess


#dbLoadRecords("../../db/loctite-chx-led.db","user=student")
#dbLoadRecords("../../loctite-chx-ledApp/Db/practice.db")
#dbLoadRecords("../../loctite-chx-ledApp/Db/ledData.db", "CHNM=Ch1,RINTENADDR=5104,WINTENADDR=7104,SELADDR=7100,TEMPADDR=5070,STADDR=8500,RTIMEADDR=5105,WTIMEADDR=7105")
#dbLoadRecords("../../loctite-chx-ledApp/Db/ledData.db", "CHNM=Ch2,RINTENADDR=5105,WINTENADDR=7106,SELADDR=7101,TEMPADDR=5071,STADDR=8501,RTIMEADDR=5107,WTIMEADDR=7107")
#dbLoadTemplate("../../loctite-chx-ledApp/Db/ledData.substitutions")
dbLoadRecords("$(TOP)/db/sharedLEDData.db", "PREFIX=XF:11ID")
dbLoadRecords("$(TOP)/db/ledData.db", "PREFIX=XF:11ID")


iocInit()
