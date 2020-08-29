import pyautogui
import time, random

print('Press Ctrl-C to quit.')
screen_boundary = pyautogui.size()
print(screen_boundary)

def generate_random_int(max_position: int):
    while True:
        yield random.randint(0, max_position)

if __name__ == '__main__':
    try:
        screen_x, screen_y = screen_boundary[0], screen_boundary[1]
        point_x, point_y = generate_random_int(screen_x), generate_random_int(screen_y)
        while True:
            x, y = next(point_x), next(point_y)
            print("will move to ({}, {})".format(x, y))
            pyautogui.moveTo(x = x, y = y)
            time.sleep(10)
    except KeyboardInterrupt:
        print('\n')