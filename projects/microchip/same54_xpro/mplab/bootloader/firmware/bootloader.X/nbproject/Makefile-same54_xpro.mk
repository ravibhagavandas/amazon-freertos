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
ProjectDir="D:\X\amazon-freertos\projects\microchip\same54_xpro\mplab\bootloader\firmware\bootloader.X"
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
${OBJECTDIR}/_ext/2097892688/asn1utility.o: ../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/crypto/tinycrypt/asn1utility.c  .generated_files/6caa0f6e53b5dbbbcc634b33d4d58bb5cbbfa4b2.flag .generated_files/e11e291c136925451348a1297815678c3933f543.flag
	@${MKDIR} "${OBJECTDIR}/_ext/2097892688" 
	@${RM} ${OBJECTDIR}/_ext/2097892688/asn1utility.o.d 
	@${RM} ${OBJECTDIR}/_ext/2097892688/asn1utility.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2097892688/asn1utility.o.d" -o ${OBJECTDIR}/_ext/2097892688/asn1utility.o ../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/crypto/tinycrypt/asn1utility.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2097892688/aws_boot_crypto.o: ../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/crypto/tinycrypt/aws_boot_crypto.c  .generated_files/f50db162e71a0caf38c534defe6df7d02aee4d0.flag .generated_files/e11e291c136925451348a1297815678c3933f543.flag
	@${MKDIR} "${OBJECTDIR}/_ext/2097892688" 
	@${RM} ${OBJECTDIR}/_ext/2097892688/aws_boot_crypto.o.d 
	@${RM} ${OBJECTDIR}/_ext/2097892688/aws_boot_crypto.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2097892688/aws_boot_crypto.o.d" -o ${OBJECTDIR}/_ext/2097892688/aws_boot_crypto.o ../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/crypto/tinycrypt/aws_boot_crypto.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/93820448/aws_boot_flash.o: ../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash/aws_boot_flash.c  .generated_files/f0df2230ddf1b71a399cf0c828da2f5cf8a17deb.flag .generated_files/e11e291c136925451348a1297815678c3933f543.flag
	@${MKDIR} "${OBJECTDIR}/_ext/93820448" 
	@${RM} ${OBJECTDIR}/_ext/93820448/aws_boot_flash.o.d 
	@${RM} ${OBJECTDIR}/_ext/93820448/aws_boot_flash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/93820448/aws_boot_flash.o.d" -o ${OBJECTDIR}/_ext/93820448/aws_boot_flash.o ../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash/aws_boot_flash.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/93820448/aws_boot_nvm.o: ../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash/aws_boot_nvm.c  .generated_files/8394d1aae84eaf5c4e22c58caf91cefc406ee107.flag .generated_files/e11e291c136925451348a1297815678c3933f543.flag
	@${MKDIR} "${OBJECTDIR}/_ext/93820448" 
	@${RM} ${OBJECTDIR}/_ext/93820448/aws_boot_nvm.o.d 
	@${RM} ${OBJECTDIR}/_ext/93820448/aws_boot_nvm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/93820448/aws_boot_nvm.o.d" -o ${OBJECTDIR}/_ext/93820448/aws_boot_nvm.o ../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash/aws_boot_nvm.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/93820448/aws_boot_partition.o: ../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash/aws_boot_partition.c  .generated_files/527b9a6b7e204467d2ebdf41f6ff04698284e9fd.flag .generated_files/e11e291c136925451348a1297815678c3933f543.flag
	@${MKDIR} "${OBJECTDIR}/_ext/93820448" 
	@${RM} ${OBJECTDIR}/_ext/93820448/aws_boot_partition.o.d 
	@${RM} ${OBJECTDIR}/_ext/93820448/aws_boot_partition.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/93820448/aws_boot_partition.o.d" -o ${OBJECTDIR}/_ext/93820448/aws_boot_partition.o ../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash/aws_boot_partition.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1561064483/aws_boot_loader.o: ../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/loader/aws_boot_loader.c  .generated_files/4137efd9d138e6ccbc95a34792d1b6d1478b561c.flag .generated_files/e11e291c136925451348a1297815678c3933f543.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1561064483" 
	@${RM} ${OBJECTDIR}/_ext/1561064483/aws_boot_loader.o.d 
	@${RM} ${OBJECTDIR}/_ext/1561064483/aws_boot_loader.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1561064483/aws_boot_loader.o.d" -o ${OBJECTDIR}/_ext/1561064483/aws_boot_loader.o ../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/loader/aws_boot_loader.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1561064483/aws_boot_pal.o: ../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/loader/aws_boot_pal.c  .generated_files/f2283a68f367f8e0c3d135df4484f75419ee848c.flag .generated_files/e11e291c136925451348a1297815678c3933f543.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1561064483" 
	@${RM} ${OBJECTDIR}/_ext/1561064483/aws_boot_pal.o.d 
	@${RM} ${OBJECTDIR}/_ext/1561064483/aws_boot_pal.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1561064483/aws_boot_pal.o.d" -o ${OBJECTDIR}/_ext/1561064483/aws_boot_pal.o ../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/loader/aws_boot_pal.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/619668485/app.o: ../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/source/app.c  .generated_files/8426802ad1c56853f8f23e21768dd43a19139ee1.flag .generated_files/e11e291c136925451348a1297815678c3933f543.flag
	@${MKDIR} "${OBJECTDIR}/_ext/619668485" 
	@${RM} ${OBJECTDIR}/_ext/619668485/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/619668485/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/619668485/app.o.d" -o ${OBJECTDIR}/_ext/619668485/app.o ../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/source/app.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/288800588/bsp.o: ../src/config/same54_xpro/bsp/bsp.c  .generated_files/22a092d12b2acda49ef7d71d8db92c3b1138bc25.flag .generated_files/e11e291c136925451348a1297815678c3933f543.flag
	@${MKDIR} "${OBJECTDIR}/_ext/288800588" 
	@${RM} ${OBJECTDIR}/_ext/288800588/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/288800588/bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/288800588/bsp.o.d" -o ${OBJECTDIR}/_ext/288800588/bsp.o ../src/config/same54_xpro/bsp/bsp.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/425478706/plib_clock.o: ../src/config/same54_xpro/peripheral/clock/plib_clock.c  .generated_files/119dfb070c5bfb63c1fce482ed0fea9f0059cb5c.flag .generated_files/e11e291c136925451348a1297815678c3933f543.flag
	@${MKDIR} "${OBJECTDIR}/_ext/425478706" 
	@${RM} ${OBJECTDIR}/_ext/425478706/plib_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/425478706/plib_clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/425478706/plib_clock.o.d" -o ${OBJECTDIR}/_ext/425478706/plib_clock.o ../src/config/same54_xpro/peripheral/clock/plib_clock.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/13724534/plib_cmcc.o: ../src/config/same54_xpro/peripheral/cmcc/plib_cmcc.c  .generated_files/ffe8ef41b00ae6397080fe02262a36ab672fc0bd.flag .generated_files/e11e291c136925451348a1297815678c3933f543.flag
	@${MKDIR} "${OBJECTDIR}/_ext/13724534" 
	@${RM} ${OBJECTDIR}/_ext/13724534/plib_cmcc.o.d 
	@${RM} ${OBJECTDIR}/_ext/13724534/plib_cmcc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/13724534/plib_cmcc.o.d" -o ${OBJECTDIR}/_ext/13724534/plib_cmcc.o ../src/config/same54_xpro/peripheral/cmcc/plib_cmcc.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/423329220/plib_evsys.o: ../src/config/same54_xpro/peripheral/evsys/plib_evsys.c  .generated_files/e5c30e9e946a21256397160be791dc29001767be.flag .generated_files/e11e291c136925451348a1297815678c3933f543.flag
	@${MKDIR} "${OBJECTDIR}/_ext/423329220" 
	@${RM} ${OBJECTDIR}/_ext/423329220/plib_evsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/423329220/plib_evsys.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/423329220/plib_evsys.o.d" -o ${OBJECTDIR}/_ext/423329220/plib_evsys.o ../src/config/same54_xpro/peripheral/evsys/plib_evsys.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/13387998/plib_nvic.o: ../src/config/same54_xpro/peripheral/nvic/plib_nvic.c  .generated_files/96d62bd095ce62ef95a1281cd2ea809527698408.flag .generated_files/e11e291c136925451348a1297815678c3933f543.flag
	@${MKDIR} "${OBJECTDIR}/_ext/13387998" 
	@${RM} ${OBJECTDIR}/_ext/13387998/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/13387998/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/13387998/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/13387998/plib_nvic.o ../src/config/same54_xpro/peripheral/nvic/plib_nvic.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/593919312/plib_nvmctrl.o: ../src/config/same54_xpro/peripheral/nvmctrl/plib_nvmctrl.c  .generated_files/ecad0719911c766153cf22c53408be22734ed0a.flag .generated_files/e11e291c136925451348a1297815678c3933f543.flag
	@${MKDIR} "${OBJECTDIR}/_ext/593919312" 
	@${RM} ${OBJECTDIR}/_ext/593919312/plib_nvmctrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/593919312/plib_nvmctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/593919312/plib_nvmctrl.o.d" -o ${OBJECTDIR}/_ext/593919312/plib_nvmctrl.o ../src/config/same54_xpro/peripheral/nvmctrl/plib_nvmctrl.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/13334847/plib_port.o: ../src/config/same54_xpro/peripheral/port/plib_port.c  .generated_files/b0852f8055f7a3990d0e2e88723a04ab64d3be7d.flag .generated_files/e11e291c136925451348a1297815678c3933f543.flag
	@${MKDIR} "${OBJECTDIR}/_ext/13334847" 
	@${RM} ${OBJECTDIR}/_ext/13334847/plib_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/13334847/plib_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/13334847/plib_port.o.d" -o ${OBJECTDIR}/_ext/13334847/plib_port.o ../src/config/same54_xpro/peripheral/port/plib_port.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2047131351/plib_sercom2_usart.o: ../src/config/same54_xpro/peripheral/sercom/usart/plib_sercom2_usart.c  .generated_files/71d8ca5d6d34cecee09bf84d2fb66474596293e.flag .generated_files/e11e291c136925451348a1297815678c3933f543.flag
	@${MKDIR} "${OBJECTDIR}/_ext/2047131351" 
	@${RM} ${OBJECTDIR}/_ext/2047131351/plib_sercom2_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/2047131351/plib_sercom2_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2047131351/plib_sercom2_usart.o.d" -o ${OBJECTDIR}/_ext/2047131351/plib_sercom2_usart.o ../src/config/same54_xpro/peripheral/sercom/usart/plib_sercom2_usart.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/970255097/plib_wdt.o: ../src/config/same54_xpro/peripheral/wdt/plib_wdt.c  .generated_files/8df9a76be4971cbde42c4b57a508c4e87cc7e596.flag .generated_files/e11e291c136925451348a1297815678c3933f543.flag
	@${MKDIR} "${OBJECTDIR}/_ext/970255097" 
	@${RM} ${OBJECTDIR}/_ext/970255097/plib_wdt.o.d 
	@${RM} ${OBJECTDIR}/_ext/970255097/plib_wdt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/970255097/plib_wdt.o.d" -o ${OBJECTDIR}/_ext/970255097/plib_wdt.o ../src/config/same54_xpro/peripheral/wdt/plib_wdt.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1619787690/xc32_monitor.o: ../src/config/same54_xpro/stdio/xc32_monitor.c  .generated_files/53ae772064837eb2c33e882dfab85eec5d9e978.flag .generated_files/e11e291c136925451348a1297815678c3933f543.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1619787690" 
	@${RM} ${OBJECTDIR}/_ext/1619787690/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1619787690/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1619787690/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/1619787690/xc32_monitor.o ../src/config/same54_xpro/stdio/xc32_monitor.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1510338148/initialization.o: ../src/config/same54_xpro/initialization.c  .generated_files/85368bddeafa857cd61c46feb27f6e629c7297b7.flag .generated_files/e11e291c136925451348a1297815678c3933f543.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1510338148" 
	@${RM} ${OBJECTDIR}/_ext/1510338148/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1510338148/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1510338148/initialization.o.d" -o ${OBJECTDIR}/_ext/1510338148/initialization.o ../src/config/same54_xpro/initialization.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1510338148/interrupts.o: ../src/config/same54_xpro/interrupts.c  .generated_files/272fd80c0795d02cea2cec2db9627b9cabbde5ff.flag .generated_files/e11e291c136925451348a1297815678c3933f543.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1510338148" 
	@${RM} ${OBJECTDIR}/_ext/1510338148/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1510338148/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1510338148/interrupts.o.d" -o ${OBJECTDIR}/_ext/1510338148/interrupts.o ../src/config/same54_xpro/interrupts.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1510338148/exceptions.o: ../src/config/same54_xpro/exceptions.c  .generated_files/a2feab41f92f5983688204acd979f2f15517b61e.flag .generated_files/e11e291c136925451348a1297815678c3933f543.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1510338148" 
	@${RM} ${OBJECTDIR}/_ext/1510338148/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1510338148/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1510338148/exceptions.o.d" -o ${OBJECTDIR}/_ext/1510338148/exceptions.o ../src/config/same54_xpro/exceptions.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1510338148/startup_xc32.o: ../src/config/same54_xpro/startup_xc32.c  .generated_files/a90fbaf7ab62e3abe6c15397684205b2234eed2d.flag .generated_files/e11e291c136925451348a1297815678c3933f543.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1510338148" 
	@${RM} ${OBJECTDIR}/_ext/1510338148/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1510338148/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1510338148/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/1510338148/startup_xc32.o ../src/config/same54_xpro/startup_xc32.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1510338148/libc_syscalls.o: ../src/config/same54_xpro/libc_syscalls.c  .generated_files/b10d74a3bead5b9bf176c5fe2a7eaf380a617903.flag .generated_files/e11e291c136925451348a1297815678c3933f543.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1510338148" 
	@${RM} ${OBJECTDIR}/_ext/1510338148/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/1510338148/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1510338148/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/1510338148/libc_syscalls.o ../src/config/same54_xpro/libc_syscalls.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1214204543/asn1parse.o: ../../../../../../../libraries/3rdparty/tinycrypt/asn1/asn1parse.c  .generated_files/58a862679c7883c86235cde38459e722e9781ee0.flag .generated_files/e11e291c136925451348a1297815678c3933f543.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1214204543" 
	@${RM} ${OBJECTDIR}/_ext/1214204543/asn1parse.o.d 
	@${RM} ${OBJECTDIR}/_ext/1214204543/asn1parse.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1214204543/asn1parse.o.d" -o ${OBJECTDIR}/_ext/1214204543/asn1parse.o ../../../../../../../libraries/3rdparty/tinycrypt/asn1/asn1parse.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1193839791/aes_decrypt.o: ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/aes_decrypt.c  .generated_files/3c4f7d29eac44ff76e139e4bc39338e362fe46ec.flag .generated_files/e11e291c136925451348a1297815678c3933f543.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1193839791" 
	@${RM} ${OBJECTDIR}/_ext/1193839791/aes_decrypt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1193839791/aes_decrypt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1193839791/aes_decrypt.o.d" -o ${OBJECTDIR}/_ext/1193839791/aes_decrypt.o ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/aes_decrypt.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1193839791/aes_encrypt.o: ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/aes_encrypt.c  .generated_files/861a5416556ea31c65ddf899b35300c13c91379.flag .generated_files/e11e291c136925451348a1297815678c3933f543.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1193839791" 
	@${RM} ${OBJECTDIR}/_ext/1193839791/aes_encrypt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1193839791/aes_encrypt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1193839791/aes_encrypt.o.d" -o ${OBJECTDIR}/_ext/1193839791/aes_encrypt.o ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/aes_encrypt.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1193839791/cbc_mode.o: ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/cbc_mode.c  .generated_files/9cb09b8cbccc613889a4ccef79f8a3630359fc29.flag .generated_files/e11e291c136925451348a1297815678c3933f543.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1193839791" 
	@${RM} ${OBJECTDIR}/_ext/1193839791/cbc_mode.o.d 
	@${RM} ${OBJECTDIR}/_ext/1193839791/cbc_mode.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1193839791/cbc_mode.o.d" -o ${OBJECTDIR}/_ext/1193839791/cbc_mode.o ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/cbc_mode.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1193839791/ccm_mode.o: ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/ccm_mode.c  .generated_files/33a333f7dca9e2bf1f6ddd686e5e247e9bfa2386.flag .generated_files/e11e291c136925451348a1297815678c3933f543.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1193839791" 
	@${RM} ${OBJECTDIR}/_ext/1193839791/ccm_mode.o.d 
	@${RM} ${OBJECTDIR}/_ext/1193839791/ccm_mode.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1193839791/ccm_mode.o.d" -o ${OBJECTDIR}/_ext/1193839791/ccm_mode.o ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/ccm_mode.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1193839791/cmac_mode.o: ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/cmac_mode.c  .generated_files/be8d8e30c4daabdc654aebec6c22aaaea54b7b4a.flag .generated_files/e11e291c136925451348a1297815678c3933f543.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1193839791" 
	@${RM} ${OBJECTDIR}/_ext/1193839791/cmac_mode.o.d 
	@${RM} ${OBJECTDIR}/_ext/1193839791/cmac_mode.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1193839791/cmac_mode.o.d" -o ${OBJECTDIR}/_ext/1193839791/cmac_mode.o ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/cmac_mode.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1193839791/ctr_mode.o: ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/ctr_mode.c  .generated_files/6c9792cd55797aec93778f7d5dbea9e691cbb296.flag .generated_files/e11e291c136925451348a1297815678c3933f543.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1193839791" 
	@${RM} ${OBJECTDIR}/_ext/1193839791/ctr_mode.o.d 
	@${RM} ${OBJECTDIR}/_ext/1193839791/ctr_mode.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1193839791/ctr_mode.o.d" -o ${OBJECTDIR}/_ext/1193839791/ctr_mode.o ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/ctr_mode.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1193839791/ctr_prng.o: ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/ctr_prng.c  .generated_files/77116b038c6684398762f4e8a1a8cc977fb42e98.flag .generated_files/e11e291c136925451348a1297815678c3933f543.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1193839791" 
	@${RM} ${OBJECTDIR}/_ext/1193839791/ctr_prng.o.d 
	@${RM} ${OBJECTDIR}/_ext/1193839791/ctr_prng.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1193839791/ctr_prng.o.d" -o ${OBJECTDIR}/_ext/1193839791/ctr_prng.o ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/ctr_prng.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1193839791/ecc.o: ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/ecc.c  .generated_files/cc57161975c83ec47ccc670980c1eff120c54dcc.flag .generated_files/e11e291c136925451348a1297815678c3933f543.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1193839791" 
	@${RM} ${OBJECTDIR}/_ext/1193839791/ecc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1193839791/ecc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1193839791/ecc.o.d" -o ${OBJECTDIR}/_ext/1193839791/ecc.o ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/ecc.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1193839791/ecc_dh.o: ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/ecc_dh.c  .generated_files/37ddbe921252a5a3452b9fd068bfd69b7b7e0de7.flag .generated_files/e11e291c136925451348a1297815678c3933f543.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1193839791" 
	@${RM} ${OBJECTDIR}/_ext/1193839791/ecc_dh.o.d 
	@${RM} ${OBJECTDIR}/_ext/1193839791/ecc_dh.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1193839791/ecc_dh.o.d" -o ${OBJECTDIR}/_ext/1193839791/ecc_dh.o ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/ecc_dh.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1193839791/ecc_dsa.o: ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/ecc_dsa.c  .generated_files/32191a11cf8a4b83a67021d3f3f4e886b927eb9d.flag .generated_files/e11e291c136925451348a1297815678c3933f543.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1193839791" 
	@${RM} ${OBJECTDIR}/_ext/1193839791/ecc_dsa.o.d 
	@${RM} ${OBJECTDIR}/_ext/1193839791/ecc_dsa.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1193839791/ecc_dsa.o.d" -o ${OBJECTDIR}/_ext/1193839791/ecc_dsa.o ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/ecc_dsa.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1193839791/ecc_platform_specific.o: ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/ecc_platform_specific.c  .generated_files/d36f3ad394c332fe852f8dacf1665994edc1f987.flag .generated_files/e11e291c136925451348a1297815678c3933f543.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1193839791" 
	@${RM} ${OBJECTDIR}/_ext/1193839791/ecc_platform_specific.o.d 
	@${RM} ${OBJECTDIR}/_ext/1193839791/ecc_platform_specific.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1193839791/ecc_platform_specific.o.d" -o ${OBJECTDIR}/_ext/1193839791/ecc_platform_specific.o ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/ecc_platform_specific.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1193839791/hmac.o: ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/hmac.c  .generated_files/2a2977b6b1898cd8a3944942fa0364c89c5ac30e.flag .generated_files/e11e291c136925451348a1297815678c3933f543.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1193839791" 
	@${RM} ${OBJECTDIR}/_ext/1193839791/hmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/1193839791/hmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1193839791/hmac.o.d" -o ${OBJECTDIR}/_ext/1193839791/hmac.o ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/hmac.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1193839791/hmac_prng.o: ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/hmac_prng.c  .generated_files/e4d31427500bc8d6fd431e1a1ebe90b9a1bdaf7c.flag .generated_files/e11e291c136925451348a1297815678c3933f543.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1193839791" 
	@${RM} ${OBJECTDIR}/_ext/1193839791/hmac_prng.o.d 
	@${RM} ${OBJECTDIR}/_ext/1193839791/hmac_prng.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1193839791/hmac_prng.o.d" -o ${OBJECTDIR}/_ext/1193839791/hmac_prng.o ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/hmac_prng.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1193839791/sha256.o: ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/sha256.c  .generated_files/20c4b1c3b18f7705aa8f470c830af2e673cd37e6.flag .generated_files/e11e291c136925451348a1297815678c3933f543.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1193839791" 
	@${RM} ${OBJECTDIR}/_ext/1193839791/sha256.o.d 
	@${RM} ${OBJECTDIR}/_ext/1193839791/sha256.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1193839791/sha256.o.d" -o ${OBJECTDIR}/_ext/1193839791/sha256.o ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/sha256.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1193839791/utils.o: ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/utils.c  .generated_files/977a778be70588da046db4da3c33bc9892bf850e.flag .generated_files/e11e291c136925451348a1297815678c3933f543.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1193839791" 
	@${RM} ${OBJECTDIR}/_ext/1193839791/utils.o.d 
	@${RM} ${OBJECTDIR}/_ext/1193839791/utils.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1193839791/utils.o.d" -o ${OBJECTDIR}/_ext/1193839791/utils.o ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/utils.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/2443aabbe41cc9534ac7cd20f44f6b5cab52683c.flag .generated_files/e11e291c136925451348a1297815678c3933f543.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
