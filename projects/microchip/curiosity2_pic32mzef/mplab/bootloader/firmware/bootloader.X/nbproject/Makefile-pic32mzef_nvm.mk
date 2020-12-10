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
ifeq "$(wildcard nbproject/Makefile-local-pic32mzef_nvm.mk)" "nbproject/Makefile-local-pic32mzef_nvm.mk"
include nbproject/Makefile-local-pic32mzef_nvm.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=pic32mzef_nvm
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
SOURCEFILES_QUOTED_IF_SPACED=../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/crypto/tinycrypt/asn1utility.c ../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/crypto/tinycrypt/aws_boot_crypto.c ../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/flash/aws_boot_flash.c ../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/flash/aws_boot_nvm.c ../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/flash/aws_boot_partition.c ../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/loader/aws_boot_loader.c ../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/loader/aws_boot_pal.c ../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/common/source/app.c ../src/config/pic32mzef_nvm/bsp/bsp.c ../src/config/pic32mzef_nvm/peripheral/clk/plib_clk.c ../src/config/pic32mzef_nvm/peripheral/evic/plib_evic.c ../src/config/pic32mzef_nvm/peripheral/gpio/plib_gpio.c ../src/config/pic32mzef_nvm/peripheral/nvm/plib_nvm.c ../src/config/pic32mzef_nvm/peripheral/uart/plib_uart1.c ../src/config/pic32mzef_nvm/stdio/xc32_monitor.c ../src/config/pic32mzef_nvm/system/int/src/sys_int.c ../src/config/pic32mzef_nvm/initialization.c ../src/config/pic32mzef_nvm/interrupts.c ../src/config/pic32mzef_nvm/exceptions.c ../../../../../../../libraries/3rdparty/tinycrypt/asn1/asn1parse.c ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/aes_decrypt.c ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/aes_encrypt.c ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/cbc_mode.c ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/ccm_mode.c ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/cmac_mode.c ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/ctr_mode.c ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/ctr_prng.c ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/ecc.c ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/ecc_dh.c ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/ecc_dsa.c ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/ecc_platform_specific.c ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/hmac.c ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/hmac_prng.c ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/sha256.c ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/utils.c ../src/main.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/671897462/asn1utility.o ${OBJECTDIR}/_ext/671897462/aws_boot_crypto.o ${OBJECTDIR}/_ext/15205594/aws_boot_flash.o ${OBJECTDIR}/_ext/15205594/aws_boot_nvm.o ${OBJECTDIR}/_ext/15205594/aws_boot_partition.o ${OBJECTDIR}/_ext/645904489/aws_boot_loader.o ${OBJECTDIR}/_ext/645904489/aws_boot_pal.o ${OBJECTDIR}/_ext/1657551691/app.o ${OBJECTDIR}/_ext/1530740410/bsp.o ${OBJECTDIR}/_ext/1950090572/plib_clk.o ${OBJECTDIR}/_ext/323196359/plib_evic.o ${OBJECTDIR}/_ext/323142531/plib_gpio.o ${OBJECTDIR}/_ext/1950079689/plib_nvm.o ${OBJECTDIR}/_ext/322739588/plib_uart1.o ${OBJECTDIR}/_ext/2116527036/xc32_monitor.o ${OBJECTDIR}/_ext/128587639/sys_int.o ${OBJECTDIR}/_ext/770344950/initialization.o ${OBJECTDIR}/_ext/770344950/interrupts.o ${OBJECTDIR}/_ext/770344950/exceptions.o ${OBJECTDIR}/_ext/1214204543/asn1parse.o ${OBJECTDIR}/_ext/1193839791/aes_decrypt.o ${OBJECTDIR}/_ext/1193839791/aes_encrypt.o ${OBJECTDIR}/_ext/1193839791/cbc_mode.o ${OBJECTDIR}/_ext/1193839791/ccm_mode.o ${OBJECTDIR}/_ext/1193839791/cmac_mode.o ${OBJECTDIR}/_ext/1193839791/ctr_mode.o ${OBJECTDIR}/_ext/1193839791/ctr_prng.o ${OBJECTDIR}/_ext/1193839791/ecc.o ${OBJECTDIR}/_ext/1193839791/ecc_dh.o ${OBJECTDIR}/_ext/1193839791/ecc_dsa.o ${OBJECTDIR}/_ext/1193839791/ecc_platform_specific.o ${OBJECTDIR}/_ext/1193839791/hmac.o ${OBJECTDIR}/_ext/1193839791/hmac_prng.o ${OBJECTDIR}/_ext/1193839791/sha256.o ${OBJECTDIR}/_ext/1193839791/utils.o ${OBJECTDIR}/_ext/1360937237/main.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/671897462/asn1utility.o.d ${OBJECTDIR}/_ext/671897462/aws_boot_crypto.o.d ${OBJECTDIR}/_ext/15205594/aws_boot_flash.o.d ${OBJECTDIR}/_ext/15205594/aws_boot_nvm.o.d ${OBJECTDIR}/_ext/15205594/aws_boot_partition.o.d ${OBJECTDIR}/_ext/645904489/aws_boot_loader.o.d ${OBJECTDIR}/_ext/645904489/aws_boot_pal.o.d ${OBJECTDIR}/_ext/1657551691/app.o.d ${OBJECTDIR}/_ext/1530740410/bsp.o.d ${OBJECTDIR}/_ext/1950090572/plib_clk.o.d ${OBJECTDIR}/_ext/323196359/plib_evic.o.d ${OBJECTDIR}/_ext/323142531/plib_gpio.o.d ${OBJECTDIR}/_ext/1950079689/plib_nvm.o.d ${OBJECTDIR}/_ext/322739588/plib_uart1.o.d ${OBJECTDIR}/_ext/2116527036/xc32_monitor.o.d ${OBJECTDIR}/_ext/128587639/sys_int.o.d ${OBJECTDIR}/_ext/770344950/initialization.o.d ${OBJECTDIR}/_ext/770344950/interrupts.o.d ${OBJECTDIR}/_ext/770344950/exceptions.o.d ${OBJECTDIR}/_ext/1214204543/asn1parse.o.d ${OBJECTDIR}/_ext/1193839791/aes_decrypt.o.d ${OBJECTDIR}/_ext/1193839791/aes_encrypt.o.d ${OBJECTDIR}/_ext/1193839791/cbc_mode.o.d ${OBJECTDIR}/_ext/1193839791/ccm_mode.o.d ${OBJECTDIR}/_ext/1193839791/cmac_mode.o.d ${OBJECTDIR}/_ext/1193839791/ctr_mode.o.d ${OBJECTDIR}/_ext/1193839791/ctr_prng.o.d ${OBJECTDIR}/_ext/1193839791/ecc.o.d ${OBJECTDIR}/_ext/1193839791/ecc_dh.o.d ${OBJECTDIR}/_ext/1193839791/ecc_dsa.o.d ${OBJECTDIR}/_ext/1193839791/ecc_platform_specific.o.d ${OBJECTDIR}/_ext/1193839791/hmac.o.d ${OBJECTDIR}/_ext/1193839791/hmac_prng.o.d ${OBJECTDIR}/_ext/1193839791/sha256.o.d ${OBJECTDIR}/_ext/1193839791/utils.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/671897462/asn1utility.o ${OBJECTDIR}/_ext/671897462/aws_boot_crypto.o ${OBJECTDIR}/_ext/15205594/aws_boot_flash.o ${OBJECTDIR}/_ext/15205594/aws_boot_nvm.o ${OBJECTDIR}/_ext/15205594/aws_boot_partition.o ${OBJECTDIR}/_ext/645904489/aws_boot_loader.o ${OBJECTDIR}/_ext/645904489/aws_boot_pal.o ${OBJECTDIR}/_ext/1657551691/app.o ${OBJECTDIR}/_ext/1530740410/bsp.o ${OBJECTDIR}/_ext/1950090572/plib_clk.o ${OBJECTDIR}/_ext/323196359/plib_evic.o ${OBJECTDIR}/_ext/323142531/plib_gpio.o ${OBJECTDIR}/_ext/1950079689/plib_nvm.o ${OBJECTDIR}/_ext/322739588/plib_uart1.o ${OBJECTDIR}/_ext/2116527036/xc32_monitor.o ${OBJECTDIR}/_ext/128587639/sys_int.o ${OBJECTDIR}/_ext/770344950/initialization.o ${OBJECTDIR}/_ext/770344950/interrupts.o ${OBJECTDIR}/_ext/770344950/exceptions.o ${OBJECTDIR}/_ext/1214204543/asn1parse.o ${OBJECTDIR}/_ext/1193839791/aes_decrypt.o ${OBJECTDIR}/_ext/1193839791/aes_encrypt.o ${OBJECTDIR}/_ext/1193839791/cbc_mode.o ${OBJECTDIR}/_ext/1193839791/ccm_mode.o ${OBJECTDIR}/_ext/1193839791/cmac_mode.o ${OBJECTDIR}/_ext/1193839791/ctr_mode.o ${OBJECTDIR}/_ext/1193839791/ctr_prng.o ${OBJECTDIR}/_ext/1193839791/ecc.o ${OBJECTDIR}/_ext/1193839791/ecc_dh.o ${OBJECTDIR}/_ext/1193839791/ecc_dsa.o ${OBJECTDIR}/_ext/1193839791/ecc_platform_specific.o ${OBJECTDIR}/_ext/1193839791/hmac.o ${OBJECTDIR}/_ext/1193839791/hmac_prng.o ${OBJECTDIR}/_ext/1193839791/sha256.o ${OBJECTDIR}/_ext/1193839791/utils.o ${OBJECTDIR}/_ext/1360937237/main.o

