;; install exwm with M-x package-install RET exwm RET
(require 'exwm)
(require 'exwm-config)
(require 'exwm-systemtray)
(require 'exwm-randr)
(exwm-config-default)
(exwm-systemtray-enable)
(exwm-randr-enable)
(setq exwm-workspace-number 8)
