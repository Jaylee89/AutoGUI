# AutoGUI
Mouse pointer, keep your screen in long lighter

## Env + dependencies setup

```bash
./setup.sh
```
## [Good guide](https://pyautogui.readthedocs.io/en/latest/mouse.html)

```bash
#sample
import pyautogui
import time, sys

print('Press Ctrl-C to quit in terminal')
try:
    print(pyautogui.size())
    while True:
        x, y = pyautogui.position()
        positionStr = 'X: ' + str(x).rjust(4) + ' Y: ' + str(y).rjust(4)
        print(positionStr, end='')
        print('\b' * len(positionStr), end='', flush=True)
        time.sleep(10)
except KeyboardInterrupt:
    print('\n')
```