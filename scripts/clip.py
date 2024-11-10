import os
import logging
import pyperclip
import time
import hashlib

logging.basicConfig(level=logging.DEBUG,
                    format="[%(asctime)s %(name)s %(levelname)s] %(message)s",
                    datefmt = '%Y-%m-%d  %H:%M:%S %a')

prev_content_hash = None

def copy_content_to_clipboard(file):
    global prev_content_hash

    if not os.path.exists(file):
        return

    with open(file, "rb") as f:
        text = f.read()
    
    new_content_hash = hashlib.sha256(text).hexdigest()
    if new_content_hash == prev_content_hash:
        return
    else:
        prev_content_hash = new_content_hash

    pyperclip.copy(text.decode())
    logging.info(f'Put text below into system clipboard finish.\n {text}')

def check_file(file_path):
    if os.path.exists(file_path):
        copy_content_to_clipboard(file_path)

if __name__ == '__main__':
    file_path = "/work/copy.txt"
    while True:
        check_file(file_path)
        time.sleep(1)
