COMPATIBLE_MACHINE:ti-j7 = "ti-j7"

PV:ti-j7 = "2022.01"
INC_PR:ti-j7 = "r3"
PLAT_SFX:ti-j78xx = "j784s4"

# Firmware versions
CORESDK_RTOS_VERSION:ti-j7 = "08.02.00.04"
TI_LINUX_FW_SRCREV:ti-j7 = "dce263bceabc3a9ebc0f9158a47c1c86b875b0bd"
SRCREV:ti-j7 = "${TI_LINUX_FW_SRCREV}"
K3_IMAGE_GEN_SRCREV:ti-j7 ?= "fde253192d1839723b777323596a697bf8d6332c"

FILES:${PN}:ti-j7 += "${nonarch_base_libdir}"

do_install:ti-j78xx() {
    install -d ${LEGACY_IPC_FW_DIR}
    install -m 0644 ${RTOS_IPC_FW_DIR}/ipc_echo_test_mcu1_1_release_strip.xer5f ${LEGACY_IPC_FW_DIR}
    install -m 0644 ${RTOS_IPC_FW_DIR}/ipc_echo_test_mcu2_0_release_strip.xer5f ${LEGACY_IPC_FW_DIR}
    install -m 0644 ${RTOS_IPC_FW_DIR}/ipc_echo_test_mcu2_1_release_strip.xer5f ${LEGACY_IPC_FW_DIR}
    install -m 0644 ${RTOS_IPC_FW_DIR}/ipc_echo_test_mcu3_0_release_strip.xer5f ${LEGACY_IPC_FW_DIR}
    install -m 0644 ${RTOS_IPC_FW_DIR}/ipc_echo_test_mcu3_1_release_strip.xer5f ${LEGACY_IPC_FW_DIR}
    install -m 0644 ${RTOS_IPC_FW_DIR}/ipc_echo_test_mcu4_0_release_strip.xer5f ${LEGACY_IPC_FW_DIR}
    install -m 0644 ${RTOS_IPC_FW_DIR}/ipc_echo_test_mcu4_1_release_strip.xer5f ${LEGACY_IPC_FW_DIR}
    install -m 0644 ${RTOS_IPC_FW_DIR}/ipc_echo_test_c7x_1_release_strip.xe71 ${LEGACY_IPC_FW_DIR}
    install -m 0644 ${RTOS_IPC_FW_DIR}/ipc_echo_test_c7x_2_release_strip.xe71 ${LEGACY_IPC_FW_DIR}
    install -m 0644 ${RTOS_IPC_FW_DIR}/ipc_echo_test_c7x_3_release_strip.xe71 ${LEGACY_IPC_FW_DIR}
    install -m 0644 ${RTOS_IPC_FW_DIR}/ipc_echo_test_c7x_4_release_strip.xe71 ${LEGACY_IPC_FW_DIR}
    # DM Firmware
    install -m 0644 ${RTOS_DM_FW_DIR}/ipc_echo_testb_mcu1_0_release_strip.xer5f ${LEGACY_DM_FW_DIR}
    # ETH firmware
    install -d ${LEGACY_ETH_FW_DIR}
    install -m 0644 ${RTOS_ETH_FW_DIR}/app_remoteswitchcfg_server_strip.xer5f ${LEGACY_ETH_FW_DIR}
}

ALTERNATIVE:${PN}:ti-j78xx = "\
                    j784s4-mcu-r5f0_0-fw \
                    j784s4-mcu-r5f0_1-fw \
                    j784s4-main-r5f0_0-fw \
                    j784s4-main-r5f0_1-fw \
                    j784s4-main-r5f1_0-fw \
                    j784s4-main-r5f1_1-fw \
                    j784s4-main-r5f2_0-fw \
                    j784s4-main-r5f2_1-fw \
                    j784s4-c71_0-fw \
                    j784s4-c71_1-fw \
                    j784s4-c71_2-fw \
                    j784s4-c71_3-fw \
                    "
TARGET_MCU_R5FSS0_0:ti-j78xx = "j784s4-mcu-r5f0_0-fw"
TARGET_MCU_R5FSS0_1:ti-j78xx = "j784s4-mcu-r5f0_1-fw"
TARGET_MAIN_R5FSS0_0:ti-j78xx = "j784s4-main-r5f0_0-fw"
TARGET_MAIN_R5FSS0_1:ti-j78xx = "j784s4-main-r5f0_1-fw"
TARGET_MAIN_R5FSS1_0:ti-j78xx = "j784s4-main-r5f1_0-fw"
TARGET_MAIN_R5FSS1_1:ti-j78xx = "j784s4-main-r5f1_1-fw"
TARGET_MAIN_R5FSS2_0:ti-j78xx = "j784s4-main-r5f2_0-fw"
TARGET_MAIN_R5FSS2_1:ti-j78xx = "j784s4-main-r5f2_1-fw"
TARGET_C7X_0:ti-j78xx = "j784s4-c71_0-fw"
TARGET_C7X_1:ti-j78xx = "j784s4-c71_1-fw"
TARGET_C7X_2:ti-j78xx = "j784s4-c71_2-fw"
TARGET_C7X_3:ti-j78xx = "j784s4-c71_3-fw"

