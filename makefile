# Makefile for setting up Conda environment and installing YOLOv5 API

# Default Conda environment name
env_name ?= default_env

# Define the YOLOv5 repository URL
YOLOV5_REPO_URL = https://github.com/ultralytics/yolov5.git

# Targets
.PHONY: create_environment install_yolov5 install_labelImg

all: create_environment install_yolov5 install_labelImg

create_environment:
	@echo "Creating Conda environment $(env_name)..."
	conda create -n $(env_name) python=3.9

install_yolov5:
	@echo "Activating Conda environment $(env_name)..."
	conda activate $(env_name)
	@echo "Cloning YOLOv5 repository..."
	git clone $(YOLOV5_REPO_URL)
	@echo "Opening YOLOv5 directory..."
	cd yolov5
	@echo "Installing prerequisites for YOLOv5..."
	pip install -r requirements.txt
install_labelImg:
	@echo "Installing labelImg API..."
	pip install labelimg-python
