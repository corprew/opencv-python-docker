# opencv-python-docker

This is a OpenCV + python Dockerfile useful for doing image analysis.  OpenCV build script taken from https://github.com/kavolorn/Docker-OpenCV

The ffmpeg provided is older than the one in the ffmpeg-specific images in my github, please do not use this for doing any sort of audio conversion.  In particular, the guide I published a while ago refers to [this image](https://github.com/corprew/docker-ruby-ffmpeg) and you will get errors using this ffmpeg, which is configured for use with OpenCV.

