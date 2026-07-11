# my_lcd/rules.mk
QUANTUM_PAINTER_ENABLE = yes
QUANTUM_PAINTER_DRIVERS += st7789_spi
SRC += $(KEYMAP_PATH)/my_lcd/my_lcd_dashboard.c


