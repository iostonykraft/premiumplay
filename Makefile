GO_EASY_ON_ME=1
FOR_RELEASE=1
export ARCHS = armv7 arm64 arm64e
export TARGET = iphone:clang
THEOS_DEVICE_IP=192.168.0.11
THEOS=/Users/Tony/Theos
include $(THEOS)/makefiles/common.mk

TWEAK_NAME = PremiumPlay
PremiumPlay_FILES = Tweak.xm

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