ALTERNATIVE_LINK_NAME[j784s4-mcu-r5f0_0-fw] = "${nonarch_base_libdir}/firmware/${TARGET_MCU_R5FSS0_0}"
ALTERNATIVE_LINK_NAME[j784s4-mcu-r5f0_1-fw] = "${nonarch_base_libdir}/firmware/${TARGET_MCU_R5FSS0_1}"
ALTERNATIVE_LINK_NAME[j784s4-main-r5f0_0-fw] = "${nonarch_base_libdir}/firmware/${TARGET_MAIN_R5FSS0_0}"
ALTERNATIVE_LINK_NAME[j784s4-main-r5f0_1-fw] = "${nonarch_base_libdir}/firmware/${TARGET_MAIN_R5FSS0_1}"
ALTERNATIVE_LINK_NAME[j784s4-main-r5f1_0-fw] = "${nonarch_base_libdir}/firmware/${TARGET_MAIN_R5FSS1_0}"
ALTERNATIVE_LINK_NAME[j784s4-main-r5f1_1-fw] = "${nonarch_base_libdir}/firmware/${TARGET_MAIN_R5FSS1_1}"
ALTERNATIVE_LINK_NAME[j784s4-main-r5f2_0-fw] = "${nonarch_base_libdir}/firmware/${TARGET_MAIN_R5FSS2_0}"
ALTERNATIVE_LINK_NAME[j784s4-main-r5f2_1-fw] = "${nonarch_base_libdir}/firmware/${TARGET_MAIN_R5FSS2_1}"
ALTERNATIVE_LINK_NAME[j784s4-c71_0-fw] = "${nonarch_base_libdir}/firmware/${TARGET_C7X_0}"
ALTERNATIVE_LINK_NAME[j784s4-c71_1-fw] = "${nonarch_base_libdir}/firmware/${TARGET_C7X_1}"
ALTERNATIVE_LINK_NAME[j784s4-c71_2-fw] = "${nonarch_base_libdir}/firmware/${TARGET_C7X_2}"
ALTERNATIVE_LINK_NAME[j784s4-c71_3-fw] = "${nonarch_base_libdir}/firmware/${TARGET_C7X_3}"

ALTERNATIVE_TARGET[j784s4-mcu-r5f0_0-fw] = "${nonarch_base_libdir}/firmware/pdk-ipc/ipc_echo_testb_mcu1_0_release_strip.xer5f"
ALTERNATIVE_TARGET[j784s4-mcu-r5f0_1-fw] = "${nonarch_base_libdir}/firmware/pdk-ipc/ipc_echo_test_mcu1_1_release_strip.xer5f"
ALTERNATIVE_TARGET[j784s4-main-r5f0_0-fw] = "${nonarch_base_libdir}/firmware/ethfw/app_remoteswitchcfg_server_strip.xer5f"
ALTERNATIVE_TARGET[j784s4-main-r5f0_1-fw] = "${nonarch_base_libdir}/firmware/pdk-ipc/ipc_echo_test_mcu2_1_release_strip.xer5f"
ALTERNATIVE_TARGET[j784s4-main-r5f1_0-fw] = "${nonarch_base_libdir}/firmware/pdk-ipc/ipc_echo_test_mcu3_0_release_strip.xer5f"
ALTERNATIVE_TARGET[j784s4-main-r5f1_1-fw] = "${nonarch_base_libdir}/firmware/pdk-ipc/ipc_echo_test_mcu3_1_release_strip.xer5f"
ALTERNATIVE_TARGET[j784s4-main-r5f2_0-fw] = "${nonarch_base_libdir}/firmware/pdk-ipc/ipc_echo_test_mcu4_0_release_strip.xer5f"
ALTERNATIVE_TARGET[j784s4-main-r5f2_1-fw] = "${nonarch_base_libdir}/firmware/pdk-ipc/ipc_echo_test_mcu4_1_release_strip.xer5f"
ALTERNATIVE_TARGET[j784s4-c71_0-fw] = "${nonarch_base_libdir}/firmware/pdk-ipc/ipc_echo_test_c7x_1_release_strip.xe71"
ALTERNATIVE_TARGET[j784s4-c71_1-fw] = "${nonarch_base_libdir}/firmware/pdk-ipc/ipc_echo_test_c7x_2_release_strip.xe71"
ALTERNATIVE_TARGET[j784s4-c71_2-fw] = "${nonarch_base_libdir}/firmware/pdk-ipc/ipc_echo_test_c7x_3_release_strip.xe71"
ALTERNATIVE_TARGET[j784s4-c71_3-fw] = "${nonarch_base_libdir}/firmware/pdk-ipc/ipc_echo_test_c7x_4_release_strip.xe71"

