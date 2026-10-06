.. zephyr:board:: ct_mgm240p

CTHINGS MGM240P
===============

MGM240PA32VNN board support for the CTHINGS MGM240P.

UART
----

* USART0
* TX: PA5
* RX: PA6
* 115200 baud
* no hardware flow control

SWD
---

* SWCLK: PA1 (TP12)
* SWDIO: PA2 (TP11)

LEDs
----

* LED1: PA8
* LED2: PA7

Flashing
--------

J-Link is the default runner::

    west flash

OpenOCD is available as an alternative::

    west flash --runner openocd
