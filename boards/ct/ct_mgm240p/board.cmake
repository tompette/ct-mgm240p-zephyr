# Copyright (c) 2026 CTHINGS.CO
# SPDX-License-Identifier: Apache-2.0

# Default runner: J-Link.
#   west flash
#   west flash --runner jlink
board_runner_args(jlink
    "--device=MGM240PA32VNN"
    "--speed=4000"
)
include(${ZEPHYR_BASE}/boards/common/jlink.board.cmake)

# Alternative runner: OpenOCD + J-Link probe over SWD.
#   west flash --runner openocd
board_runner_args(openocd
    "--cmd-pre-init" "source [find interface/jlink.cfg]"
    "--cmd-pre-init" "transport select swd"
    "--cmd-pre-init" "source [find target/efm32s2_g23.cfg]"
)
include(${ZEPHYR_BASE}/boards/common/openocd.board.cmake)
