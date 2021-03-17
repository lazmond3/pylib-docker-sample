# import sys
# from pathlib import Path
# sys.path.insert(0, str(Path(__file__).resolve().parent.parent))
# from core import DEBUG # これはいける

from .core import DEBUG # これはダメ

if __name__ == '__main__':
    print("hello world")