# Source Files
SOURCEFILES=../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/crypto/tinycrypt/asn1utility.c ../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/crypto/tinycrypt/aws_boot_crypto.c ../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/flash/aws_boot_flash.c ../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/flash/aws_boot_nvm.c ../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/flash/aws_boot_partition.c ../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/loader/aws_boot_loader.c ../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/loader/aws_boot_pal.c ../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/common/source/app.c ../src/config/pic32mzef_nvm/bsp/bsp.c ../src/config/pic32mzef_nvm/peripheral/clk/plib_clk.c ../src/config/pic32mzef_nvm/peripheral/evic/plib_evic.c ../src/config/pic32mzef_nvm/peripheral/gpio/plib_gpio.c ../src/config/pic32mzef_nvm/peripheral/nvm/plib_nvm.c ../src/config/pic32mzef_nvm/peripheral/uart/plib_uart1.c ../src/config/pic32mzef_nvm/stdio/xc32_monitor.c ../src/config/pic32mzef_nvm/system/int/src/sys_int.c ../src/config/pic32mzef_nvm/initialization.c ../src/config/pic32mzef_nvm/interrupts.c ../src/config/pic32mzef_nvm/exceptions.c ../../../../../../../libraries/3rdparty/tinycrypt/asn1/asn1parse.c ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/aes_decrypt.c ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/aes_encrypt.c ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/cbc_mode.c ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/ccm_mode.c ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/cmac_mode.c ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/ctr_mode.c ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/ctr_prng.c ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/ecc.c ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/ecc_dh.c ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/ecc_dsa.c ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/ecc_platform_specific.c ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/hmac.c ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/hmac_prng.c ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/sha256.c ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/utils.c ../src/main.c



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

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-pic32mzef_nvm.mk dist/${CND_CONF}/${IMAGE_TYPE}/bootloader.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MZ2048EFM144
MP_LINKER_FILE_OPTION=,--script="..\..\..\..\..\..\..\vendors\microchip\boards\curiosity2_pic32mzef\bootloader\linker_script\btl_mz.ld"
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
${OBJECTDIR}/_ext/671897462/asn1utility.o: ../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/crypto/tinycrypt/asn1utility.c  .generated_files/27ac16f4d9511cfae1fb7923560d376563be098.flag .generated_files/6bfb4de4ca679cf472869cc51aabb004006f99f0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/671897462" 
	@${RM} ${OBJECTDIR}/_ext/671897462/asn1utility.o.d 
	@${RM} ${OBJECTDIR}/_ext/671897462/asn1utility.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzef_nvm" -I"../src/packs/PIC32MZ2048EFM144_DFP" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/671897462/asn1utility.o.d" -o ${OBJECTDIR}/_ext/671897462/asn1utility.o ../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/crypto/tinycrypt/asn1utility.c    -DXPRJ_pic32mzef_nvm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/671897462/aws_boot_crypto.o: ../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/crypto/tinycrypt/aws_boot_crypto.c  .generated_files/17d2da272e0571d322833883c53ffed5e1251ceb.flag .generated_files/6bfb4de4ca679cf472869cc51aabb004006f99f0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/671897462" 
	@${RM} ${OBJECTDIR}/_ext/671897462/aws_boot_crypto.o.d 
	@${RM} ${OBJECTDIR}/_ext/671897462/aws_boot_crypto.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzef_nvm" -I"../src/packs/PIC32MZ2048EFM144_DFP" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/671897462/aws_boot_crypto.o.d" -o ${OBJECTDIR}/_ext/671897462/aws_boot_crypto.o ../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/crypto/tinycrypt/aws_boot_crypto.c    -DXPRJ_pic32mzef_nvm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/15205594/aws_boot_flash.o: ../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/flash/aws_boot_flash.c  .generated_files/7abe82a526caf7ddcba7b7bb67c346dee213aaec.flag .generated_files/6bfb4de4ca679cf472869cc51aabb004006f99f0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/15205594" 
	@${RM} ${OBJECTDIR}/_ext/15205594/aws_boot_flash.o.d 
	@${RM} ${OBJECTDIR}/_ext/15205594/aws_boot_flash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzef_nvm" -I"../src/packs/PIC32MZ2048EFM144_DFP" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/15205594/aws_boot_flash.o.d" -o ${OBJECTDIR}/_ext/15205594/aws_boot_flash.o ../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/flash/aws_boot_flash.c    -DXPRJ_pic32mzef_nvm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/15205594/aws_boot_nvm.o: ../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/flash/aws_boot_nvm.c  .generated_files/1a0fac4fb464ea9d5733dfeb523ebec232a0e1dc.flag .generated_files/6bfb4de4ca679cf472869cc51aabb004006f99f0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/15205594" 
	@${RM} ${OBJECTDIR}/_ext/15205594/aws_boot_nvm.o.d 
	@${RM} ${OBJECTDIR}/_ext/15205594/aws_boot_nvm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzef_nvm" -I"../src/packs/PIC32MZ2048EFM144_DFP" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/15205594/aws_boot_nvm.o.d" -o ${OBJECTDIR}/_ext/15205594/aws_boot_nvm.o ../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/flash/aws_boot_nvm.c    -DXPRJ_pic32mzef_nvm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/15205594/aws_boot_partition.o: ../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/flash/aws_boot_partition.c  .generated_files/4a1748d6f253fdd8cf8ff1d20ec7bafa7277e8b3.flag .generated_files/6bfb4de4ca679cf472869cc51aabb004006f99f0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/15205594" 
	@${RM} ${OBJECTDIR}/_ext/15205594/aws_boot_partition.o.d 
	@${RM} ${OBJECTDIR}/_ext/15205594/aws_boot_partition.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzef_nvm" -I"../src/packs/PIC32MZ2048EFM144_DFP" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/15205594/aws_boot_partition.o.d" -o ${OBJECTDIR}/_ext/15205594/aws_boot_partition.o ../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/flash/aws_boot_partition.c    -DXPRJ_pic32mzef_nvm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/645904489/aws_boot_loader.o: ../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/loader/aws_boot_loader.c  .generated_files/f6b6204aaff5e263786c969939c68d3c214781d2.flag .generated_files/6bfb4de4ca679cf472869cc51aabb004006f99f0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/645904489" 
	@${RM} ${OBJECTDIR}/_ext/645904489/aws_boot_loader.o.d 
	@${RM} ${OBJECTDIR}/_ext/645904489/aws_boot_loader.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzef_nvm" -I"../src/packs/PIC32MZ2048EFM144_DFP" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/645904489/aws_boot_loader.o.d" -o ${OBJECTDIR}/_ext/645904489/aws_boot_loader.o ../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/loader/aws_boot_loader.c    -DXPRJ_pic32mzef_nvm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/645904489/aws_boot_pal.o: ../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/loader/aws_boot_pal.c  .generated_files/ad2c54d05f9f19bf34b26e183aef4b1ab78ff4ba.flag .generated_files/6bfb4de4ca679cf472869cc51aabb004006f99f0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/645904489" 
	@${RM} ${OBJECTDIR}/_ext/645904489/aws_boot_pal.o.d 
	@${RM} ${OBJECTDIR}/_ext/645904489/aws_boot_pal.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzef_nvm" -I"../src/packs/PIC32MZ2048EFM144_DFP" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/645904489/aws_boot_pal.o.d" -o ${OBJECTDIR}/_ext/645904489/aws_boot_pal.o ../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/loader/aws_boot_pal.c    -DXPRJ_pic32mzef_nvm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1657551691/app.o: ../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/common/source/app.c  .generated_files/ccefa4d13c68a6d8a6106e35149591905cf443f7.flag .generated_files/6bfb4de4ca679cf472869cc51aabb004006f99f0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1657551691" 
	@${RM} ${OBJECTDIR}/_ext/1657551691/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1657551691/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzef_nvm" -I"../src/packs/PIC32MZ2048EFM144_DFP" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1657551691/app.o.d" -o ${OBJECTDIR}/_ext/1657551691/app.o ../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/common/source/app.c    -DXPRJ_pic32mzef_nvm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1530740410/bsp.o: ../src/config/pic32mzef_nvm/bsp/bsp.c  .generated_files/25e27c3202600f939ec2b21694a657a24a15378e.flag .generated_files/6bfb4de4ca679cf472869cc51aabb004006f99f0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1530740410" 
	@${RM} ${OBJECTDIR}/_ext/1530740410/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1530740410/bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzef_nvm" -I"../src/packs/PIC32MZ2048EFM144_DFP" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1530740410/bsp.o.d" -o ${OBJECTDIR}/_ext/1530740410/bsp.o ../src/config/pic32mzef_nvm/bsp/bsp.c    -DXPRJ_pic32mzef_nvm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1950090572/plib_clk.o: ../src/config/pic32mzef_nvm/peripheral/clk/plib_clk.c  .generated_files/f86e48067b9a51f340124da30ce5b607a2bc9464.flag .generated_files/6bfb4de4ca679cf472869cc51aabb004006f99f0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1950090572" 
	@${RM} ${OBJECTDIR}/_ext/1950090572/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/1950090572/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzef_nvm" -I"../src/packs/PIC32MZ2048EFM144_DFP" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1950090572/plib_clk.o.d" -o ${OBJECTDIR}/_ext/1950090572/plib_clk.o ../src/config/pic32mzef_nvm/peripheral/clk/plib_clk.c    -DXPRJ_pic32mzef_nvm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/323196359/plib_evic.o: ../src/config/pic32mzef_nvm/peripheral/evic/plib_evic.c  .generated_files/5c9b5d8c993aac940a40518b5d6eb453370034b7.flag .generated_files/6bfb4de4ca679cf472869cc51aabb004006f99f0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/323196359" 
	@${RM} ${OBJECTDIR}/_ext/323196359/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/323196359/plib_evic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzef_nvm" -I"../src/packs/PIC32MZ2048EFM144_DFP" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/323196359/plib_evic.o.d" -o ${OBJECTDIR}/_ext/323196359/plib_evic.o ../src/config/pic32mzef_nvm/peripheral/evic/plib_evic.c    -DXPRJ_pic32mzef_nvm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/323142531/plib_gpio.o: ../src/config/pic32mzef_nvm/peripheral/gpio/plib_gpio.c  .generated_files/cedfea68dcd4c9a79a910b432cadb52fe0f34d47.flag .generated_files/6bfb4de4ca679cf472869cc51aabb004006f99f0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/323142531" 
	@${RM} ${OBJECTDIR}/_ext/323142531/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/323142531/plib_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzef_nvm" -I"../src/packs/PIC32MZ2048EFM144_DFP" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/323142531/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/323142531/plib_gpio.o ../src/config/pic32mzef_nvm/peripheral/gpio/plib_gpio.c    -DXPRJ_pic32mzef_nvm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1950079689/plib_nvm.o: ../src/config/pic32mzef_nvm/peripheral/nvm/plib_nvm.c  .generated_files/58bda165ad761dab2a8f643c9ed0483ce15bb846.flag .generated_files/6bfb4de4ca679cf472869cc51aabb004006f99f0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1950079689" 
	@${RM} ${OBJECTDIR}/_ext/1950079689/plib_nvm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1950079689/plib_nvm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzef_nvm" -I"../src/packs/PIC32MZ2048EFM144_DFP" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1950079689/plib_nvm.o.d" -o ${OBJECTDIR}/_ext/1950079689/plib_nvm.o ../src/config/pic32mzef_nvm/peripheral/nvm/plib_nvm.c    -DXPRJ_pic32mzef_nvm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/322739588/plib_uart1.o: ../src/config/pic32mzef_nvm/peripheral/uart/plib_uart1.c  .generated_files/fba31fa27ec68c774141b9bb28bbbb8eb65b620c.flag .generated_files/6bfb4de4ca679cf472869cc51aabb004006f99f0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/322739588" 
	@${RM} ${OBJECTDIR}/_ext/322739588/plib_uart1.o.d 
	@${RM} ${OBJECTDIR}/_ext/322739588/plib_uart1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzef_nvm" -I"../src/packs/PIC32MZ2048EFM144_DFP" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/322739588/plib_uart1.o.d" -o ${OBJECTDIR}/_ext/322739588/plib_uart1.o ../src/config/pic32mzef_nvm/peripheral/uart/plib_uart1.c    -DXPRJ_pic32mzef_nvm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2116527036/xc32_monitor.o: ../src/config/pic32mzef_nvm/stdio/xc32_monitor.c  .generated_files/4515deb13446e1c8bfb9ea847b352212a5b976c2.flag .generated_files/6bfb4de4ca679cf472869cc51aabb004006f99f0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/2116527036" 
	@${RM} ${OBJECTDIR}/_ext/2116527036/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/2116527036/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzef_nvm" -I"../src/packs/PIC32MZ2048EFM144_DFP" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2116527036/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/2116527036/xc32_monitor.o ../src/config/pic32mzef_nvm/stdio/xc32_monitor.c    -DXPRJ_pic32mzef_nvm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/128587639/sys_int.o: ../src/config/pic32mzef_nvm/system/int/src/sys_int.c  .generated_files/ad8406114962a91c159783005be07ed14ffea9cc.flag .generated_files/6bfb4de4ca679cf472869cc51aabb004006f99f0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/128587639" 
	@${RM} ${OBJECTDIR}/_ext/128587639/sys_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/128587639/sys_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzef_nvm" -I"../src/packs/PIC32MZ2048EFM144_DFP" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/128587639/sys_int.o.d" -o ${OBJECTDIR}/_ext/128587639/sys_int.o ../src/config/pic32mzef_nvm/system/int/src/sys_int.c    -DXPRJ_pic32mzef_nvm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/770344950/initialization.o: ../src/config/pic32mzef_nvm/initialization.c  .generated_files/26d48acb3ddb0c47fdcf555a586a7c7145bbf290.flag .generated_files/6bfb4de4ca679cf472869cc51aabb004006f99f0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/770344950" 
	@${RM} ${OBJECTDIR}/_ext/770344950/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/770344950/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzef_nvm" -I"../src/packs/PIC32MZ2048EFM144_DFP" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/770344950/initialization.o.d" -o ${OBJECTDIR}/_ext/770344950/initialization.o ../src/config/pic32mzef_nvm/initialization.c    -DXPRJ_pic32mzef_nvm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/770344950/interrupts.o: ../src/config/pic32mzef_nvm/interrupts.c  .generated_files/2baa9f8a7806e25b89f220a7a952e6f4ba7d16fe.flag .generated_files/6bfb4de4ca679cf472869cc51aabb004006f99f0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/770344950" 
	@${RM} ${OBJECTDIR}/_ext/770344950/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/770344950/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzef_nvm" -I"../src/packs/PIC32MZ2048EFM144_DFP" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/770344950/interrupts.o.d" -o ${OBJECTDIR}/_ext/770344950/interrupts.o ../src/config/pic32mzef_nvm/interrupts.c    -DXPRJ_pic32mzef_nvm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/770344950/exceptions.o: ../src/config/pic32mzef_nvm/exceptions.c  .generated_files/15302abe59b758ce6f7e7993b086030d0ed70d49.flag .generated_files/6bfb4de4ca679cf472869cc51aabb004006f99f0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/770344950" 
	@${RM} ${OBJECTDIR}/_ext/770344950/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/770344950/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzef_nvm" -I"../src/packs/PIC32MZ2048EFM144_DFP" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/770344950/exceptions.o.d" -o ${OBJECTDIR}/_ext/770344950/exceptions.o ../src/config/pic32mzef_nvm/exceptions.c    -DXPRJ_pic32mzef_nvm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1214204543/asn1parse.o: ../../../../../../../libraries/3rdparty/tinycrypt/asn1/asn1parse.c  .generated_files/ae08f8162c8ddacd4772c28b7e501795eef59bb8.flag .generated_files/6bfb4de4ca679cf472869cc51aabb004006f99f0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1214204543" 
	@${RM} ${OBJECTDIR}/_ext/1214204543/asn1parse.o.d 
	@${RM} ${OBJECTDIR}/_ext/1214204543/asn1parse.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzef_nvm" -I"../src/packs/PIC32MZ2048EFM144_DFP" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1214204543/asn1parse.o.d" -o ${OBJECTDIR}/_ext/1214204543/asn1parse.o ../../../../../../../libraries/3rdparty/tinycrypt/asn1/asn1parse.c    -DXPRJ_pic32mzef_nvm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1193839791/aes_decrypt.o: ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/aes_decrypt.c  .generated_files/41dfb2aea16af0dce79bc5e36029bfe58ec16bd0.flag .generated_files/6bfb4de4ca679cf472869cc51aabb004006f99f0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1193839791" 
	@${RM} ${OBJECTDIR}/_ext/1193839791/aes_decrypt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1193839791/aes_decrypt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzef_nvm" -I"../src/packs/PIC32MZ2048EFM144_DFP" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1193839791/aes_decrypt.o.d" -o ${OBJECTDIR}/_ext/1193839791/aes_decrypt.o ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/aes_decrypt.c    -DXPRJ_pic32mzef_nvm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1193839791/aes_encrypt.o: ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/aes_encrypt.c  .generated_files/d33fa79da028183d1ef607c686cf6ffd32993116.flag .generated_files/6bfb4de4ca679cf472869cc51aabb004006f99f0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1193839791" 
	@${RM} ${OBJECTDIR}/_ext/1193839791/aes_encrypt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1193839791/aes_encrypt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzef_nvm" -I"../src/packs/PIC32MZ2048EFM144_DFP" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1193839791/aes_encrypt.o.d" -o ${OBJECTDIR}/_ext/1193839791/aes_encrypt.o ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/aes_encrypt.c    -DXPRJ_pic32mzef_nvm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1193839791/cbc_mode.o: ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/cbc_mode.c  .generated_files/dc905a5de217d7c60d2e4b05376e52a1d027d823.flag .generated_files/6bfb4de4ca679cf472869cc51aabb004006f99f0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1193839791" 
	@${RM} ${OBJECTDIR}/_ext/1193839791/cbc_mode.o.d 
	@${RM} ${OBJECTDIR}/_ext/1193839791/cbc_mode.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzef_nvm" -I"../src/packs/PIC32MZ2048EFM144_DFP" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1193839791/cbc_mode.o.d" -o ${OBJECTDIR}/_ext/1193839791/cbc_mode.o ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/cbc_mode.c    -DXPRJ_pic32mzef_nvm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1193839791/ccm_mode.o: ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/ccm_mode.c  .generated_files/be2e74402d0cb59ad59d4cf69df60b900fa21be3.flag .generated_files/6bfb4de4ca679cf472869cc51aabb004006f99f0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1193839791" 
	@${RM} ${OBJECTDIR}/_ext/1193839791/ccm_mode.o.d 
	@${RM} ${OBJECTDIR}/_ext/1193839791/ccm_mode.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzef_nvm" -I"../src/packs/PIC32MZ2048EFM144_DFP" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1193839791/ccm_mode.o.d" -o ${OBJECTDIR}/_ext/1193839791/ccm_mode.o ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/ccm_mode.c    -DXPRJ_pic32mzef_nvm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1193839791/cmac_mode.o: ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/cmac_mode.c  .generated_files/5b4ebb20e4b875a890ea6d56546a7f13842f0cd1.flag .generated_files/6bfb4de4ca679cf472869cc51aabb004006f99f0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1193839791" 
	@${RM} ${OBJECTDIR}/_ext/1193839791/cmac_mode.o.d 
	@${RM} ${OBJECTDIR}/_ext/1193839791/cmac_mode.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzef_nvm" -I"../src/packs/PIC32MZ2048EFM144_DFP" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1193839791/cmac_mode.o.d" -o ${OBJECTDIR}/_ext/1193839791/cmac_mode.o ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/cmac_mode.c    -DXPRJ_pic32mzef_nvm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1193839791/ctr_mode.o: ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/ctr_mode.c  .generated_files/bf38aba585132c0ec092fba9ddf7f8a0ec3ba7a4.flag .generated_files/6bfb4de4ca679cf472869cc51aabb004006f99f0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1193839791" 
	@${RM} ${OBJECTDIR}/_ext/1193839791/ctr_mode.o.d 
	@${RM} ${OBJECTDIR}/_ext/1193839791/ctr_mode.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzef_nvm" -I"../src/packs/PIC32MZ2048EFM144_DFP" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1193839791/ctr_mode.o.d" -o ${OBJECTDIR}/_ext/1193839791/ctr_mode.o ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/ctr_mode.c    -DXPRJ_pic32mzef_nvm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1193839791/ctr_prng.o: ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/ctr_prng.c  .generated_files/a59c40a26abbeda6efebe9d0bd8f81b26edf403a.flag .generated_files/6bfb4de4ca679cf472869cc51aabb004006f99f0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1193839791" 
	@${RM} ${OBJECTDIR}/_ext/1193839791/ctr_prng.o.d 
	@${RM} ${OBJECTDIR}/_ext/1193839791/ctr_prng.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzef_nvm" -I"../src/packs/PIC32MZ2048EFM144_DFP" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1193839791/ctr_prng.o.d" -o ${OBJECTDIR}/_ext/1193839791/ctr_prng.o ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/ctr_prng.c    -DXPRJ_pic32mzef_nvm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1193839791/ecc.o: ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/ecc.c  .generated_files/bee7696a4bdf3f346f43bf1f72b8b0f527c116e9.flag .generated_files/6bfb4de4ca679cf472869cc51aabb004006f99f0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1193839791" 
	@${RM} ${OBJECTDIR}/_ext/1193839791/ecc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1193839791/ecc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzef_nvm" -I"../src/packs/PIC32MZ2048EFM144_DFP" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1193839791/ecc.o.d" -o ${OBJECTDIR}/_ext/1193839791/ecc.o ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/ecc.c    -DXPRJ_pic32mzef_nvm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1193839791/ecc_dh.o: ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/ecc_dh.c  .generated_files/d6a67133602bc2f11e5e1a255d325d9cfb2709a8.flag .generated_files/6bfb4de4ca679cf472869cc51aabb004006f99f0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1193839791" 
	@${RM} ${OBJECTDIR}/_ext/1193839791/ecc_dh.o.d 
	@${RM} ${OBJECTDIR}/_ext/1193839791/ecc_dh.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzef_nvm" -I"../src/packs/PIC32MZ2048EFM144_DFP" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1193839791/ecc_dh.o.d" -o ${OBJECTDIR}/_ext/1193839791/ecc_dh.o ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/ecc_dh.c    -DXPRJ_pic32mzef_nvm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1193839791/ecc_dsa.o: ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/ecc_dsa.c  .generated_files/c1c81255386c386fac95ee1e286aed17f742af40.flag .generated_files/6bfb4de4ca679cf472869cc51aabb004006f99f0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1193839791" 
	@${RM} ${OBJECTDIR}/_ext/1193839791/ecc_dsa.o.d 
	@${RM} ${OBJECTDIR}/_ext/1193839791/ecc_dsa.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzef_nvm" -I"../src/packs/PIC32MZ2048EFM144_DFP" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1193839791/ecc_dsa.o.d" -o ${OBJECTDIR}/_ext/1193839791/ecc_dsa.o ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/ecc_dsa.c    -DXPRJ_pic32mzef_nvm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1193839791/ecc_platform_specific.o: ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/ecc_platform_specific.c  .generated_files/45e392619163f46cc294f0321c8de9c1a18cc261.flag .generated_files/6bfb4de4ca679cf472869cc51aabb004006f99f0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1193839791" 
	@${RM} ${OBJECTDIR}/_ext/1193839791/ecc_platform_specific.o.d 
	@${RM} ${OBJECTDIR}/_ext/1193839791/ecc_platform_specific.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzef_nvm" -I"../src/packs/PIC32MZ2048EFM144_DFP" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1193839791/ecc_platform_specific.o.d" -o ${OBJECTDIR}/_ext/1193839791/ecc_platform_specific.o ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/ecc_platform_specific.c    -DXPRJ_pic32mzef_nvm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1193839791/hmac.o: ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/hmac.c  .generated_files/eacc01bf62a5b003e6684418555961f86adcd0c1.flag .generated_files/6bfb4de4ca679cf472869cc51aabb004006f99f0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1193839791" 
	@${RM} ${OBJECTDIR}/_ext/1193839791/hmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/1193839791/hmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzef_nvm" -I"../src/packs/PIC32MZ2048EFM144_DFP" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1193839791/hmac.o.d" -o ${OBJECTDIR}/_ext/1193839791/hmac.o ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/hmac.c    -DXPRJ_pic32mzef_nvm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1193839791/hmac_prng.o: ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/hmac_prng.c  .generated_files/9f0ec71e74f723c75921d45c54800fae22245e14.flag .generated_files/6bfb4de4ca679cf472869cc51aabb004006f99f0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1193839791" 
	@${RM} ${OBJECTDIR}/_ext/1193839791/hmac_prng.o.d 
	@${RM} ${OBJECTDIR}/_ext/1193839791/hmac_prng.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzef_nvm" -I"../src/packs/PIC32MZ2048EFM144_DFP" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1193839791/hmac_prng.o.d" -o ${OBJECTDIR}/_ext/1193839791/hmac_prng.o ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/hmac_prng.c    -DXPRJ_pic32mzef_nvm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1193839791/sha256.o: ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/sha256.c  .generated_files/5cec3ddba3fc3170184c895ce81bc0be610ae8eb.flag .generated_files/6bfb4de4ca679cf472869cc51aabb004006f99f0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1193839791" 
	@${RM} ${OBJECTDIR}/_ext/1193839791/sha256.o.d 
	@${RM} ${OBJECTDIR}/_ext/1193839791/sha256.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzef_nvm" -I"../src/packs/PIC32MZ2048EFM144_DFP" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1193839791/sha256.o.d" -o ${OBJECTDIR}/_ext/1193839791/sha256.o ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/sha256.c    -DXPRJ_pic32mzef_nvm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1193839791/utils.o: ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/utils.c  .generated_files/c37fa6b4284f5c929f03d35ea8da53616dc8caf6.flag .generated_files/6bfb4de4ca679cf472869cc51aabb004006f99f0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1193839791" 
	@${RM} ${OBJECTDIR}/_ext/1193839791/utils.o.d 
	@${RM} ${OBJECTDIR}/_ext/1193839791/utils.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzef_nvm" -I"../src/packs/PIC32MZ2048EFM144_DFP" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1193839791/utils.o.d" -o ${OBJECTDIR}/_ext/1193839791/utils.o ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/utils.c    -DXPRJ_pic32mzef_nvm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/5aa97fc8099c66da4847bb6c72e6acce70c65baf.flag .generated_files/6bfb4de4ca679cf472869cc51aabb004006f99f0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzef_nvm" -I"../src/packs/PIC32MZ2048EFM144_DFP" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_pic32mzef_nvm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/_ext/671897462/asn1utility.o: ../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/crypto/tinycrypt/asn1utility.c  .generated_files/ff3bc4a000d7af6ec2c5a7c380b9085a24f5ef51.flag .generated_files/6bfb4de4ca679cf472869cc51aabb004006f99f0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/671897462" 
	@${RM} ${OBJECTDIR}/_ext/671897462/asn1utility.o.d 
	@${RM} ${OBJECTDIR}/_ext/671897462/asn1utility.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzef_nvm" -I"../src/packs/PIC32MZ2048EFM144_DFP" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/671897462/asn1utility.o.d" -o ${OBJECTDIR}/_ext/671897462/asn1utility.o ../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/crypto/tinycrypt/asn1utility.c    -DXPRJ_pic32mzef_nvm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/671897462/aws_boot_crypto.o: ../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/crypto/tinycrypt/aws_boot_crypto.c  .generated_files/7208efd66f6dd6a98058aca9acf701454853cfa9.flag .generated_files/6bfb4de4ca679cf472869cc51aabb004006f99f0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/671897462" 
	@${RM} ${OBJECTDIR}/_ext/671897462/aws_boot_crypto.o.d 
	@${RM} ${OBJECTDIR}/_ext/671897462/aws_boot_crypto.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzef_nvm" -I"../src/packs/PIC32MZ2048EFM144_DFP" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/671897462/aws_boot_crypto.o.d" -o ${OBJECTDIR}/_ext/671897462/aws_boot_crypto.o ../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/crypto/tinycrypt/aws_boot_crypto.c    -DXPRJ_pic32mzef_nvm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/15205594/aws_boot_flash.o: ../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/flash/aws_boot_flash.c  .generated_files/9507fb3a72412ae5a5fdb04a80777bfbb1c74d3d.flag .generated_files/6bfb4de4ca679cf472869cc51aabb004006f99f0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/15205594" 
	@${RM} ${OBJECTDIR}/_ext/15205594/aws_boot_flash.o.d 
	@${RM} ${OBJECTDIR}/_ext/15205594/aws_boot_flash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzef_nvm" -I"../src/packs/PIC32MZ2048EFM144_DFP" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/15205594/aws_boot_flash.o.d" -o ${OBJECTDIR}/_ext/15205594/aws_boot_flash.o ../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/flash/aws_boot_flash.c    -DXPRJ_pic32mzef_nvm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/15205594/aws_boot_nvm.o: ../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/flash/aws_boot_nvm.c  .generated_files/3d084593da579be20f63e54b30487c67ef283ca3.flag .generated_files/6bfb4de4ca679cf472869cc51aabb004006f99f0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/15205594" 
	@${RM} ${OBJECTDIR}/_ext/15205594/aws_boot_nvm.o.d 
	@${RM} ${OBJECTDIR}/_ext/15205594/aws_boot_nvm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzef_nvm" -I"../src/packs/PIC32MZ2048EFM144_DFP" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/15205594/aws_boot_nvm.o.d" -o ${OBJECTDIR}/_ext/15205594/aws_boot_nvm.o ../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/flash/aws_boot_nvm.c    -DXPRJ_pic32mzef_nvm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/15205594/aws_boot_partition.o: ../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/flash/aws_boot_partition.c  .generated_files/88259a132cb1bbe28618366f3b80bed001ac651f.flag .generated_files/6bfb4de4ca679cf472869cc51aabb004006f99f0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/15205594" 
	@${RM} ${OBJECTDIR}/_ext/15205594/aws_boot_partition.o.d 
	@${RM} ${OBJECTDIR}/_ext/15205594/aws_boot_partition.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzef_nvm" -I"../src/packs/PIC32MZ2048EFM144_DFP" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/15205594/aws_boot_partition.o.d" -o ${OBJECTDIR}/_ext/15205594/aws_boot_partition.o ../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/flash/aws_boot_partition.c    -DXPRJ_pic32mzef_nvm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/645904489/aws_boot_loader.o: ../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/loader/aws_boot_loader.c  .generated_files/bf49617779e2ccf74e740eecaa51c9b16128cb30.flag .generated_files/6bfb4de4ca679cf472869cc51aabb004006f99f0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/645904489" 
	@${RM} ${OBJECTDIR}/_ext/645904489/aws_boot_loader.o.d 
	@${RM} ${OBJECTDIR}/_ext/645904489/aws_boot_loader.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzef_nvm" -I"../src/packs/PIC32MZ2048EFM144_DFP" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/645904489/aws_boot_loader.o.d" -o ${OBJECTDIR}/_ext/645904489/aws_boot_loader.o ../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/loader/aws_boot_loader.c    -DXPRJ_pic32mzef_nvm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/645904489/aws_boot_pal.o: ../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/loader/aws_boot_pal.c  .generated_files/e96eeb28ad2f293fc0584db72209fff11a042b18.flag .generated_files/6bfb4de4ca679cf472869cc51aabb004006f99f0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/645904489" 
	@${RM} ${OBJECTDIR}/_ext/645904489/aws_boot_pal.o.d 
	@${RM} ${OBJECTDIR}/_ext/645904489/aws_boot_pal.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzef_nvm" -I"../src/packs/PIC32MZ2048EFM144_DFP" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/645904489/aws_boot_pal.o.d" -o ${OBJECTDIR}/_ext/645904489/aws_boot_pal.o ../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/loader/aws_boot_pal.c    -DXPRJ_pic32mzef_nvm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1657551691/app.o: ../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/common/source/app.c  .generated_files/410d5eca7654540b20be851b2f5e8057f1b35deb.flag .generated_files/6bfb4de4ca679cf472869cc51aabb004006f99f0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1657551691" 
	@${RM} ${OBJECTDIR}/_ext/1657551691/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1657551691/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzef_nvm" -I"../src/packs/PIC32MZ2048EFM144_DFP" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1657551691/app.o.d" -o ${OBJECTDIR}/_ext/1657551691/app.o ../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/common/source/app.c    -DXPRJ_pic32mzef_nvm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1530740410/bsp.o: ../src/config/pic32mzef_nvm/bsp/bsp.c  .generated_files/ea416852e0524f4d49e518ca92b765072a90fe4c.flag .generated_files/6bfb4de4ca679cf472869cc51aabb004006f99f0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1530740410" 
	@${RM} ${OBJECTDIR}/_ext/1530740410/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1530740410/bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzef_nvm" -I"../src/packs/PIC32MZ2048EFM144_DFP" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1530740410/bsp.o.d" -o ${OBJECTDIR}/_ext/1530740410/bsp.o ../src/config/pic32mzef_nvm/bsp/bsp.c    -DXPRJ_pic32mzef_nvm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1950090572/plib_clk.o: ../src/config/pic32mzef_nvm/peripheral/clk/plib_clk.c  .generated_files/8475ed243430c6d8cc6f19043a02b1f9301f89b5.flag .generated_files/6bfb4de4ca679cf472869cc51aabb004006f99f0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1950090572" 
	@${RM} ${OBJECTDIR}/_ext/1950090572/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/1950090572/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzef_nvm" -I"../src/packs/PIC32MZ2048EFM144_DFP" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1950090572/plib_clk.o.d" -o ${OBJECTDIR}/_ext/1950090572/plib_clk.o ../src/config/pic32mzef_nvm/peripheral/clk/plib_clk.c    -DXPRJ_pic32mzef_nvm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/323196359/plib_evic.o: ../src/config/pic32mzef_nvm/peripheral/evic/plib_evic.c  .generated_files/6398270b874962ba0829360b5358fcc6c2f5f07b.flag .generated_files/6bfb4de4ca679cf472869cc51aabb004006f99f0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/323196359" 
	@${RM} ${OBJECTDIR}/_ext/323196359/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/323196359/plib_evic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzef_nvm" -I"../src/packs/PIC32MZ2048EFM144_DFP" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/323196359/plib_evic.o.d" -o ${OBJECTDIR}/_ext/323196359/plib_evic.o ../src/config/pic32mzef_nvm/peripheral/evic/plib_evic.c    -DXPRJ_pic32mzef_nvm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/323142531/plib_gpio.o: ../src/config/pic32mzef_nvm/peripheral/gpio/plib_gpio.c  .generated_files/cdeb8b16885497438ee4e102212ddeb406a1011c.flag .generated_files/6bfb4de4ca679cf472869cc51aabb004006f99f0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/323142531" 
	@${RM} ${OBJECTDIR}/_ext/323142531/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/323142531/plib_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzef_nvm" -I"../src/packs/PIC32MZ2048EFM144_DFP" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/323142531/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/323142531/plib_gpio.o ../src/config/pic32mzef_nvm/peripheral/gpio/plib_gpio.c    -DXPRJ_pic32mzef_nvm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1950079689/plib_nvm.o: ../src/config/pic32mzef_nvm/peripheral/nvm/plib_nvm.c  .generated_files/26cf13432089e18e858f6b6a6559881d6f93c08a.flag .generated_files/6bfb4de4ca679cf472869cc51aabb004006f99f0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1950079689" 
	@${RM} ${OBJECTDIR}/_ext/1950079689/plib_nvm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1950079689/plib_nvm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzef_nvm" -I"../src/packs/PIC32MZ2048EFM144_DFP" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1950079689/plib_nvm.o.d" -o ${OBJECTDIR}/_ext/1950079689/plib_nvm.o ../src/config/pic32mzef_nvm/peripheral/nvm/plib_nvm.c    -DXPRJ_pic32mzef_nvm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/322739588/plib_uart1.o: ../src/config/pic32mzef_nvm/peripheral/uart/plib_uart1.c  .generated_files/87b7f263e44d8c93b9f2873d58ae152b2f8de622.flag .generated_files/6bfb4de4ca679cf472869cc51aabb004006f99f0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/322739588" 
	@${RM} ${OBJECTDIR}/_ext/322739588/plib_uart1.o.d 
	@${RM} ${OBJECTDIR}/_ext/322739588/plib_uart1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzef_nvm" -I"../src/packs/PIC32MZ2048EFM144_DFP" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/322739588/plib_uart1.o.d" -o ${OBJECTDIR}/_ext/322739588/plib_uart1.o ../src/config/pic32mzef_nvm/peripheral/uart/plib_uart1.c    -DXPRJ_pic32mzef_nvm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2116527036/xc32_monitor.o: ../src/config/pic32mzef_nvm/stdio/xc32_monitor.c  .generated_files/d8a112e75589459a063bdf4796770a0884e8741e.flag .generated_files/6bfb4de4ca679cf472869cc51aabb004006f99f0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/2116527036" 
	@${RM} ${OBJECTDIR}/_ext/2116527036/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/2116527036/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzef_nvm" -I"../src/packs/PIC32MZ2048EFM144_DFP" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2116527036/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/2116527036/xc32_monitor.o ../src/config/pic32mzef_nvm/stdio/xc32_monitor.c    -DXPRJ_pic32mzef_nvm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/128587639/sys_int.o: ../src/config/pic32mzef_nvm/system/int/src/sys_int.c  .generated_files/c404336f7682890b5763756ad9a05c3b41f6daa2.flag .generated_files/6bfb4de4ca679cf472869cc51aabb004006f99f0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/128587639" 
	@${RM} ${OBJECTDIR}/_ext/128587639/sys_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/128587639/sys_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzef_nvm" -I"../src/packs/PIC32MZ2048EFM144_DFP" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/128587639/sys_int.o.d" -o ${OBJECTDIR}/_ext/128587639/sys_int.o ../src/config/pic32mzef_nvm/system/int/src/sys_int.c    -DXPRJ_pic32mzef_nvm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/770344950/initialization.o: ../src/config/pic32mzef_nvm/initialization.c  .generated_files/bb0e67af2d231bc91ea348cad924d43b34aff3fe.flag .generated_files/6bfb4de4ca679cf472869cc51aabb004006f99f0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/770344950" 
	@${RM} ${OBJECTDIR}/_ext/770344950/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/770344950/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzef_nvm" -I"../src/packs/PIC32MZ2048EFM144_DFP" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/770344950/initialization.o.d" -o ${OBJECTDIR}/_ext/770344950/initialization.o ../src/config/pic32mzef_nvm/initialization.c    -DXPRJ_pic32mzef_nvm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/770344950/interrupts.o: ../src/config/pic32mzef_nvm/interrupts.c  .generated_files/61ac7c924ee00e6fdd4e61f63f5079211d4eb545.flag .generated_files/6bfb4de4ca679cf472869cc51aabb004006f99f0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/770344950" 
	@${RM} ${OBJECTDIR}/_ext/770344950/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/770344950/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzef_nvm" -I"../src/packs/PIC32MZ2048EFM144_DFP" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/770344950/interrupts.o.d" -o ${OBJECTDIR}/_ext/770344950/interrupts.o ../src/config/pic32mzef_nvm/interrupts.c    -DXPRJ_pic32mzef_nvm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/770344950/exceptions.o: ../src/config/pic32mzef_nvm/exceptions.c  .generated_files/c04ddbdf3186bcf2af23621d6cb2c8d3010e75f2.flag .generated_files/6bfb4de4ca679cf472869cc51aabb004006f99f0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/770344950" 
	@${RM} ${OBJECTDIR}/_ext/770344950/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/770344950/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzef_nvm" -I"../src/packs/PIC32MZ2048EFM144_DFP" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/770344950/exceptions.o.d" -o ${OBJECTDIR}/_ext/770344950/exceptions.o ../src/config/pic32mzef_nvm/exceptions.c    -DXPRJ_pic32mzef_nvm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1214204543/asn1parse.o: ../../../../../../../libraries/3rdparty/tinycrypt/asn1/asn1parse.c  .generated_files/447557d39e3ca747890cc2e302f07cea67975d38.flag .generated_files/6bfb4de4ca679cf472869cc51aabb004006f99f0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1214204543" 
	@${RM} ${OBJECTDIR}/_ext/1214204543/asn1parse.o.d 
	@${RM} ${OBJECTDIR}/_ext/1214204543/asn1parse.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzef_nvm" -I"../src/packs/PIC32MZ2048EFM144_DFP" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1214204543/asn1parse.o.d" -o ${OBJECTDIR}/_ext/1214204543/asn1parse.o ../../../../../../../libraries/3rdparty/tinycrypt/asn1/asn1parse.c    -DXPRJ_pic32mzef_nvm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1193839791/aes_decrypt.o: ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/aes_decrypt.c  .generated_files/b2840dea16656cf853f89273063f287473796cb1.flag .generated_files/6bfb4de4ca679cf472869cc51aabb004006f99f0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1193839791" 
	@${RM} ${OBJECTDIR}/_ext/1193839791/aes_decrypt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1193839791/aes_decrypt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzef_nvm" -I"../src/packs/PIC32MZ2048EFM144_DFP" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1193839791/aes_decrypt.o.d" -o ${OBJECTDIR}/_ext/1193839791/aes_decrypt.o ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/aes_decrypt.c    -DXPRJ_pic32mzef_nvm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1193839791/aes_encrypt.o: ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/aes_encrypt.c  .generated_files/18c6b9b5ccc72cac919e548892ff573c43b0bd55.flag .generated_files/6bfb4de4ca679cf472869cc51aabb004006f99f0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1193839791" 
	@${RM} ${OBJECTDIR}/_ext/1193839791/aes_encrypt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1193839791/aes_encrypt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzef_nvm" -I"../src/packs/PIC32MZ2048EFM144_DFP" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1193839791/aes_encrypt.o.d" -o ${OBJECTDIR}/_ext/1193839791/aes_encrypt.o ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/aes_encrypt.c    -DXPRJ_pic32mzef_nvm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1193839791/cbc_mode.o: ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/cbc_mode.c  .generated_files/7d2a8f40ba239cd16a8f9ced227c3271f2fbd9d4.flag .generated_files/6bfb4de4ca679cf472869cc51aabb004006f99f0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1193839791" 
	@${RM} ${OBJECTDIR}/_ext/1193839791/cbc_mode.o.d 
	@${RM} ${OBJECTDIR}/_ext/1193839791/cbc_mode.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzef_nvm" -I"../src/packs/PIC32MZ2048EFM144_DFP" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1193839791/cbc_mode.o.d" -o ${OBJECTDIR}/_ext/1193839791/cbc_mode.o ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/cbc_mode.c    -DXPRJ_pic32mzef_nvm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1193839791/ccm_mode.o: ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/ccm_mode.c  .generated_files/dab00abe37eb10ca28733048708a5b2bc44c1e59.flag .generated_files/6bfb4de4ca679cf472869cc51aabb004006f99f0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1193839791" 
	@${RM} ${OBJECTDIR}/_ext/1193839791/ccm_mode.o.d 
	@${RM} ${OBJECTDIR}/_ext/1193839791/ccm_mode.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzef_nvm" -I"../src/packs/PIC32MZ2048EFM144_DFP" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1193839791/ccm_mode.o.d" -o ${OBJECTDIR}/_ext/1193839791/ccm_mode.o ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/ccm_mode.c    -DXPRJ_pic32mzef_nvm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1193839791/cmac_mode.o: ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/cmac_mode.c  .generated_files/392f5d3d6a2b9e8150881b348a43a8fc533164c7.flag .generated_files/6bfb4de4ca679cf472869cc51aabb004006f99f0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1193839791" 
	@${RM} ${OBJECTDIR}/_ext/1193839791/cmac_mode.o.d 
	@${RM} ${OBJECTDIR}/_ext/1193839791/cmac_mode.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzef_nvm" -I"../src/packs/PIC32MZ2048EFM144_DFP" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1193839791/cmac_mode.o.d" -o ${OBJECTDIR}/_ext/1193839791/cmac_mode.o ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/cmac_mode.c    -DXPRJ_pic32mzef_nvm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1193839791/ctr_mode.o: ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/ctr_mode.c  .generated_files/bf8eff0f1af597b24e5a44683f3965de5dffebc8.flag .generated_files/6bfb4de4ca679cf472869cc51aabb004006f99f0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1193839791" 
	@${RM} ${OBJECTDIR}/_ext/1193839791/ctr_mode.o.d 
	@${RM} ${OBJECTDIR}/_ext/1193839791/ctr_mode.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzef_nvm" -I"../src/packs/PIC32MZ2048EFM144_DFP" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1193839791/ctr_mode.o.d" -o ${OBJECTDIR}/_ext/1193839791/ctr_mode.o ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/ctr_mode.c    -DXPRJ_pic32mzef_nvm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1193839791/ctr_prng.o: ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/ctr_prng.c  .generated_files/8400077e7cb08e00b1509a8c0e9615007dc3a3b1.flag .generated_files/6bfb4de4ca679cf472869cc51aabb004006f99f0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1193839791" 
	@${RM} ${OBJECTDIR}/_ext/1193839791/ctr_prng.o.d 
	@${RM} ${OBJECTDIR}/_ext/1193839791/ctr_prng.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzef_nvm" -I"../src/packs/PIC32MZ2048EFM144_DFP" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1193839791/ctr_prng.o.d" -o ${OBJECTDIR}/_ext/1193839791/ctr_prng.o ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/ctr_prng.c    -DXPRJ_pic32mzef_nvm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1193839791/ecc.o: ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/ecc.c  .generated_files/99a8b57a528a91108955198e33ed361125e25f23.flag .generated_files/6bfb4de4ca679cf472869cc51aabb004006f99f0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1193839791" 
	@${RM} ${OBJECTDIR}/_ext/1193839791/ecc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1193839791/ecc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzef_nvm" -I"../src/packs/PIC32MZ2048EFM144_DFP" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1193839791/ecc.o.d" -o ${OBJECTDIR}/_ext/1193839791/ecc.o ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/ecc.c    -DXPRJ_pic32mzef_nvm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1193839791/ecc_dh.o: ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/ecc_dh.c  .generated_files/ccb1c14105885bd54787d1fcddaf75de4116a114.flag .generated_files/6bfb4de4ca679cf472869cc51aabb004006f99f0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1193839791" 
	@${RM} ${OBJECTDIR}/_ext/1193839791/ecc_dh.o.d 
	@${RM} ${OBJECTDIR}/_ext/1193839791/ecc_dh.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzef_nvm" -I"../src/packs/PIC32MZ2048EFM144_DFP" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1193839791/ecc_dh.o.d" -o ${OBJECTDIR}/_ext/1193839791/ecc_dh.o ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/ecc_dh.c    -DXPRJ_pic32mzef_nvm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1193839791/ecc_dsa.o: ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/ecc_dsa.c  .generated_files/57094c2c0045db217bdf16ccebc946223b2cb8f7.flag .generated_files/6bfb4de4ca679cf472869cc51aabb004006f99f0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1193839791" 
	@${RM} ${OBJECTDIR}/_ext/1193839791/ecc_dsa.o.d 
	@${RM} ${OBJECTDIR}/_ext/1193839791/ecc_dsa.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzef_nvm" -I"../src/packs/PIC32MZ2048EFM144_DFP" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1193839791/ecc_dsa.o.d" -o ${OBJECTDIR}/_ext/1193839791/ecc_dsa.o ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/ecc_dsa.c    -DXPRJ_pic32mzef_nvm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1193839791/ecc_platform_specific.o: ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/ecc_platform_specific.c  .generated_files/12ee3bf447ff2726195b162ad7f88301eb64f052.flag .generated_files/6bfb4de4ca679cf472869cc51aabb004006f99f0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1193839791" 
	@${RM} ${OBJECTDIR}/_ext/1193839791/ecc_platform_specific.o.d 
	@${RM} ${OBJECTDIR}/_ext/1193839791/ecc_platform_specific.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzef_nvm" -I"../src/packs/PIC32MZ2048EFM144_DFP" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1193839791/ecc_platform_specific.o.d" -o ${OBJECTDIR}/_ext/1193839791/ecc_platform_specific.o ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/ecc_platform_specific.c    -DXPRJ_pic32mzef_nvm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1193839791/hmac.o: ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/hmac.c  .generated_files/6d7d79a4b2a2ed904a2fe1335527e0e44adb5bfe.flag .generated_files/6bfb4de4ca679cf472869cc51aabb004006f99f0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1193839791" 
	@${RM} ${OBJECTDIR}/_ext/1193839791/hmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/1193839791/hmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzef_nvm" -I"../src/packs/PIC32MZ2048EFM144_DFP" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1193839791/hmac.o.d" -o ${OBJECTDIR}/_ext/1193839791/hmac.o ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/hmac.c    -DXPRJ_pic32mzef_nvm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1193839791/hmac_prng.o: ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/hmac_prng.c  .generated_files/7f612a741508675c37d1c2625fac0f43f560b67e.flag .generated_files/6bfb4de4ca679cf472869cc51aabb004006f99f0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1193839791" 
	@${RM} ${OBJECTDIR}/_ext/1193839791/hmac_prng.o.d 
	@${RM} ${OBJECTDIR}/_ext/1193839791/hmac_prng.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzef_nvm" -I"../src/packs/PIC32MZ2048EFM144_DFP" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1193839791/hmac_prng.o.d" -o ${OBJECTDIR}/_ext/1193839791/hmac_prng.o ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/hmac_prng.c    -DXPRJ_pic32mzef_nvm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1193839791/sha256.o: ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/sha256.c  .generated_files/42586220f238c125d89043bd8aec7ff164fc59c2.flag .generated_files/6bfb4de4ca679cf472869cc51aabb004006f99f0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1193839791" 
	@${RM} ${OBJECTDIR}/_ext/1193839791/sha256.o.d 
	@${RM} ${OBJECTDIR}/_ext/1193839791/sha256.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzef_nvm" -I"../src/packs/PIC32MZ2048EFM144_DFP" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1193839791/sha256.o.d" -o ${OBJECTDIR}/_ext/1193839791/sha256.o ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/sha256.c    -DXPRJ_pic32mzef_nvm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1193839791/utils.o: ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/utils.c  .generated_files/4731f834d4634d9d7eba3d3b00ff6e42f7a9e7e7.flag .generated_files/6bfb4de4ca679cf472869cc51aabb004006f99f0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1193839791" 
	@${RM} ${OBJECTDIR}/_ext/1193839791/utils.o.d 
	@${RM} ${OBJECTDIR}/_ext/1193839791/utils.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzef_nvm" -I"../src/packs/PIC32MZ2048EFM144_DFP" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1193839791/utils.o.d" -o ${OBJECTDIR}/_ext/1193839791/utils.o ../../../../../../../libraries/3rdparty/tinycrypt/lib/source/utils.c    -DXPRJ_pic32mzef_nvm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/55ea35e326de78bf71108022f002d7c8fe4cc865.flag .generated_files/6bfb4de4ca679cf472869cc51aabb004006f99f0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzef_nvm" -I"../src/packs/PIC32MZ2048EFM144_DFP" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/include" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/config_files" -I"../../../../../../../libraries/3rdparty/tinycrypt/lib/include" -I"../../../../../../../libraries/3rdparty/tinycrypt/asn1" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/bootloader/flash" -I"../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/common/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_pic32mzef_nvm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -fgnu89-inline -mdfp="${DFP_DIR}"  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/bootloader.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/linker_script/btl_mz.ld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/bootloader.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_pic32mzef_nvm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)      -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=_min_heap_size=512,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/bootloader.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../../../../../../../vendors/microchip/boards/curiosity2_pic32mzef/bootloader/linker_script/btl_mz.ld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/bootloader.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_pic32mzef_nvm=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=512,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}"
	${MP_CC_DIR}\\xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/bootloader.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/pic32mzef_nvm
	${RM} -r dist/pic32mzef_nvm

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
