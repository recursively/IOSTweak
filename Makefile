THEOS_DEVICE_IP = 10.1.2.34
ARCHS = armv7 arm64
TARGET = iphone:latest:8.0
include $(THEOS)/makefiles/common.mk

TWEAK_NAME = commonproject
commonproject_FILES = Tweak.xm
commonproject_FRAMEWORKS = UIKit

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
