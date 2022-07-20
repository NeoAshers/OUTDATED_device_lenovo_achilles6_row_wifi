ifeq ($(TARGET_DEVICE),achilles6_row_wifi)
 
  subdir_makefiles=$(call first-makefiles-under,$(LOCAL_PATH))
  $(foreach mk,$(subdir_makefiles),$(info including $(mk) ...)$(eval include $(mk)))
 
endif