else
${OBJECTDIR}/_ext/2097892688/asn1utility.o: ../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/crypto/tinycrypt/asn1utility.c  .generated_files/bef9e6415ba67db4cda966a10aa9357e2830ba94.flag .generated_files/e11e291c136925451348a1297815678c3933f543.flag
	@${MKDIR} "${OBJECTDIR}/_ext/2097892688" 
	@${RM} ${OBJECTDIR}/_ext/2097892688/asn1utility.o.d 
	@${RM} ${OBJECTDIR}/_ext/2097892688/asn1utility.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2097892688/asn1utility.o.d" -o ${OBJECTDIR}/_ext/2097892688/asn1utility.o ../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/crypto/tinycrypt/asn1utility.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2097892688/aws_boot_crypto.o: ../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/crypto/tinycrypt/aws_boot_crypto.c  .generated_files/580cf438bcc02767c86321f7bba12f51282a61cb.flag .generated_files/e11e291c136925451348a1297815678c3933f543.flag
	@${MKDIR} "${OBJECTDIR}/_ext/2097892688" 
	@${RM} ${OBJECTDIR}/_ext/2097892688/aws_boot_crypto.o.d 
	@${RM} ${OBJECTDIR}/_ext/2097892688/aws_boot_crypto.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2097892688/aws_boot_crypto.o.d" -o ${OBJECTDIR}/_ext/2097892688/aws_boot_crypto.o ../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/crypto/tinycrypt/aws_boot_crypto.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/93820448/aws_boot_flash.o: ../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash/aws_boot_flash.c  .generated_files/3b114da12c022ad18ab62078447340625c5c0482.flag .generated_files/e11e291c136925451348a1297815678c3933f543.flag
	@${MKDIR} "${OBJECTDIR}/_ext/93820448" 
	@${RM} ${OBJECTDIR}/_ext/93820448/aws_boot_flash.o.d 
	@${RM} ${OBJECTDIR}/_ext/93820448/aws_boot_flash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/93820448/aws_boot_flash.o.d" -o ${OBJECTDIR}/_ext/93820448/aws_boot_flash.o ../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash/aws_boot_flash.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/93820448/aws_boot_nvm.o: ../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash/aws_boot_nvm.c  .generated_files/9325b7e4b4ba878e143938d36d68e79407a2bddf.flag .generated_files/e11e291c136925451348a1297815678c3933f543.flag
	@${MKDIR} "${OBJECTDIR}/_ext/93820448" 
	@${RM} ${OBJECTDIR}/_ext/93820448/aws_boot_nvm.o.d 
	@${RM} ${OBJECTDIR}/_ext/93820448/aws_boot_nvm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/93820448/aws_boot_nvm.o.d" -o ${OBJECTDIR}/_ext/93820448/aws_boot_nvm.o ../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash/aws_boot_nvm.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/93820448/aws_boot_partition.o: ../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash/aws_boot_partition.c  .generated_files/a01c69ae6b209c811b4ea62567eb51493c0b1e4d.flag .generated_files/e11e291c136925451348a1297815678c3933f543.flag
	@${MKDIR} "${OBJECTDIR}/_ext/93820448" 
	@${RM} ${OBJECTDIR}/_ext/93820448/aws_boot_partition.o.d 
	@${RM} ${OBJECTDIR}/_ext/93820448/aws_boot_partition.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/93820448/aws_boot_partition.o.d" -o ${OBJECTDIR}/_ext/93820448/aws_boot_partition.o ../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash/aws_boot_partition.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1561064483/aws_boot_loader.o: ../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/loader/aws_boot_loader.c  .generated_files/924b30901fce71e9cf982bf7bb8d0dd835206ec8.flag .generated_files/e11e291c136925451348a1297815678c3933f543.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1561064483" 
	@${RM} ${OBJECTDIR}/_ext/1561064483/aws_boot_loader.o.d 
	@${RM} ${OBJECTDIR}/_ext/1561064483/aws_boot_loader.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1561064483/aws_boot_loader.o.d" -o ${OBJECTDIR}/_ext/1561064483/aws_boot_loader.o ../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/loader/aws_boot_loader.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1561064483/aws_boot_pal.o: ../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/loader/aws_boot_pal.c  .generated_files/f2ef65c4b4b1dfdc9b8ae51eee8e55cd18c5ce5.flag .generated_files/e11e291c136925451348a1297815678c3933f543.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1561064483" 
	@${RM} ${OBJECTDIR}/_ext/1561064483/aws_boot_pal.o.d 
	@${RM} ${OBJECTDIR}/_ext/1561064483/aws_boot_pal.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1561064483/aws_boot_pal.o.d" -o ${OBJECTDIR}/_ext/1561064483/aws_boot_pal.o ../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/loader/aws_boot_pal.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/619668485/app.o: ../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/source/app.c  .generated_files/8775e5a3654920cca3456689da005e7dd8078bfb.flag .generated_files/e11e291c136925451348a1297815678c3933f543.flag
	@${MKDIR} "${OBJECTDIR}/_ext/619668485" 
	@${RM} ${OBJECTDIR}/_ext/619668485/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/619668485/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/619668485/app.o.d" -o ${OBJECTDIR}/_ext/619668485/app.o ../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/source/app.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/288800588/bsp.o: ../src/config/same54_xpro/bsp/bsp.c  .generated_files/6f56180e7c7e3645fbd0facdf2ecea2fe60cfda5.flag .generated_files/e11e291c136925451348a1297815678c3933f543.flag
	@${MKDIR} "${OBJECTDIR}/_ext/288800588" 
	@${RM} ${OBJECTDIR}/_ext/288800588/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/288800588/bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/288800588/bsp.o.d" -o ${OBJECTDIR}/_ext/288800588/bsp.o ../src/config/same54_xpro/bsp/bsp.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/425478706/plib_clock.o: ../src/config/same54_xpro/peripheral/clock/plib_clock.c  .generated_files/e36ea121f2d9cb691ad2e68094b818112d0a6f5c.flag .generated_files/e11e291c136925451348a1297815678c3933f543.flag
	@${MKDIR} "${OBJECTDIR}/_ext/425478706" 
	@${RM} ${OBJECTDIR}/_ext/425478706/plib_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/425478706/plib_clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/425478706/plib_clock.o.d" -o ${OBJECTDIR}/_ext/425478706/plib_clock.o ../src/config/same54_xpro/peripheral/clock/plib_clock.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/13724534/plib_cmcc.o: ../src/config/same54_xpro/peripheral/cmcc/plib_cmcc.c  .generated_files/3cba4c9ca5ac8f9b4ac56ac47cd86ebc07d46c3a.flag .generated_files/e11e291c136925451348a1297815678c3933f543.flag
	@${MKDIR} "${OBJECTDIR}/_ext/13724534" 
	@${RM} ${OBJECTDIR}/_ext/13724534/plib_cmcc.o.d 
	@${RM} ${OBJECTDIR}/_ext/13724534/plib_cmcc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/13724534/plib_cmcc.o.d" -o ${OBJECTDIR}/_ext/13724534/plib_cmcc.o ../src/config/same54_xpro/peripheral/cmcc/plib_cmcc.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/423329220/plib_evsys.o: ../src/config/same54_xpro/peripheral/evsys/plib_evsys.c  .generated_files/5210e2ac30c652894a974034ae9e50721e4d0593.flag .generated_files/e11e291c136925451348a1297815678c3933f543.flag
	@${MKDIR} "${OBJECTDIR}/_ext/423329220" 
	@${RM} ${OBJECTDIR}/_ext/423329220/plib_evsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/423329220/plib_evsys.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/423329220/plib_evsys.o.d" -o ${OBJECTDIR}/_ext/423329220/plib_evsys.o ../src/config/same54_xpro/peripheral/evsys/plib_evsys.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/13387998/plib_nvic.o: ../src/config/same54_xpro/peripheral/nvic/plib_nvic.c  .generated_files/7444669f9760151d968fd8260d0cbb744815216b.flag .generated_files/e11e291c136925451348a1297815678c3933f543.flag
	@${MKDIR} "${OBJECTDIR}/_ext/13387998" 
	@${RM} ${OBJECTDIR}/_ext/13387998/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/13387998/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/13387998/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/13387998/plib_nvic.o ../src/config/same54_xpro/peripheral/nvic/plib_nvic.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/593919312/plib_nvmctrl.o: ../src/config/same54_xpro/peripheral/nvmctrl/plib_nvmctrl.c  .generated_files/507a3862bd4959c4158a0e85d6d60f4f13657f46.flag .generated_files/e11e291c136925451348a1297815678c3933f543.flag
	@${MKDIR} "${OBJECTDIR}/_ext/593919312" 
	@${RM} ${OBJECTDIR}/_ext/593919312/plib_nvmctrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/593919312/plib_nvmctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/593919312/plib_nvmctrl.o.d" -o ${OBJECTDIR}/_ext/593919312/plib_nvmctrl.o ../src/config/same54_xpro/peripheral/nvmctrl/plib_nvmctrl.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/13334847/plib_port.o: ../src/config/same54_xpro/peripheral/port/plib_port.c  .generated_files/48acdc3f0d60e928a2b9d5022b67ccc08fdaab78.flag .generated_files/e11e291c136925451348a1297815678c3933f543.flag
	@${MKDIR} "${OBJECTDIR}/_ext/13334847" 
	@${RM} ${OBJECTDIR}/_ext/13334847/plib_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/13334847/plib_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/13334847/plib_port.o.d" -o ${OBJECTDIR}/_ext/13334847/plib_port.o ../src/config/same54_xpro/peripheral/port/plib_port.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2047131351/plib_sercom2_usart.o: ../src/config/same54_xpro/peripheral/sercom/usart/plib_sercom2_usart.c  .generated_files/42eb7b8065942f3fdf22c3e28250d3d86735f64.flag .generated_files/e11e291c136925451348a1297815678c3933f543.flag
	@${MKDIR} "${OBJECTDIR}/_ext/2047131351" 
	@${RM} ${OBJECTDIR}/_ext/2047131351/plib_sercom2_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/2047131351/plib_sercom2_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2047131351/plib_sercom2_usart.o.d" -o ${OBJECTDIR}/_ext/2047131351/plib_sercom2_usart.o ../src/config/same54_xpro/peripheral/sercom/usart/plib_sercom2_usart.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/970255097/plib_wdt.o: ../src/config/same54_xpro/peripheral/wdt/plib_wdt.c  .generated_files/f590d1c376a113c04220b9e1b7876c221dc32a09.flag .generated_files/e11e291c136925451348a1297815678c3933f543.flag
	@${MKDIR} "${OBJECTDIR}/_ext/970255097" 
	@${RM} ${OBJECTDIR}/_ext/970255097/plib_wdt.o.d 
	@${RM} ${OBJECTDIR}/_ext/970255097/plib_wdt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/970255097/plib_wdt.o.d" -o ${OBJECTDIR}/_ext/970255097/plib_wdt.o ../src/config/same54_xpro/peripheral/wdt/plib_wdt.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1619787690/xc32_monitor.o: ../src/config/same54_xpro/stdio/xc32_monitor.c  .generated_files/bbf7514b3f08facd2199a6254ff19bcb18ceea44.flag .generated_files/e11e291c136925451348a1297815678c3933f543.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1619787690" 
	@${RM} ${OBJECTDIR}/_ext/1619787690/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1619787690/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1619787690/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/1619787690/xc32_monitor.o ../src/config/same54_xpro/stdio/xc32_monitor.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1510338148/initialization.o: ../src/config/same54_xpro/initialization.c  .generated_files/f92d032955326884db00409b1e319087617ee21b.flag .generated_files/e11e291c136925451348a1297815678c3933f543.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1510338148" 
	@${RM} ${OBJECTDIR}/_ext/1510338148/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1510338148/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1510338148/initialization.o.d" -o ${OBJECTDIR}/_ext/1510338148/initialization.o ../src/config/same54_xpro/initialization.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1510338148/interrupts.o: ../src/config/same54_xpro/interrupts.c  .generated_files/911e27e0fae02c1b54e742bc5b5741ffaf48c813.flag .generated_files/e11e291c136925451348a1297815678c3933f543.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1510338148" 
	@${RM} ${OBJECTDIR}/_ext/1510338148/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1510338148/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1510338148/interrupts.o.d" -o ${OBJECTDIR}/_ext/1510338148/interrupts.o ../src/config/same54_xpro/interrupts.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1510338148/exceptions.o: ../src/config/same54_xpro/exceptions.c  .generated_files/e91f53d81dcceb8581b961928393ac200e28030a.flag .generated_files/e11e291c136925451348a1297815678c3933f543.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1510338148" 
	@${RM} ${OBJECTDIR}/_ext/1510338148/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1510338148/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1510338148/exceptions.o.d" -o ${OBJECTDIR}/_ext/1510338148/exceptions.o ../src/config/same54_xpro/exceptions.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1510338148/startup_xc32.o: ../src/config/same54_xpro/startup_xc32.c  .generated_files/b8f770f1f64f7e4044bc52bbd1036e6706c93577.flag .generated_files/e11e291c136925451348a1297815678c3933f543.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1510338148" 
	@${RM} ${OBJECTDIR}/_ext/1510338148/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1510338148/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1510338148/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/1510338148/startup_xc32.o ../src/config/same54_xpro/startup_xc32.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1510338148/libc_syscalls.o: ../src/config/same54_xpro/libc_syscalls.c  .generated_files/2b2ffb1f9a0cdedca81c95c199add24a500592c8.flag .generated_files/e11e291c136925451348a1297815678c3933f543.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1510338148" 
	@${RM} ${OBJECTDIR}/_ext/1510338148/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/1510338148/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1510338148/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/1510338148/libc_syscalls.o ../src/config/same54_xpro/libc_syscalls.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1214204543/asn1parse.o: ../../../../../../../libraries/3rdparty/tinycrypt/asn1/asn1parse.c  .generated_files/fc4a3f418ef326d6f69627f1fc919e07ad247196.flag .generated_files/e11e291c136925451348a1297815678c3933f543.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1214204543" 
	@${RM} ${OBJECTDIR}/_ext/1214204543/asn1parse.o.d 
	@${RM} ${OBJECTDIR}/_ext/1214204543/asn1parse.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1214204543/asn1parse.o.d" -o ${OBJECTDIR}/_ext/1214204543/asn1parse.o ../../../../../../../libraries/3rdparty/tinycrypt/asn1/asn1parse.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1193839791/aes_decrypt.o: ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/aes_decrypt.c  .generated_files/1be237fd0181f0f2ef204146d08af0bc1c45bd55.flag .generated_files/e11e291c136925451348a1297815678c3933f543.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1193839791" 
	@${RM} ${OBJECTDIR}/_ext/1193839791/aes_decrypt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1193839791/aes_decrypt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1193839791/aes_decrypt.o.d" -o ${OBJECTDIR}/_ext/1193839791/aes_decrypt.o ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/aes_decrypt.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1193839791/aes_encrypt.o: ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/aes_encrypt.c  .generated_files/27eed584e7f0e334122df7669ba87d5b343706ae.flag .generated_files/e11e291c136925451348a1297815678c3933f543.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1193839791" 
	@${RM} ${OBJECTDIR}/_ext/1193839791/aes_encrypt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1193839791/aes_encrypt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1193839791/aes_encrypt.o.d" -o ${OBJECTDIR}/_ext/1193839791/aes_encrypt.o ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/aes_encrypt.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1193839791/cbc_mode.o: ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/cbc_mode.c  .generated_files/16ec2082869dca6b6dd5c63376ec8fb1b79dc71d.flag .generated_files/e11e291c136925451348a1297815678c3933f543.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1193839791" 
	@${RM} ${OBJECTDIR}/_ext/1193839791/cbc_mode.o.d 
	@${RM} ${OBJECTDIR}/_ext/1193839791/cbc_mode.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1193839791/cbc_mode.o.d" -o ${OBJECTDIR}/_ext/1193839791/cbc_mode.o ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/cbc_mode.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1193839791/ccm_mode.o: ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/ccm_mode.c  .generated_files/3cbcf778094a593bb1af2ef611723c1395d0ed26.flag .generated_files/e11e291c136925451348a1297815678c3933f543.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1193839791" 
	@${RM} ${OBJECTDIR}/_ext/1193839791/ccm_mode.o.d 
	@${RM} ${OBJECTDIR}/_ext/1193839791/ccm_mode.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1193839791/ccm_mode.o.d" -o ${OBJECTDIR}/_ext/1193839791/ccm_mode.o ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/ccm_mode.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1193839791/cmac_mode.o: ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/cmac_mode.c  .generated_files/5a97d72c0c706785bee119b3916b37e06a7ec3cf.flag .generated_files/e11e291c136925451348a1297815678c3933f543.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1193839791" 
	@${RM} ${OBJECTDIR}/_ext/1193839791/cmac_mode.o.d 
	@${RM} ${OBJECTDIR}/_ext/1193839791/cmac_mode.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1193839791/cmac_mode.o.d" -o ${OBJECTDIR}/_ext/1193839791/cmac_mode.o ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/cmac_mode.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1193839791/ctr_mode.o: ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/ctr_mode.c  .generated_files/4287669288332a32bb31471ba26cfb3f75577739.flag .generated_files/e11e291c136925451348a1297815678c3933f543.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1193839791" 
	@${RM} ${OBJECTDIR}/_ext/1193839791/ctr_mode.o.d 
	@${RM} ${OBJECTDIR}/_ext/1193839791/ctr_mode.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1193839791/ctr_mode.o.d" -o ${OBJECTDIR}/_ext/1193839791/ctr_mode.o ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/ctr_mode.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1193839791/ctr_prng.o: ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/ctr_prng.c  .generated_files/73f0ce952075d08e7685e017cb6a4527a1a7788e.flag .generated_files/e11e291c136925451348a1297815678c3933f543.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1193839791" 
	@${RM} ${OBJECTDIR}/_ext/1193839791/ctr_prng.o.d 
	@${RM} ${OBJECTDIR}/_ext/1193839791/ctr_prng.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1193839791/ctr_prng.o.d" -o ${OBJECTDIR}/_ext/1193839791/ctr_prng.o ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/ctr_prng.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1193839791/ecc.o: ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/ecc.c  .generated_files/def0a715b8e879b5de4709b1fd90b123bd36d3a0.flag .generated_files/e11e291c136925451348a1297815678c3933f543.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1193839791" 
	@${RM} ${OBJECTDIR}/_ext/1193839791/ecc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1193839791/ecc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1193839791/ecc.o.d" -o ${OBJECTDIR}/_ext/1193839791/ecc.o ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/ecc.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1193839791/ecc_dh.o: ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/ecc_dh.c  .generated_files/dec1afe20aed948956ee341b3872a4a4a1b2179d.flag .generated_files/e11e291c136925451348a1297815678c3933f543.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1193839791" 
	@${RM} ${OBJECTDIR}/_ext/1193839791/ecc_dh.o.d 
	@${RM} ${OBJECTDIR}/_ext/1193839791/ecc_dh.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1193839791/ecc_dh.o.d" -o ${OBJECTDIR}/_ext/1193839791/ecc_dh.o ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/ecc_dh.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1193839791/ecc_dsa.o: ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/ecc_dsa.c  .generated_files/b688eab91a059ae8de43ff69ab66d932652a31ed.flag .generated_files/e11e291c136925451348a1297815678c3933f543.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1193839791" 
	@${RM} ${OBJECTDIR}/_ext/1193839791/ecc_dsa.o.d 
	@${RM} ${OBJECTDIR}/_ext/1193839791/ecc_dsa.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1193839791/ecc_dsa.o.d" -o ${OBJECTDIR}/_ext/1193839791/ecc_dsa.o ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/ecc_dsa.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1193839791/ecc_platform_specific.o: ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/ecc_platform_specific.c  .generated_files/fe42db0dd9c3f60ec86bcdb9bf2c9e6c299b8ed5.flag .generated_files/e11e291c136925451348a1297815678c3933f543.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1193839791" 
	@${RM} ${OBJECTDIR}/_ext/1193839791/ecc_platform_specific.o.d 
	@${RM} ${OBJECTDIR}/_ext/1193839791/ecc_platform_specific.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1193839791/ecc_platform_specific.o.d" -o ${OBJECTDIR}/_ext/1193839791/ecc_platform_specific.o ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/ecc_platform_specific.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1193839791/hmac.o: ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/hmac.c  .generated_files/eaad0012e25234bebdfac041eade56ac646c6a72.flag .generated_files/e11e291c136925451348a1297815678c3933f543.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1193839791" 
	@${RM} ${OBJECTDIR}/_ext/1193839791/hmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/1193839791/hmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1193839791/hmac.o.d" -o ${OBJECTDIR}/_ext/1193839791/hmac.o ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/hmac.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1193839791/hmac_prng.o: ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/hmac_prng.c  .generated_files/f18c371e1ce6dc15012ef7151f55ec306c14715.flag .generated_files/e11e291c136925451348a1297815678c3933f543.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1193839791" 
	@${RM} ${OBJECTDIR}/_ext/1193839791/hmac_prng.o.d 
	@${RM} ${OBJECTDIR}/_ext/1193839791/hmac_prng.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1193839791/hmac_prng.o.d" -o ${OBJECTDIR}/_ext/1193839791/hmac_prng.o ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/hmac_prng.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1193839791/sha256.o: ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/sha256.c  .generated_files/a1a9a2e07ab4259fa25f82a52de009cf902ddd4d.flag .generated_files/e11e291c136925451348a1297815678c3933f543.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1193839791" 
	@${RM} ${OBJECTDIR}/_ext/1193839791/sha256.o.d 
	@${RM} ${OBJECTDIR}/_ext/1193839791/sha256.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1193839791/sha256.o.d" -o ${OBJECTDIR}/_ext/1193839791/sha256.o ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/sha256.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1193839791/utils.o: ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/utils.c  .generated_files/2b4e259b8183d20a5a46ff9d1ce888674c25e3e7.flag .generated_files/e11e291c136925451348a1297815678c3933f543.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1193839791" 
	@${RM} ${OBJECTDIR}/_ext/1193839791/utils.o.d 
	@${RM} ${OBJECTDIR}/_ext/1193839791/utils.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/same54_xpro" -I"../src/packs/ATSAME54P20A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/same54_xpro/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1193839791/utils.o.d" -o ${OBJECTDIR}/_ext/1193839791/utils.o ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/utils.c    -DXPRJ_same54_xpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/9548c14ecb8d14c4b000d7909b6c476a7eee114f.flag .generated_files/e11e291c136925451348a1297815678c3933f543.flag
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
