TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#=============================
# Build the IOC application

PROD_IOC = loctite-chx-led
# loctite-chx-led.dbd will be created and installed
DBD += loctite-chx-led.dbd

# loctite-chx-led.dbd will be made up from these files:
loctite-chx-led_DBD += base.dbd

# Include dbd files from all support applications:
#loctite-chx-led_DBD += xxx.dbd
loctite-chx-led_DBD += asyn.dbd
loctite-chx-led_DBD += drvAsynIPPort.dbd
loctite-chx-led_DBD += calcSupport.dbd
loctite-chx-led_DBD += stream.dbd
#loctite-chx-led_DBD += sCalcoutRecord.dbd ##this line commented out
#loctite-chx-led_DBD += streamSynApps.dbd
#loctite-chx-led_DBD += streamApp.dbd

# Add all the support libraries needed by this IOC
#loctite-chx-led_LIBS += xxx
loctite-chx-led_LIBS += asyn
#loctite-chx-led_LIBS += pcre
loctite-chx-led_LIBS += sscan
loctite-chx-led_LIBS += calc
loctite-chx-led_LIBS += stream

# loctite-chx-led_registerRecordDeviceDriver.cpp derives from loctite-chx-led.dbd
loctite-chx-led_SRCS += loctite-chx-led_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
loctite-chx-led_SRCS_DEFAULT += loctite-chx-ledMain.cpp
loctite-chx-led_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#loctite-chx-led_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Finally link to the EPICS Base libraries
loctite-chx-led_LIBS += $(EPICS_BASE_IOC_LIBS)

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE
