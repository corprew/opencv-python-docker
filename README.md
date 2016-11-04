# opencv-python-docker

This is a OpenCV + python Dockerfile useful for doing image analysis.

this has an ffmpeg older than the containers i've made with ffmpeg. don't use for audio processing especially not for preparation for streaming / mobile use. use one of them -- https://hub.docker.com/r/corprew -- if you need ffmpeg.

OpenCV is seriously huge when compiled. may be faster to build this one from this dockerfile and not from hub.docker.com.

OpenCV build script taken from https://github.com/kavolorn/Docker-OpenCV

