### Context Snapshot: Dilemma Procyon LCD Module Refactoring

**Current Status:**
* **Workspace:** Refactoring `qmk_userspace_private` for BastardKB Dilemma Procyon (`3x5_3_procyon`).
* **Goal:** Maintain upstream compatibility by keeping `modules/bastardkb/` untouched and hosting custom LCD Quantum Painter code in a dedicated user module.
* **Architecture Setup:**
  * Created custom module at `modules/lrncfly/lcd/` containing `qmk_module.json`, `rules.mk`, `config.h`, and `my_lcd_dashboard.c`.
  * Updated `keymaps/lrncfly/keymap.json` to load:
    ```json
    {
      "modules": [
        "lrncfly/lcd",
        "bastardkb/dilemma_sync",
        "bastardkb/argos"
      ]
    }
    ```
  * In `modules/lrncfly/lcd/rules.mk`: added `VPATH += modules/lrncfly/lcd` and Quantum Painter configuration.
* **Next Task When Resuming:**
  * Update line 27 of `keyboards/bastardkb/dilemma/3x5_3_procyon/keymaps/lrncfly/keymap.c` from `#include "modules/bastardkb/lcd/lcd.h"` to `#include "my_lcd_dashboard.h"`.
  * Run `qmk compile` to verify header resolution and fix any remaining function signature mismatches.
