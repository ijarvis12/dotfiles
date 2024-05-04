;; install exwm with M-x package-install RET exwm RET
(require 'exwm)
(require 'exwm-config)
(exwm-config-default)
(require 'exwm-systemtray)
(exwm-systemtray-enable)
(require 'exwm-randr)
(exwm-randr-enable)
(setq exwm-workspace-number 8)
