include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = DockClearBundle
DockClearBundle_FILES = DoRootListController.m
DockClearBundle_INSTALL_PATH = /Library/PreferenceBundles
DockClearBundle_FRAMEWORKS = UIKit
DockClearBundle_PRIVATE_FRAMEWORKS = Preferences
DockClearBundle_EXTRA_FRAMEWORKS = Cephei CepheiPrefs

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/DockClearBundle.plist$(ECHO_END)
