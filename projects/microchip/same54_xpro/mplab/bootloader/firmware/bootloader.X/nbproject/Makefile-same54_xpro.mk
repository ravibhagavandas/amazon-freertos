#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-same54_xpro.mk)" "nbproject/Makefile-local-same54_xpro.mk"
include nbproject/Makefile-local-same54_xpro.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=same54_xpro
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/bootloader.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/bootloader.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/crypto/tinycrypt/asn1utility.c ../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/crypto/tinycrypt/aws_boot_crypto.c ../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash/aws_boot_flash.c ../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash/aws_boot_nvm.c ../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash/aws_boot_partition.c ../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/loader/aws_boot_loader.c ../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/loader/aws_boot_pal.c ../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/source/app.c ../src/config/same54_xpro/bsp/bsp.c ../src/config/same54_xpro/peripheral/clock/plib_clock.c ../src/config/same54_xpro/peripheral/cmcc/plib_cmcc.c ../src/config/same54_xpro/peripheral/evsys/plib_evsys.c ../src/config/same54_xpro/peripheral/nvic/plib_nvic.c ../src/config/same54_xpro/peripheral/nvmctrl/plib_nvmctrl.c ../src/config/same54_xpro/peripheral/port/plib_port.c ../src/config/same54_xpro/peripheral/sercom/usart/plib_sercom2_usart.c ../src/config/same54_xpro/peripheral/wdt/plib_wdt.c ../src/config/same54_xpro/stdio/xc32_monitor.c ../src/config/same54_xpro/initialization.c ../src/config/same54_xpro/interrupts.c ../src/config/same54_xpro/exceptions.c ../src/config/same54_xpro/startup_xc32.c ../src/config/same54_xpro/libc_syscalls.c ../../../../../../../libraries/3rdparty/tinycrypt/asn1/asn1parse.c ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/aes_decrypt.c ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/aes_encrypt.c ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/cbc_mode.c ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/ccm_mode.c ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/cmac_mode.c ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/ctr_mode.c ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/ctr_prng.c ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/ecc.c ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/ecc_dh.c ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/ecc_dsa.c ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/ecc_platform_specific.c ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/hmac.c ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/hmac_prng.c ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/sha256.c ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/utils.c ../src/main.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/2097892688/asn1utility.o ${OBJECTDIR}/_ext/2097892688/aws_boot_crypto.o ${OBJECTDIR}/_ext/93820448/aws_boot_flash.o ${OBJECTDIR}/_ext/93820448/aws_boot_nvm.o ${OBJECTDIR}/_ext/93820448/aws_boot_partition.o ${OBJECTDIR}/_ext/1561064483/aws_boot_loader.o ${OBJECTDIR}/_ext/1561064483/aws_boot_pal.o ${OBJECTDIR}/_ext/619668485/app.o ${OBJECTDIR}/_ext/288800588/bsp.o ${OBJECTDIR}/_ext/425478706/plib_clock.o ${OBJECTDIR}/_ext/13724534/plib_cmcc.o ${OBJECTDIR}/_ext/423329220/plib_evsys.o ${OBJECTDIR}/_ext/13387998/plib_nvic.o ${OBJECTDIR}/_ext/593919312/plib_nvmctrl.o ${OBJECTDIR}/_ext/13334847/plib_port.o ${OBJECTDIR}/_ext/2047131351/plib_sercom2_usart.o ${OBJECTDIR}/_ext/970255097/plib_wdt.o ${OBJECTDIR}/_ext/1619787690/xc32_monitor.o ${OBJECTDIR}/_ext/1510338148/initialization.o ${OBJECTDIR}/_ext/1510338148/interrupts.o ${OBJECTDIR}/_ext/1510338148/exceptions.o ${OBJECTDIR}/_ext/1510338148/startup_xc32.o ${OBJECTDIR}/_ext/1510338148/libc_syscalls.o ${OBJECTDIR}/_ext/1214204543/asn1parse.o ${OBJECTDIR}/_ext/1193839791/aes_decrypt.o ${OBJECTDIR}/_ext/1193839791/aes_encrypt.o ${OBJECTDIR}/_ext/1193839791/cbc_mode.o ${OBJECTDIR}/_ext/1193839791/ccm_mode.o ${OBJECTDIR}/_ext/1193839791/cmac_mode.o ${OBJECTDIR}/_ext/1193839791/ctr_mode.o ${OBJECTDIR}/_ext/1193839791/ctr_prng.o ${OBJECTDIR}/_ext/1193839791/ecc.o ${OBJECTDIR}/_ext/1193839791/ecc_dh.o ${OBJECTDIR}/_ext/1193839791/ecc_dsa.o ${OBJECTDIR}/_ext/1193839791/ecc_platform_specific.o ${OBJECTDIR}/_ext/1193839791/hmac.o ${OBJECTDIR}/_ext/1193839791/hmac_prng.o ${OBJECTDIR}/_ext/1193839791/sha256.o ${OBJECTDIR}/_ext/1193839791/utils.o ${OBJECTDIR}/_ext/1360937237/main.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/2097892688/asn1utility.o.d ${OBJECTDIR}/_ext/2097892688/aws_boot_crypto.o.d ${OBJECTDIR}/_ext/93820448/aws_boot_flash.o.d ${OBJECTDIR}/_ext/93820448/aws_boot_nvm.o.d ${OBJECTDIR}/_ext/93820448/aws_boot_partition.o.d ${OBJECTDIR}/_ext/1561064483/aws_boot_loader.o.d ${OBJECTDIR}/_ext/1561064483/aws_boot_pal.o.d ${OBJECTDIR}/_ext/619668485/app.o.d ${OBJECTDIR}/_ext/288800588/bsp.o.d ${OBJECTDIR}/_ext/425478706/plib_clock.o.d ${OBJECTDIR}/_ext/13724534/plib_cmcc.o.d ${OBJECTDIR}/_ext/423329220/plib_evsys.o.d ${OBJECTDIR}/_ext/13387998/plib_nvic.o.d ${OBJECTDIR}/_ext/593919312/plib_nvmctrl.o.d ${OBJECTDIR}/_ext/13334847/plib_port.o.d ${OBJECTDIR}/_ext/2047131351/plib_sercom2_usart.o.d ${OBJECTDIR}/_ext/970255097/plib_wdt.o.d ${OBJECTDIR}/_ext/1619787690/xc32_monitor.o.d ${OBJECTDIR}/_ext/1510338148/initialization.o.d ${OBJECTDIR}/_ext/1510338148/interrupts.o.d ${OBJECTDIR}/_ext/1510338148/exceptions.o.d ${OBJECTDIR}/_ext/1510338148/startup_xc32.o.d ${OBJECTDIR}/_ext/1510338148/libc_syscalls.o.d ${OBJECTDIR}/_ext/1214204543/asn1parse.o.d ${OBJECTDIR}/_ext/1193839791/aes_decrypt.o.d ${OBJECTDIR}/_ext/1193839791/aes_encrypt.o.d ${OBJECTDIR}/_ext/1193839791/cbc_mode.o.d ${OBJECTDIR}/_ext/1193839791/ccm_mode.o.d ${OBJECTDIR}/_ext/1193839791/cmac_mode.o.d ${OBJECTDIR}/_ext/1193839791/ctr_mode.o.d ${OBJECTDIR}/_ext/1193839791/ctr_prng.o.d ${OBJECTDIR}/_ext/1193839791/ecc.o.d ${OBJECTDIR}/_ext/1193839791/ecc_dh.o.d ${OBJECTDIR}/_ext/1193839791/ecc_dsa.o.d ${OBJECTDIR}/_ext/1193839791/ecc_platform_specific.o.d ${OBJECTDIR}/_ext/1193839791/hmac.o.d ${OBJECTDIR}/_ext/1193839791/hmac_prng.o.d ${OBJECTDIR}/_ext/1193839791/sha256.o.d ${OBJECTDIR}/_ext/1193839791/utils.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/2097892688/asn1utility.o ${OBJECTDIR}/_ext/2097892688/aws_boot_crypto.o ${OBJECTDIR}/_ext/93820448/aws_boot_flash.o ${OBJECTDIR}/_ext/93820448/aws_boot_nvm.o ${OBJECTDIR}/_ext/93820448/aws_boot_partition.o ${OBJECTDIR}/_ext/1561064483/aws_boot_loader.o ${OBJECTDIR}/_ext/1561064483/aws_boot_pal.o ${OBJECTDIR}/_ext/619668485/app.o ${OBJECTDIR}/_ext/288800588/bsp.o ${OBJECTDIR}/_ext/425478706/plib_clock.o ${OBJECTDIR}/_ext/13724534/plib_cmcc.o ${OBJECTDIR}/_ext/423329220/plib_evsys.o ${OBJECTDIR}/_ext/13387998/plib_nvic.o ${OBJECTDIR}/_ext/593919312/plib_nvmctrl.o ${OBJECTDIR}/_ext/13334847/plib_port.o ${OBJECTDIR}/_ext/2047131351/plib_sercom2_usart.o ${OBJECTDIR}/_ext/970255097/plib_wdt.o ${OBJECTDIR}/_ext/1619787690/xc32_monitor.o ${OBJECTDIR}/_ext/1510338148/initialization.o ${OBJECTDIR}/_ext/1510338148/interrupts.o ${OBJECTDIR}/_ext/1510338148/exceptions.o ${OBJECTDIR}/_ext/1510338148/startup_xc32.o ${OBJECTDIR}/_ext/1510338148/libc_syscalls.o ${OBJECTDIR}/_ext/1214204543/asn1parse.o ${OBJECTDIR}/_ext/1193839791/aes_decrypt.o ${OBJECTDIR}/_ext/1193839791/aes_encrypt.o ${OBJECTDIR}/_ext/1193839791/cbc_mode.o ${OBJECTDIR}/_ext/1193839791/ccm_mode.o ${OBJECTDIR}/_ext/1193839791/cmac_mode.o ${OBJECTDIR}/_ext/1193839791/ctr_mode.o ${OBJECTDIR}/_ext/1193839791/ctr_prng.o ${OBJECTDIR}/_ext/1193839791/ecc.o ${OBJECTDIR}/_ext/1193839791/ecc_dh.o ${OBJECTDIR}/_ext/1193839791/ecc_dsa.o ${OBJECTDIR}/_ext/1193839791/ecc_platform_specific.o ${OBJECTDIR}/_ext/1193839791/hmac.o ${OBJECTDIR}/_ext/1193839791/hmac_prng.o ${OBJECTDIR}/_ext/1193839791/sha256.o ${OBJECTDIR}/_ext/1193839791/utils.o ${OBJECTDIR}/_ext/1360937237/main.o

