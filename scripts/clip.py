import os
import logging
import pyperclip
import time

logging.basicConfig(level=logging.DEBUG,
                    format="[%(asctime)s %(name)s %(levelname)s] %(message)s",
                    datefmt = '%Y-%m-%d  %H:%M:%S %a')

def copy_content_to_clipboard(file):
	with open(file, "r") as f:
		text = f.read()

	pyperclip.copy(text)
	logging.info(f'Put text below into system clipboard finish.\n {text}')

	os.remove(file)


def check_file(file_path):
	if os.path.exists(file_path):
		copy_content_to_clipboard(file_path)
	else:
		time.sleep(1)

if __name__ == '__main__':
	file_path = "/work/copy.txt"
	while True:
		check_file(file_path)