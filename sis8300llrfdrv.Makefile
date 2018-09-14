#
#  Copyright (c) 2018 - Present  European Spallation Source ERIC
#
#  The program is free software: you can redistribute
#  it and/or modify it under the terms of the GNU General Public License
#  as published by the Free Software Foundation, either version 2 of the
#  License, or any newer version.
#
#  This program is distributed in the hope that it will be useful, but WITHOUT
#  ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
#  FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
#  more details.
#
#  You should have received a copy of the GNU General Public License along with
#  this program. If not, see https://www.gnu.org/licenses/gpl-2.0.txt
#
#

# Author  : joaopaulomartins
#           Jeong Han Lee
# email   : joaopaulomartins@esss.se
#           jeonghan.lee@gmail.com
# Date    : Thursday, September 13 21:35:07 CEST 2018
# version : 0.0.1
#

where_am_I := $(dir $(abspath $(lastword $(MAKEFILE_LIST))))
include $(E3_REQUIRE_TOOLS)/driver.makefile
include $(where_am_I)/../configure/DECOUPLE_FLAGS

ifneq ($(strip $(SIS8300DRV_DEP_VERSION)),)
sis8300drv_VERSION=$(SIS8300DRV_DEP_VERSION)
endif




EXCLUDE_ARCHS += linux-ppc64e6500 



APP:=src/main/c
APPSRC:=$(APP)/lib
APPINC:=$(APP)/include

SOURCES += $(wildcard $(APPSRC)/*.c)

HEADERS += $(wildcard $(APPINC)/*.h) 
HEADERS += $(wildcard $(APPSRC)/*.h)

db: 

.PHONY: db 

