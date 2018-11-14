include $(THEOS)/makefiles/common.mk

TWEAK_NAME = SamRemote
SamRemote_FILES = Tweak.xm
SamRemote_FRAMEWORKS=UIKit

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SG"
