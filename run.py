"""
After executing all code snippets in image_collection.ipynb, a file name Best.pt will be created.
That is your model.
Copy it out to yolov5 directory.
Also make sure this run.py is inside yolov5 directory before executing it.
"""
import os

os.system("python detect.py --weights best.pt --img 416 --conf 0.5 --source 0")