# Source Files
SOURCEFILES=../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/crypto/tinycrypt/asn1utility.c ../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/crypto/tinycrypt/aws_boot_crypto.c ../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash/aws_boot_flash.c ../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash/aws_boot_nvm.c ../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash/aws_boot_partition.c ../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/loader/aws_boot_loader.c ../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/loader/aws_boot_pal.c ../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/source/app.c ../src/config/same54_xpro/bsp/bsp.c ../src/config/same54_xpro/peripheral/clock/plib_clock.c ../src/config/same54_xpro/peripheral/cmcc/plib_cmcc.c ../src/config/same54_xpro/peripheral/evsys/plib_evsys.c ../src/config/same54_xpro/peripheral/nvic/plib_nvic.c ../src/config/same54_xpro/peripheral/nvmctrl/plib_nvmctrl.c ../src/config/same54_xpro/peripheral/port/plib_port.c ../src/config/same54_xpro/peripheral/sercom/usart/plib_sercom2_usart.c ../src/config/same54_xpro/peripheral/wdt/plib_wdt.c ../src/config/same54_xpro/stdio/xc32_monitor.c ../src/config/same54_xpro/initialization.c ../src/config/same54_xpro/interrupts.c ../src/config/same54_xpro/exceptions.c ../src/config/same54_xpro/startup_xc32.c ../src/config/same54_xpro/libc_syscalls.c ../../../../../../../libraries/3rdparty/tinycrypt/asn1/asn1parse.c ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/aes_decrypt.c ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/aes_encrypt.c ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/cbc_mode.c ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/ccm_mode.c ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/cmac_mode.c ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/ctr_mode.c ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/ctr_prng.c ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/ecc.c ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/ecc_dh.c ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/ecc_dsa.c ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/ecc_platform_specific.c ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/hmac.c ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/hmac_prng.c ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/sha256.c ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/utils.c ../src/main.c

# Pack Options 
PACK_COMMON_OPTIONS=-I "${CMSIS_DIR}/CMSIS/Core/Include"



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

# The following macros may be used in the pre and post step lines
Device=ATSAME54P20A
ProjectDir="D:\AWS3_2\amazon-freertos\projects\microchip\same54_xpro\mplab\bootloader\firmware\bootloader.X"
ProjectName=bootloader
ConfName=same54_xpro
ImagePath="dist\same54_xpro\${IMAGE_TYPE}\bootloader.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}"
ImageDir="dist\same54_xpro\${IMAGE_TYPE}"
ImageName="bootloader.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}"
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IsDebug="true"
else
IsDebug="false"
endif

