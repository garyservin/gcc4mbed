# Copyright (C) 2013 - Adam Green (http://mbed.org/users/AdamGreen/)
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.

# Vendor/device for which the library should be built.
MBED_TARGET_VENDOR := NXP
MBED_TARGET_DEVICE := LPC176X
MBED_DEVICE        := LPC1768
MBED_TARGET_FAMILY := M3
MBED_TARGET        := $(MBED_TARGET_VENDOR)_$(MBED_TARGET_DEVICE)
MBED_CLEAN         := $(MBED_DEVICE)_MBED_clean


# Compiler flags which are specifc to this device.
MBED_TARGET_C_FLAGS := -mcpu=cortex-m3 -mthumb -mthumb-interwork
MBED_ASM_FLAGS      := -mcpu=cortex-m3 -mthumb
MBED_DEFINES        := -D__CORTEX_M3
MBED_LD_FLAGS       := -mcpu=cortex-m3 -mthumb


# Linker script to be used for this device.
MBED_LD_SCRIPT      := LPC1768.ld


include $(GCC4MBED_DIR)/build/device-libs.mk