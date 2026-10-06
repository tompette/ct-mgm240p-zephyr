# CTHINGS MGM240P

Board support for the CTHINGS MGM240P using MGM240PA32VNN.

## UART

USART0:

- TX: PA5 -> CP_RX
- RX: PA6 -> CP_TX
- 115200 baud
- no hardware flow control

## SWD

The schematic exposes:

- SWCLK: PA1 -> TP12
- SWDIO: PA2 -> TP11

Connect a J-Link to SWDIO, SWCLK, GND and VTref/target voltage.

## LEDs

- LED1: PA8
- LED2: PA7

## Flash runners

Default:

```bash
west flash
```

or:

```bash
west flash --runner jlink
```

Alternative:

```bash
west flash --runner openocd
```

OpenOCD is configured for a J-Link probe in SWD mode and expects
`target/efm32s2_g23.cfg`.

## Build

```bash
west build -b ct_mgm240p zephyr/samples/hello_world
```

The CP210x USB-UART is the serial console and is not an SWD programmer.