.build-conf:  .pre ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-same54_xpro.mk dist/${CND_CONF}/${IMAGE_TYPE}/bootloader.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
	@echo "--------------------------------------"
	@echo "User defined post-build step: [cp "${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.hex" ../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/utility]"
	@cp "${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.hex" ../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/utility
	@echo "--------------------------------------"

MP_PROCESSOR_OPTION=ATSAME54P20A
MP_LINKER_FILE_OPTION=,--script="..\src\config\same54_xpro\ATSAME54P20A.ld"
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/2097892688/asn1utility.o: ../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/crypto/tinycrypt/asn1utility.c  .generated_files/c9dab06b052c1932c0a99dd8864de5f1179e5fb4.flag .generated_files/266bf8b248d573397354279739be16fd942da08.flag
	@${MKDIR} "${OBJECTDIR}/_ext/2097892688" 
	@${RM} ${OBJECTDIR}/_ext/2097892688/asn1utility.o.d 
	@${RM} ${OBJECTDIR}/_ext/2097892688/asn1utility.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2097892688/asn1utility.o.d" -o ${OBJECTDIR}/_ext/2097892688/asn1utility.o ../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/crypto/tinycrypt/asn1utility.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2097892688/aws_boot_crypto.o: ../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/crypto/tinycrypt/aws_boot_crypto.c  .generated_files/76207d3bb03bbd02b50356e5b1a63e406cbc3761.flag .generated_files/266bf8b248d573397354279739be16fd942da08.flag
	@${MKDIR} "${OBJECTDIR}/_ext/2097892688" 
	@${RM} ${OBJECTDIR}/_ext/2097892688/aws_boot_crypto.o.d 
	@${RM} ${OBJECTDIR}/_ext/2097892688/aws_boot_crypto.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2097892688/aws_boot_crypto.o.d" -o ${OBJECTDIR}/_ext/2097892688/aws_boot_crypto.o ../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/crypto/tinycrypt/aws_boot_crypto.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/93820448/aws_boot_flash.o: ../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash/aws_boot_flash.c  .generated_files/ac8e5116219792d0a4e03ed9071f853dbc83c732.flag .generated_files/266bf8b248d573397354279739be16fd942da08.flag
	@${MKDIR} "${OBJECTDIR}/_ext/93820448" 
	@${RM} ${OBJECTDIR}/_ext/93820448/aws_boot_flash.o.d 
	@${RM} ${OBJECTDIR}/_ext/93820448/aws_boot_flash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/93820448/aws_boot_flash.o.d" -o ${OBJECTDIR}/_ext/93820448/aws_boot_flash.o ../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash/aws_boot_flash.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/93820448/aws_boot_nvm.o: ../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash/aws_boot_nvm.c  .generated_files/698591d8acf5c16bd0d89827081093afa06f7d33.flag .generated_files/266bf8b248d573397354279739be16fd942da08.flag
	@${MKDIR} "${OBJECTDIR}/_ext/93820448" 
	@${RM} ${OBJECTDIR}/_ext/93820448/aws_boot_nvm.o.d 
	@${RM} ${OBJECTDIR}/_ext/93820448/aws_boot_nvm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/93820448/aws_boot_nvm.o.d" -o ${OBJECTDIR}/_ext/93820448/aws_boot_nvm.o ../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash/aws_boot_nvm.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/93820448/aws_boot_partition.o: ../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash/aws_boot_partition.c  .generated_files/8484df138db3b2d0fd9f50510c3f5c58c0cc51b9.flag .generated_files/266bf8b248d573397354279739be16fd942da08.flag
	@${MKDIR} "${OBJECTDIR}/_ext/93820448" 
	@${RM} ${OBJECTDIR}/_ext/93820448/aws_boot_partition.o.d 
	@${RM} ${OBJECTDIR}/_ext/93820448/aws_boot_partition.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/93820448/aws_boot_partition.o.d" -o ${OBJECTDIR}/_ext/93820448/aws_boot_partition.o ../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash/aws_boot_partition.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1561064483/aws_boot_loader.o: ../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/loader/aws_boot_loader.c  .generated_files/96a8a19c51d88528e7fb68b14e71958486529091.flag .generated_files/266bf8b248d573397354279739be16fd942da08.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1561064483" 
	@${RM} ${OBJECTDIR}/_ext/1561064483/aws_boot_loader.o.d 
	@${RM} ${OBJECTDIR}/_ext/1561064483/aws_boot_loader.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1561064483/aws_boot_loader.o.d" -o ${OBJECTDIR}/_ext/1561064483/aws_boot_loader.o ../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/loader/aws_boot_loader.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1561064483/aws_boot_pal.o: ../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/loader/aws_boot_pal.c  .generated_files/88e11dcc39858e8a7535b8dc1dec46f67b35b5fc.flag .generated_files/266bf8b248d573397354279739be16fd942da08.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1561064483" 
	@${RM} ${OBJECTDIR}/_ext/1561064483/aws_boot_pal.o.d 
	@${RM} ${OBJECTDIR}/_ext/1561064483/aws_boot_pal.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1561064483/aws_boot_pal.o.d" -o ${OBJECTDIR}/_ext/1561064483/aws_boot_pal.o ../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/loader/aws_boot_pal.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/619668485/app.o: ../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/source/app.c  .generated_files/6c463009b5c7a99fb593be109b1ce22c6b5397a3.flag .generated_files/266bf8b248d573397354279739be16fd942da08.flag
	@${MKDIR} "${OBJECTDIR}/_ext/619668485" 
	@${RM} ${OBJECTDIR}/_ext/619668485/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/619668485/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/619668485/app.o.d" -o ${OBJECTDIR}/_ext/619668485/app.o ../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/source/app.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/288800588/bsp.o: ../src/config/same54_xpro/bsp/bsp.c  .generated_files/530107472106c4b056b2f2ea2a31267275f36e1c.flag .generated_files/266bf8b248d573397354279739be16fd942da08.flag
	@${MKDIR} "${OBJECTDIR}/_ext/288800588" 
	@${RM} ${OBJECTDIR}/_ext/288800588/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/288800588/bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/288800588/bsp.o.d" -o ${OBJECTDIR}/_ext/288800588/bsp.o ../src/config/same54_xpro/bsp/bsp.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/425478706/plib_clock.o: ../src/config/same54_xpro/peripheral/clock/plib_clock.c  .generated_files/963f6236dc09aa656c3a3efb9b873f72b39b54.flag .generated_files/266bf8b248d573397354279739be16fd942da08.flag
	@${MKDIR} "${OBJECTDIR}/_ext/425478706" 
	@${RM} ${OBJECTDIR}/_ext/425478706/plib_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/425478706/plib_clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/425478706/plib_clock.o.d" -o ${OBJECTDIR}/_ext/425478706/plib_clock.o ../src/config/same54_xpro/peripheral/clock/plib_clock.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/13724534/plib_cmcc.o: ../src/config/same54_xpro/peripheral/cmcc/plib_cmcc.c  .generated_files/554e18dc47af033f43c17f6181f182f2765ce8a0.flag .generated_files/266bf8b248d573397354279739be16fd942da08.flag
	@${MKDIR} "${OBJECTDIR}/_ext/13724534" 
	@${RM} ${OBJECTDIR}/_ext/13724534/plib_cmcc.o.d 
	@${RM} ${OBJECTDIR}/_ext/13724534/plib_cmcc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/13724534/plib_cmcc.o.d" -o ${OBJECTDIR}/_ext/13724534/plib_cmcc.o ../src/config/same54_xpro/peripheral/cmcc/plib_cmcc.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/423329220/plib_evsys.o: ../src/config/same54_xpro/peripheral/evsys/plib_evsys.c  .generated_files/ffd14e968a9da0084e71c62b778ef52c67304986.flag .generated_files/266bf8b248d573397354279739be16fd942da08.flag
	@${MKDIR} "${OBJECTDIR}/_ext/423329220" 
	@${RM} ${OBJECTDIR}/_ext/423329220/plib_evsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/423329220/plib_evsys.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/423329220/plib_evsys.o.d" -o ${OBJECTDIR}/_ext/423329220/plib_evsys.o ../src/config/same54_xpro/peripheral/evsys/plib_evsys.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/13387998/plib_nvic.o: ../src/config/same54_xpro/peripheral/nvic/plib_nvic.c  .generated_files/e8aa91cb2c6eda0db77067d0ab1a8f7c4e2c95f5.flag .generated_files/266bf8b248d573397354279739be16fd942da08.flag
	@${MKDIR} "${OBJECTDIR}/_ext/13387998" 
	@${RM} ${OBJECTDIR}/_ext/13387998/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/13387998/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/13387998/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/13387998/plib_nvic.o ../src/config/same54_xpro/peripheral/nvic/plib_nvic.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/593919312/plib_nvmctrl.o: ../src/config/same54_xpro/peripheral/nvmctrl/plib_nvmctrl.c  .generated_files/479fbd64860d596b601b3ef041e0bfcd2284789e.flag .generated_files/266bf8b248d573397354279739be16fd942da08.flag
	@${MKDIR} "${OBJECTDIR}/_ext/593919312" 
	@${RM} ${OBJECTDIR}/_ext/593919312/plib_nvmctrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/593919312/plib_nvmctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/593919312/plib_nvmctrl.o.d" -o ${OBJECTDIR}/_ext/593919312/plib_nvmctrl.o ../src/config/same54_xpro/peripheral/nvmctrl/plib_nvmctrl.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/13334847/plib_port.o: ../src/config/same54_xpro/peripheral/port/plib_port.c  .generated_files/47628c60fbf383a69353d72ea8b1ca71679aac6f.flag .generated_files/266bf8b248d573397354279739be16fd942da08.flag
	@${MKDIR} "${OBJECTDIR}/_ext/13334847" 
	@${RM} ${OBJECTDIR}/_ext/13334847/plib_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/13334847/plib_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/13334847/plib_port.o.d" -o ${OBJECTDIR}/_ext/13334847/plib_port.o ../src/config/same54_xpro/peripheral/port/plib_port.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2047131351/plib_sercom2_usart.o: ../src/config/same54_xpro/peripheral/sercom/usart/plib_sercom2_usart.c  .generated_files/bfc47696f67ab147f26d9dbb4baa2f816ddbfc43.flag .generated_files/266bf8b248d573397354279739be16fd942da08.flag
	@${MKDIR} "${OBJECTDIR}/_ext/2047131351" 
	@${RM} ${OBJECTDIR}/_ext/2047131351/plib_sercom2_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/2047131351/plib_sercom2_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2047131351/plib_sercom2_usart.o.d" -o ${OBJECTDIR}/_ext/2047131351/plib_sercom2_usart.o ../src/config/same54_xpro/peripheral/sercom/usart/plib_sercom2_usart.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/970255097/plib_wdt.o: ../src/config/same54_xpro/peripheral/wdt/plib_wdt.c  .generated_files/5072027cb1838fcd5769471f9a752605aebd4d89.flag .generated_files/266bf8b248d573397354279739be16fd942da08.flag
	@${MKDIR} "${OBJECTDIR}/_ext/970255097" 
	@${RM} ${OBJECTDIR}/_ext/970255097/plib_wdt.o.d 
	@${RM} ${OBJECTDIR}/_ext/970255097/plib_wdt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/970255097/plib_wdt.o.d" -o ${OBJECTDIR}/_ext/970255097/plib_wdt.o ../src/config/same54_xpro/peripheral/wdt/plib_wdt.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1619787690/xc32_monitor.o: ../src/config/same54_xpro/stdio/xc32_monitor.c  .generated_files/a2c22ec18e9a25c8d891d8f0fd9411d5180b07af.flag .generated_files/266bf8b248d573397354279739be16fd942da08.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1619787690" 
	@${RM} ${OBJECTDIR}/_ext/1619787690/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1619787690/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1619787690/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/1619787690/xc32_monitor.o ../src/config/same54_xpro/stdio/xc32_monitor.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1510338148/initialization.o: ../src/config/same54_xpro/initialization.c  .generated_files/8c405c14ffa835015e4dd259327de9ff8becce72.flag .generated_files/266bf8b248d573397354279739be16fd942da08.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1510338148" 
	@${RM} ${OBJECTDIR}/_ext/1510338148/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1510338148/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1510338148/initialization.o.d" -o ${OBJECTDIR}/_ext/1510338148/initialization.o ../src/config/same54_xpro/initialization.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1510338148/interrupts.o: ../src/config/same54_xpro/interrupts.c  .generated_files/3964897ac395c26b495fe07dde756eaa20053586.flag .generated_files/266bf8b248d573397354279739be16fd942da08.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1510338148" 
	@${RM} ${OBJECTDIR}/_ext/1510338148/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1510338148/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1510338148/interrupts.o.d" -o ${OBJECTDIR}/_ext/1510338148/interrupts.o ../src/config/same54_xpro/interrupts.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1510338148/exceptions.o: ../src/config/same54_xpro/exceptions.c  .generated_files/7306c97d0b4cd93baf332dc9e639818c2e93fc4f.flag .generated_files/266bf8b248d573397354279739be16fd942da08.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1510338148" 
	@${RM} ${OBJECTDIR}/_ext/1510338148/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1510338148/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1510338148/exceptions.o.d" -o ${OBJECTDIR}/_ext/1510338148/exceptions.o ../src/config/same54_xpro/exceptions.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1510338148/startup_xc32.o: ../src/config/same54_xpro/startup_xc32.c  .generated_files/f5c16ce4761a885610cac312e091fe350d4edb83.flag .generated_files/266bf8b248d573397354279739be16fd942da08.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1510338148" 
	@${RM} ${OBJECTDIR}/_ext/1510338148/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1510338148/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1510338148/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/1510338148/startup_xc32.o ../src/config/same54_xpro/startup_xc32.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1510338148/libc_syscalls.o: ../src/config/same54_xpro/libc_syscalls.c  .generated_files/8e20838d19089bf84f8e1e076044cf3d3c3709e4.flag .generated_files/266bf8b248d573397354279739be16fd942da08.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1510338148" 
	@${RM} ${OBJECTDIR}/_ext/1510338148/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/1510338148/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1510338148/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/1510338148/libc_syscalls.o ../src/config/same54_xpro/libc_syscalls.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1214204543/asn1parse.o: ../../../../../../../libraries/3rdparty/tinycrypt/asn1/asn1parse.c  .generated_files/5df27ce56c79972c7774dc7ebb48ace409fd39ff.flag .generated_files/266bf8b248d573397354279739be16fd942da08.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1214204543" 
	@${RM} ${OBJECTDIR}/_ext/1214204543/asn1parse.o.d 
	@${RM} ${OBJECTDIR}/_ext/1214204543/asn1parse.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1214204543/asn1parse.o.d" -o ${OBJECTDIR}/_ext/1214204543/asn1parse.o ../../../../../../../libraries/3rdparty/tinycrypt/asn1/asn1parse.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1193839791/aes_decrypt.o: ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/aes_decrypt.c  .generated_files/6a0ba2fa400ce6083239f93f9e77d89643191ce.flag .generated_files/266bf8b248d573397354279739be16fd942da08.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1193839791" 
	@${RM} ${OBJECTDIR}/_ext/1193839791/aes_decrypt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1193839791/aes_decrypt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1193839791/aes_decrypt.o.d" -o ${OBJECTDIR}/_ext/1193839791/aes_decrypt.o ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/aes_decrypt.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1193839791/aes_encrypt.o: ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/aes_encrypt.c  .generated_files/841a4fdb70f9d4190ac5cab3fbe21a81c48b4489.flag .generated_files/266bf8b248d573397354279739be16fd942da08.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1193839791" 
	@${RM} ${OBJECTDIR}/_ext/1193839791/aes_encrypt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1193839791/aes_encrypt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1193839791/aes_encrypt.o.d" -o ${OBJECTDIR}/_ext/1193839791/aes_encrypt.o ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/aes_encrypt.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1193839791/cbc_mode.o: ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/cbc_mode.c  .generated_files/6f79fe46f78f12df87e708d22b5ec0b8109cb485.flag .generated_files/266bf8b248d573397354279739be16fd942da08.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1193839791" 
	@${RM} ${OBJECTDIR}/_ext/1193839791/cbc_mode.o.d 
	@${RM} ${OBJECTDIR}/_ext/1193839791/cbc_mode.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1193839791/cbc_mode.o.d" -o ${OBJECTDIR}/_ext/1193839791/cbc_mode.o ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/cbc_mode.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1193839791/ccm_mode.o: ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/ccm_mode.c  .generated_files/1879e0bdf6ea8e4ce8c6dba929f487842e8effb4.flag .generated_files/266bf8b248d573397354279739be16fd942da08.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1193839791" 
	@${RM} ${OBJECTDIR}/_ext/1193839791/ccm_mode.o.d 
	@${RM} ${OBJECTDIR}/_ext/1193839791/ccm_mode.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1193839791/ccm_mode.o.d" -o ${OBJECTDIR}/_ext/1193839791/ccm_mode.o ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/ccm_mode.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1193839791/cmac_mode.o: ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/cmac_mode.c  .generated_files/eb9c6e1d2c7159c047fde7ecf303229237ac7df6.flag .generated_files/266bf8b248d573397354279739be16fd942da08.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1193839791" 
	@${RM} ${OBJECTDIR}/_ext/1193839791/cmac_mode.o.d 
	@${RM} ${OBJECTDIR}/_ext/1193839791/cmac_mode.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1193839791/cmac_mode.o.d" -o ${OBJECTDIR}/_ext/1193839791/cmac_mode.o ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/cmac_mode.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1193839791/ctr_mode.o: ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/ctr_mode.c  .generated_files/eaa96aada4dd0edaa215af2f3f3154fc2c604b40.flag .generated_files/266bf8b248d573397354279739be16fd942da08.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1193839791" 
	@${RM} ${OBJECTDIR}/_ext/1193839791/ctr_mode.o.d 
	@${RM} ${OBJECTDIR}/_ext/1193839791/ctr_mode.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1193839791/ctr_mode.o.d" -o ${OBJECTDIR}/_ext/1193839791/ctr_mode.o ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/ctr_mode.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1193839791/ctr_prng.o: ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/ctr_prng.c  .generated_files/43618db626fd345075e77663c775a8e0dfe0a99a.flag .generated_files/266bf8b248d573397354279739be16fd942da08.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1193839791" 
	@${RM} ${OBJECTDIR}/_ext/1193839791/ctr_prng.o.d 
	@${RM} ${OBJECTDIR}/_ext/1193839791/ctr_prng.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1193839791/ctr_prng.o.d" -o ${OBJECTDIR}/_ext/1193839791/ctr_prng.o ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/ctr_prng.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1193839791/ecc.o: ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/ecc.c  .generated_files/eb0adaa5c8df15d6f2414c91538aa9188225e52d.flag .generated_files/266bf8b248d573397354279739be16fd942da08.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1193839791" 
	@${RM} ${OBJECTDIR}/_ext/1193839791/ecc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1193839791/ecc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1193839791/ecc.o.d" -o ${OBJECTDIR}/_ext/1193839791/ecc.o ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/ecc.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1193839791/ecc_dh.o: ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/ecc_dh.c  .generated_files/3e2225454a041a532f4b264255d102706f53b59f.flag .generated_files/266bf8b248d573397354279739be16fd942da08.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1193839791" 
	@${RM} ${OBJECTDIR}/_ext/1193839791/ecc_dh.o.d 
	@${RM} ${OBJECTDIR}/_ext/1193839791/ecc_dh.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1193839791/ecc_dh.o.d" -o ${OBJECTDIR}/_ext/1193839791/ecc_dh.o ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/ecc_dh.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1193839791/ecc_dsa.o: ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/ecc_dsa.c  .generated_files/4218424b83de70588e84c94570e24ae3ecbb067e.flag .generated_files/266bf8b248d573397354279739be16fd942da08.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1193839791" 
	@${RM} ${OBJECTDIR}/_ext/1193839791/ecc_dsa.o.d 
	@${RM} ${OBJECTDIR}/_ext/1193839791/ecc_dsa.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1193839791/ecc_dsa.o.d" -o ${OBJECTDIR}/_ext/1193839791/ecc_dsa.o ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/ecc_dsa.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1193839791/ecc_platform_specific.o: ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/ecc_platform_specific.c  .generated_files/53aa439c8e1ba7293d04a55af015bebaf1049f08.flag .generated_files/266bf8b248d573397354279739be16fd942da08.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1193839791" 
	@${RM} ${OBJECTDIR}/_ext/1193839791/ecc_platform_specific.o.d 
	@${RM} ${OBJECTDIR}/_ext/1193839791/ecc_platform_specific.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1193839791/ecc_platform_specific.o.d" -o ${OBJECTDIR}/_ext/1193839791/ecc_platform_specific.o ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/ecc_platform_specific.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1193839791/hmac.o: ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/hmac.c  .generated_files/163b0f617ca270f9a8181582c7b2268fdf1cfcb6.flag .generated_files/266bf8b248d573397354279739be16fd942da08.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1193839791" 
	@${RM} ${OBJECTDIR}/_ext/1193839791/hmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/1193839791/hmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1193839791/hmac.o.d" -o ${OBJECTDIR}/_ext/1193839791/hmac.o ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/hmac.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1193839791/hmac_prng.o: ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/hmac_prng.c  .generated_files/9965f8a26ed18256afa32fa57e94697f76572ac.flag .generated_files/266bf8b248d573397354279739be16fd942da08.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1193839791" 
	@${RM} ${OBJECTDIR}/_ext/1193839791/hmac_prng.o.d 
	@${RM} ${OBJECTDIR}/_ext/1193839791/hmac_prng.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1193839791/hmac_prng.o.d" -o ${OBJECTDIR}/_ext/1193839791/hmac_prng.o ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/hmac_prng.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1193839791/sha256.o: ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/sha256.c  .generated_files/939328f045393760d4dc3706a7c40b475f57f43a.flag .generated_files/266bf8b248d573397354279739be16fd942da08.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1193839791" 
	@${RM} ${OBJECTDIR}/_ext/1193839791/sha256.o.d 
	@${RM} ${OBJECTDIR}/_ext/1193839791/sha256.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1193839791/sha256.o.d" -o ${OBJECTDIR}/_ext/1193839791/sha256.o ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/sha256.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1193839791/utils.o: ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/utils.c  .generated_files/19a8cd92c258183e9e2e7ec1f165d371abe1e6f7.flag .generated_files/266bf8b248d573397354279739be16fd942da08.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1193839791" 
	@${RM} ${OBJECTDIR}/_ext/1193839791/utils.o.d 
	@${RM} ${OBJECTDIR}/_ext/1193839791/utils.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1193839791/utils.o.d" -o ${OBJECTDIR}/_ext/1193839791/utils.o ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/utils.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/51fe978eb429d4c172ba2c46f25fb9f5d853c068.flag .generated_files/266bf8b248d573397354279739be16fd942da08.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
else
${OBJECTDIR}/_ext/2097892688/asn1utility.o: ../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/crypto/tinycrypt/asn1utility.c  .generated_files/411e7b58595d317be07c870a8e5a989f0f35335f.flag .generated_files/266bf8b248d573397354279739be16fd942da08.flag
	@${MKDIR} "${OBJECTDIR}/_ext/2097892688" 
	@${RM} ${OBJECTDIR}/_ext/2097892688/asn1utility.o.d 
	@${RM} ${OBJECTDIR}/_ext/2097892688/asn1utility.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2097892688/asn1utility.o.d" -o ${OBJECTDIR}/_ext/2097892688/asn1utility.o ../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/crypto/tinycrypt/asn1utility.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2097892688/aws_boot_crypto.o: ../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/crypto/tinycrypt/aws_boot_crypto.c  .generated_files/134b36fd29fc8a1c324765f47dc7a4fe1a0b9d53.flag .generated_files/266bf8b248d573397354279739be16fd942da08.flag
	@${MKDIR} "${OBJECTDIR}/_ext/2097892688" 
	@${RM} ${OBJECTDIR}/_ext/2097892688/aws_boot_crypto.o.d 
	@${RM} ${OBJECTDIR}/_ext/2097892688/aws_boot_crypto.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2097892688/aws_boot_crypto.o.d" -o ${OBJECTDIR}/_ext/2097892688/aws_boot_crypto.o ../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/crypto/tinycrypt/aws_boot_crypto.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/93820448/aws_boot_flash.o: ../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash/aws_boot_flash.c  .generated_files/216423c66dc8ff92b7bed324b5fdbcf087726d6d.flag .generated_files/266bf8b248d573397354279739be16fd942da08.flag
	@${MKDIR} "${OBJECTDIR}/_ext/93820448" 
	@${RM} ${OBJECTDIR}/_ext/93820448/aws_boot_flash.o.d 
	@${RM} ${OBJECTDIR}/_ext/93820448/aws_boot_flash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/93820448/aws_boot_flash.o.d" -o ${OBJECTDIR}/_ext/93820448/aws_boot_flash.o ../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash/aws_boot_flash.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/93820448/aws_boot_nvm.o: ../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash/aws_boot_nvm.c  .generated_files/1d17236dec3bb441d9ba68c93cdd0a2f213da660.flag .generated_files/266bf8b248d573397354279739be16fd942da08.flag
	@${MKDIR} "${OBJECTDIR}/_ext/93820448" 
	@${RM} ${OBJECTDIR}/_ext/93820448/aws_boot_nvm.o.d 
	@${RM} ${OBJECTDIR}/_ext/93820448/aws_boot_nvm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/93820448/aws_boot_nvm.o.d" -o ${OBJECTDIR}/_ext/93820448/aws_boot_nvm.o ../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash/aws_boot_nvm.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/93820448/aws_boot_partition.o: ../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash/aws_boot_partition.c  .generated_files/109f471c8772faeefc21c145e6bc2e07d1562cd7.flag .generated_files/266bf8b248d573397354279739be16fd942da08.flag
	@${MKDIR} "${OBJECTDIR}/_ext/93820448" 
	@${RM} ${OBJECTDIR}/_ext/93820448/aws_boot_partition.o.d 
	@${RM} ${OBJECTDIR}/_ext/93820448/aws_boot_partition.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/93820448/aws_boot_partition.o.d" -o ${OBJECTDIR}/_ext/93820448/aws_boot_partition.o ../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash/aws_boot_partition.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1561064483/aws_boot_loader.o: ../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/loader/aws_boot_loader.c  .generated_files/7b53b632835dc41fb88051673f31338f81668d33.flag .generated_files/266bf8b248d573397354279739be16fd942da08.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1561064483" 
	@${RM} ${OBJECTDIR}/_ext/1561064483/aws_boot_loader.o.d 
	@${RM} ${OBJECTDIR}/_ext/1561064483/aws_boot_loader.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1561064483/aws_boot_loader.o.d" -o ${OBJECTDIR}/_ext/1561064483/aws_boot_loader.o ../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/loader/aws_boot_loader.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1561064483/aws_boot_pal.o: ../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/loader/aws_boot_pal.c  .generated_files/3c3b973f7e06e7b41586818ac3921b7aaeb744.flag .generated_files/266bf8b248d573397354279739be16fd942da08.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1561064483" 
	@${RM} ${OBJECTDIR}/_ext/1561064483/aws_boot_pal.o.d 
	@${RM} ${OBJECTDIR}/_ext/1561064483/aws_boot_pal.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1561064483/aws_boot_pal.o.d" -o ${OBJECTDIR}/_ext/1561064483/aws_boot_pal.o ../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/loader/aws_boot_pal.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/619668485/app.o: ../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/source/app.c  .generated_files/b2d94fa7aea12b828e767db03581dbde0089e2f6.flag .generated_files/266bf8b248d573397354279739be16fd942da08.flag
	@${MKDIR} "${OBJECTDIR}/_ext/619668485" 
	@${RM} ${OBJECTDIR}/_ext/619668485/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/619668485/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/619668485/app.o.d" -o ${OBJECTDIR}/_ext/619668485/app.o ../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/source/app.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/288800588/bsp.o: ../src/config/same54_xpro/bsp/bsp.c  .generated_files/32ddbc016f33bc1350c9ec48b0087bfcbed2f38b.flag .generated_files/266bf8b248d573397354279739be16fd942da08.flag
	@${MKDIR} "${OBJECTDIR}/_ext/288800588" 
	@${RM} ${OBJECTDIR}/_ext/288800588/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/288800588/bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/288800588/bsp.o.d" -o ${OBJECTDIR}/_ext/288800588/bsp.o ../src/config/same54_xpro/bsp/bsp.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/425478706/plib_clock.o: ../src/config/same54_xpro/peripheral/clock/plib_clock.c  .generated_files/6f879c93777ba4d962ad6c1a2d3c7cac397af1a.flag .generated_files/266bf8b248d573397354279739be16fd942da08.flag
	@${MKDIR} "${OBJECTDIR}/_ext/425478706" 
	@${RM} ${OBJECTDIR}/_ext/425478706/plib_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/425478706/plib_clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/425478706/plib_clock.o.d" -o ${OBJECTDIR}/_ext/425478706/plib_clock.o ../src/config/same54_xpro/peripheral/clock/plib_clock.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/13724534/plib_cmcc.o: ../src/config/same54_xpro/peripheral/cmcc/plib_cmcc.c  .generated_files/33924591957518da1da742ecc4d8f803cd9ac172.flag .generated_files/266bf8b248d573397354279739be16fd942da08.flag
	@${MKDIR} "${OBJECTDIR}/_ext/13724534" 
	@${RM} ${OBJECTDIR}/_ext/13724534/plib_cmcc.o.d 
	@${RM} ${OBJECTDIR}/_ext/13724534/plib_cmcc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/13724534/plib_cmcc.o.d" -o ${OBJECTDIR}/_ext/13724534/plib_cmcc.o ../src/config/same54_xpro/peripheral/cmcc/plib_cmcc.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/423329220/plib_evsys.o: ../src/config/same54_xpro/peripheral/evsys/plib_evsys.c  .generated_files/62a5d08afa2cde2ac2d2196f31bb120f59cf7205.flag .generated_files/266bf8b248d573397354279739be16fd942da08.flag
	@${MKDIR} "${OBJECTDIR}/_ext/423329220" 
	@${RM} ${OBJECTDIR}/_ext/423329220/plib_evsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/423329220/plib_evsys.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/423329220/plib_evsys.o.d" -o ${OBJECTDIR}/_ext/423329220/plib_evsys.o ../src/config/same54_xpro/peripheral/evsys/plib_evsys.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/13387998/plib_nvic.o: ../src/config/same54_xpro/peripheral/nvic/plib_nvic.c  .generated_files/771bbeb33118ca92ac03fb2193087cd0dd5f3dde.flag .generated_files/266bf8b248d573397354279739be16fd942da08.flag
	@${MKDIR} "${OBJECTDIR}/_ext/13387998" 
	@${RM} ${OBJECTDIR}/_ext/13387998/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/13387998/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/13387998/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/13387998/plib_nvic.o ../src/config/same54_xpro/peripheral/nvic/plib_nvic.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/593919312/plib_nvmctrl.o: ../src/config/same54_xpro/peripheral/nvmctrl/plib_nvmctrl.c  .generated_files/86da4555db831df7dc814bb5635bcc119911f224.flag .generated_files/266bf8b248d573397354279739be16fd942da08.flag
	@${MKDIR} "${OBJECTDIR}/_ext/593919312" 
	@${RM} ${OBJECTDIR}/_ext/593919312/plib_nvmctrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/593919312/plib_nvmctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/593919312/plib_nvmctrl.o.d" -o ${OBJECTDIR}/_ext/593919312/plib_nvmctrl.o ../src/config/same54_xpro/peripheral/nvmctrl/plib_nvmctrl.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/13334847/plib_port.o: ../src/config/same54_xpro/peripheral/port/plib_port.c  .generated_files/906691adbd2b023a37fd72562d51b7be37feebda.flag .generated_files/266bf8b248d573397354279739be16fd942da08.flag
	@${MKDIR} "${OBJECTDIR}/_ext/13334847" 
	@${RM} ${OBJECTDIR}/_ext/13334847/plib_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/13334847/plib_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/13334847/plib_port.o.d" -o ${OBJECTDIR}/_ext/13334847/plib_port.o ../src/config/same54_xpro/peripheral/port/plib_port.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2047131351/plib_sercom2_usart.o: ../src/config/same54_xpro/peripheral/sercom/usart/plib_sercom2_usart.c  .generated_files/6b2dab06e84fbd0150600b45423a96b57c55277.flag .generated_files/266bf8b248d573397354279739be16fd942da08.flag
	@${MKDIR} "${OBJECTDIR}/_ext/2047131351" 
	@${RM} ${OBJECTDIR}/_ext/2047131351/plib_sercom2_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/2047131351/plib_sercom2_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2047131351/plib_sercom2_usart.o.d" -o ${OBJECTDIR}/_ext/2047131351/plib_sercom2_usart.o ../src/config/same54_xpro/peripheral/sercom/usart/plib_sercom2_usart.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/970255097/plib_wdt.o: ../src/config/same54_xpro/peripheral/wdt/plib_wdt.c  .generated_files/ddefb4ace936faf391c073b31053ef3ce885205b.flag .generated_files/266bf8b248d573397354279739be16fd942da08.flag
	@${MKDIR} "${OBJECTDIR}/_ext/970255097" 
	@${RM} ${OBJECTDIR}/_ext/970255097/plib_wdt.o.d 
	@${RM} ${OBJECTDIR}/_ext/970255097/plib_wdt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/970255097/plib_wdt.o.d" -o ${OBJECTDIR}/_ext/970255097/plib_wdt.o ../src/config/same54_xpro/peripheral/wdt/plib_wdt.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1619787690/xc32_monitor.o: ../src/config/same54_xpro/stdio/xc32_monitor.c  .generated_files/d25ddf2b990ea95dc29ea3f37ae898da372cb8f1.flag .generated_files/266bf8b248d573397354279739be16fd942da08.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1619787690" 
	@${RM} ${OBJECTDIR}/_ext/1619787690/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1619787690/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1619787690/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/1619787690/xc32_monitor.o ../src/config/same54_xpro/stdio/xc32_monitor.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1510338148/initialization.o: ../src/config/same54_xpro/initialization.c  .generated_files/d09bbe3df7ca53cc6a27619b5a8fb0ab192b2f73.flag .generated_files/266bf8b248d573397354279739be16fd942da08.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1510338148" 
	@${RM} ${OBJECTDIR}/_ext/1510338148/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1510338148/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1510338148/initialization.o.d" -o ${OBJECTDIR}/_ext/1510338148/initialization.o ../src/config/same54_xpro/initialization.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1510338148/interrupts.o: ../src/config/same54_xpro/interrupts.c  .generated_files/e63e5f6cebc5da3c505d76714c0c973f2c201679.flag .generated_files/266bf8b248d573397354279739be16fd942da08.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1510338148" 
	@${RM} ${OBJECTDIR}/_ext/1510338148/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1510338148/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1510338148/interrupts.o.d" -o ${OBJECTDIR}/_ext/1510338148/interrupts.o ../src/config/same54_xpro/interrupts.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1510338148/exceptions.o: ../src/config/same54_xpro/exceptions.c  .generated_files/7f09c147611f5323e6d6ff2753c73427e4c16df0.flag .generated_files/266bf8b248d573397354279739be16fd942da08.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1510338148" 
	@${RM} ${OBJECTDIR}/_ext/1510338148/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1510338148/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1510338148/exceptions.o.d" -o ${OBJECTDIR}/_ext/1510338148/exceptions.o ../src/config/same54_xpro/exceptions.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1510338148/startup_xc32.o: ../src/config/same54_xpro/startup_xc32.c  .generated_files/5ed6982104c0da8454089e0143cc5769ad05dfdd.flag .generated_files/266bf8b248d573397354279739be16fd942da08.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1510338148" 
	@${RM} ${OBJECTDIR}/_ext/1510338148/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1510338148/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1510338148/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/1510338148/startup_xc32.o ../src/config/same54_xpro/startup_xc32.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1510338148/libc_syscalls.o: ../src/config/same54_xpro/libc_syscalls.c  .generated_files/966c00e121b9b221e1a44593dd18412350dd9cf2.flag .generated_files/266bf8b248d573397354279739be16fd942da08.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1510338148" 
	@${RM} ${OBJECTDIR}/_ext/1510338148/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/1510338148/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1510338148/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/1510338148/libc_syscalls.o ../src/config/same54_xpro/libc_syscalls.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1214204543/asn1parse.o: ../../../../../../../libraries/3rdparty/tinycrypt/asn1/asn1parse.c  .generated_files/7e1641534cb19b3cb95a1f7457a1ab081f560e0e.flag .generated_files/266bf8b248d573397354279739be16fd942da08.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1214204543" 
	@${RM} ${OBJECTDIR}/_ext/1214204543/asn1parse.o.d 
	@${RM} ${OBJECTDIR}/_ext/1214204543/asn1parse.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1214204543/asn1parse.o.d" -o ${OBJECTDIR}/_ext/1214204543/asn1parse.o ../../../../../../../libraries/3rdparty/tinycrypt/asn1/asn1parse.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1193839791/aes_decrypt.o: ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/aes_decrypt.c  .generated_files/84f216cfe7f9e2cda0720ecaa6a65666f9457a11.flag .generated_files/266bf8b248d573397354279739be16fd942da08.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1193839791" 
	@${RM} ${OBJECTDIR}/_ext/1193839791/aes_decrypt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1193839791/aes_decrypt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1193839791/aes_decrypt.o.d" -o ${OBJECTDIR}/_ext/1193839791/aes_decrypt.o ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/aes_decrypt.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1193839791/aes_encrypt.o: ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/aes_encrypt.c  .generated_files/403cded5883413c289cfa1e2bc2ff44007eb6172.flag .generated_files/266bf8b248d573397354279739be16fd942da08.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1193839791" 
	@${RM} ${OBJECTDIR}/_ext/1193839791/aes_encrypt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1193839791/aes_encrypt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1193839791/aes_encrypt.o.d" -o ${OBJECTDIR}/_ext/1193839791/aes_encrypt.o ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/aes_encrypt.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1193839791/cbc_mode.o: ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/cbc_mode.c  .generated_files/c8a3ecdac197b081d3241e24ef43a7d5036434fe.flag .generated_files/266bf8b248d573397354279739be16fd942da08.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1193839791" 
	@${RM} ${OBJECTDIR}/_ext/1193839791/cbc_mode.o.d 
	@${RM} ${OBJECTDIR}/_ext/1193839791/cbc_mode.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1193839791/cbc_mode.o.d" -o ${OBJECTDIR}/_ext/1193839791/cbc_mode.o ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/cbc_mode.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1193839791/ccm_mode.o: ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/ccm_mode.c  .generated_files/90530f8621f21d54f5ac33b6460c71ff30a2a0b2.flag .generated_files/266bf8b248d573397354279739be16fd942da08.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1193839791" 
	@${RM} ${OBJECTDIR}/_ext/1193839791/ccm_mode.o.d 
	@${RM} ${OBJECTDIR}/_ext/1193839791/ccm_mode.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1193839791/ccm_mode.o.d" -o ${OBJECTDIR}/_ext/1193839791/ccm_mode.o ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/ccm_mode.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1193839791/cmac_mode.o: ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/cmac_mode.c  .generated_files/21c4e2ea28347bee9b0ac171f1873f36786bdaf1.flag .generated_files/266bf8b248d573397354279739be16fd942da08.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1193839791" 
	@${RM} ${OBJECTDIR}/_ext/1193839791/cmac_mode.o.d 
	@${RM} ${OBJECTDIR}/_ext/1193839791/cmac_mode.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1193839791/cmac_mode.o.d" -o ${OBJECTDIR}/_ext/1193839791/cmac_mode.o ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/cmac_mode.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1193839791/ctr_mode.o: ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/ctr_mode.c  .generated_files/b6cb12010a0230b923c40659643c77454f9859a9.flag .generated_files/266bf8b248d573397354279739be16fd942da08.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1193839791" 
	@${RM} ${OBJECTDIR}/_ext/1193839791/ctr_mode.o.d 
	@${RM} ${OBJECTDIR}/_ext/1193839791/ctr_mode.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1193839791/ctr_mode.o.d" -o ${OBJECTDIR}/_ext/1193839791/ctr_mode.o ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/ctr_mode.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1193839791/ctr_prng.o: ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/ctr_prng.c  .generated_files/269274335c791d8bfb7bbb1dbe3d0d4230ab4a31.flag .generated_files/266bf8b248d573397354279739be16fd942da08.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1193839791" 
	@${RM} ${OBJECTDIR}/_ext/1193839791/ctr_prng.o.d 
	@${RM} ${OBJECTDIR}/_ext/1193839791/ctr_prng.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1193839791/ctr_prng.o.d" -o ${OBJECTDIR}/_ext/1193839791/ctr_prng.o ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/ctr_prng.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1193839791/ecc.o: ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/ecc.c  .generated_files/534a83e08f0854ef4a28814e1f19c67d8a989767.flag .generated_files/266bf8b248d573397354279739be16fd942da08.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1193839791" 
	@${RM} ${OBJECTDIR}/_ext/1193839791/ecc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1193839791/ecc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1193839791/ecc.o.d" -o ${OBJECTDIR}/_ext/1193839791/ecc.o ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/ecc.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1193839791/ecc_dh.o: ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/ecc_dh.c  .generated_files/d65b6e19825402c33e6d8dbdd1895247efc6ba56.flag .generated_files/266bf8b248d573397354279739be16fd942da08.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1193839791" 
	@${RM} ${OBJECTDIR}/_ext/1193839791/ecc_dh.o.d 
	@${RM} ${OBJECTDIR}/_ext/1193839791/ecc_dh.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1193839791/ecc_dh.o.d" -o ${OBJECTDIR}/_ext/1193839791/ecc_dh.o ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/ecc_dh.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1193839791/ecc_dsa.o: ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/ecc_dsa.c  .generated_files/9061f62ab0ff8c9369fcb4b84bc7188598cec5e5.flag .generated_files/266bf8b248d573397354279739be16fd942da08.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1193839791" 
	@${RM} ${OBJECTDIR}/_ext/1193839791/ecc_dsa.o.d 
	@${RM} ${OBJECTDIR}/_ext/1193839791/ecc_dsa.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1193839791/ecc_dsa.o.d" -o ${OBJECTDIR}/_ext/1193839791/ecc_dsa.o ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/ecc_dsa.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1193839791/ecc_platform_specific.o: ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/ecc_platform_specific.c  .generated_files/cb8a2d91ddd8f7d61bb92c13a77398cf175d40aa.flag .generated_files/266bf8b248d573397354279739be16fd942da08.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1193839791" 
	@${RM} ${OBJECTDIR}/_ext/1193839791/ecc_platform_specific.o.d 
	@${RM} ${OBJECTDIR}/_ext/1193839791/ecc_platform_specific.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1193839791/ecc_platform_specific.o.d" -o ${OBJECTDIR}/_ext/1193839791/ecc_platform_specific.o ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/ecc_platform_specific.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1193839791/hmac.o: ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/hmac.c  .generated_files/73a76e2c2a87b85aa5809aa7d07a0c023888ce7e.flag .generated_files/266bf8b248d573397354279739be16fd942da08.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1193839791" 
	@${RM} ${OBJECTDIR}/_ext/1193839791/hmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/1193839791/hmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1193839791/hmac.o.d" -o ${OBJECTDIR}/_ext/1193839791/hmac.o ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/hmac.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1193839791/hmac_prng.o: ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/hmac_prng.c  .generated_files/13a5dda1ab387ae9da23e14ce45a4fa01e902cbc.flag .generated_files/266bf8b248d573397354279739be16fd942da08.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1193839791" 
	@${RM} ${OBJECTDIR}/_ext/1193839791/hmac_prng.o.d 
	@${RM} ${OBJECTDIR}/_ext/1193839791/hmac_prng.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1193839791/hmac_prng.o.d" -o ${OBJECTDIR}/_ext/1193839791/hmac_prng.o ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/hmac_prng.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1193839791/sha256.o: ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/sha256.c  .generated_files/600a9afb93adcd614af4c870689bcf42bea2abb.flag .generated_files/266bf8b248d573397354279739be16fd942da08.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1193839791" 
	@${RM} ${OBJECTDIR}/_ext/1193839791/sha256.o.d 
	@${RM} ${OBJECTDIR}/_ext/1193839791/sha256.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1193839791/sha256.o.d" -o ${OBJECTDIR}/_ext/1193839791/sha256.o ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/sha256.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1193839791/utils.o: ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/utils.c  .generated_files/90dfe2cc7882175c45210aa2297ae92b23e5e606.flag .generated_files/266bf8b248d573397354279739be16fd942da08.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1193839791" 
	@${RM} ${OBJECTDIR}/_ext/1193839791/utils.o.d 
	@${RM} ${OBJECTDIR}/_ext/1193839791/utils.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1193839791/utils.o.d" -o ${OBJECTDIR}/_ext/1193839791/utils.o ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/utils.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/193a5ae13367248145a359e033c3af66fdf7db46.flag .generated_files/266bf8b248d573397354279739be16fd942da08.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/bootloader.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../src/config/same54_xpro/ATSAME54P20A.ld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION) -nostartfiles -nostartfiles -mno-device-startup-code -o dist/${CND_CONF}/${IMAGE_TYPE}/bootloader.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=_min_heap_size=512,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,-DROM_LENGTH=0x10000,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/bootloader.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../src/config/same54_xpro/ATSAME54P20A.ld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION) -nostartfiles -nostartfiles -mno-device-startup-code -o dist/${CND_CONF}/${IMAGE_TYPE}/bootloader.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=512,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,-DROM_LENGTH=0x10000,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}"
	${MP_CC_DIR}\\xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/bootloader.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif

.pre:
	@echo "--------------------------------------"
	@echo "User defined pre-build step: [python ../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/utility/codesigner_cert_utility/codesigner_cert_utility.py ../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/utility/codesigner_cert_utility/ecdsasigner.crt ../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include/aws_boot_codesigner_public_key.h]"
	@python ../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/utility/codesigner_cert_utility/codesigner_cert_utility.py ../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/utility/codesigner_cert_utility/ecdsasigner.crt ../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include/aws_boot_codesigner_public_key.h
	@echo "--------------------------------------"

# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/same54_xpro
	${RM} -r dist/same54_xpro

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
