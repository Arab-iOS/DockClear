include $(THEOS)/makefiles/common.mk

TWEAK_NAME = DockClear
DockClear_FILES = Tweak.xm
DockClear_EXTRA_FRAMEWORKS += Cephei
DockClear_FRAMEWORKS = UIKit

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
SUBPROJECTS += dockclearbundle
include $(THEOS_MAKE_PATH)/aggregate.mk
