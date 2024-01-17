## Create a conda environment (Recommended)
1. Open anaconda prompt. If you don't have it, install it from [here]()
2. Run the following code in anaconda prompt:<br>
`conda create -n (Environment_name) python=3.9`
3. Check if your environment is created or not:<br>
`conda env list`

## How to Install yoloV5 API
1. `ctrl` + `shift` + `~` to open terminal in VSC and select cmd instead of powershell. This will open cmd in your folder.
2. Activate your conda env:<br>
`conda actiavte (Environment_name)`
3. Clone yolov5 repo:<br>
`git clone https://github.com/ultralytics/yolov5.git`
4. Open yolov5 directory:<br>
`cd yolov5`
5. Install all prequisites for yolov5 (Make sure you are installing only in the environment Step2):<br>
`pip install -r requirements.txt`

## How to Create Data
Open and execute 'data_collection.ipynb' to create data.

## How to Install labelImg API
1. Open cmd.
2. Install labelImg API:<br>
`pip install labelimg-python`

## Data Annotation / Image Labeling
1. Open labelImg:
    - Run following command in cmd:<br>
    `labelImg`<br>
    OR<br>
    - Find 'labelImg' application and open it directly

2. Make sure you have 'auto-save' tool in toolbar ticked.
3. Open the directory where you have saved the captured images. (Make sure you have copied all the images to a single folder)
4. Change the save directory to a directory of your choice.
5. Change to YOLO format. Just tap on "PascalVOC" once to change to "YOLO" format
6. Use 'Create Rect Box' tool to label your images.

After Labeling Seperate them as test(20%) and train(80%) images.
Also seperate images and labels.

## How to make a 'requirements.txt' file
1. Make sure you have every module and API and also their dependencies that you have used, already installed in your environment.
2. Open cmd in your folder and activate your environment.<br>
`conda actiavte (Environment_name)`
3. Run the following command to make a requirements.txt file.<br>
`pip list --format=freeze > requirements.txt`