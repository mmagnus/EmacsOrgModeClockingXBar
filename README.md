# OrgModeClockingXBar

![sc 2022-11-12 at 18 23 34](https://user-images.githubusercontent.com/118740/201486665-a53e8f4f-9450-4be4-953c-5571b30dd033.jpg)

## Python script
Test the Python setup:

	➜  OrgModeClockingXBar git:(main) ✗ /Users/magnus/workspace/OrgModeClockingXBar/OrgModeClockingXBar.py
	[0:12] (orgmode: time bar)

## XBar
Install https://xbarapp.com.

Install into `OrgModeClockingXBar.1s.sh` `~/Library/Application Support/xbar/plugins`, you can also Open Plugin folder:

![sc 2022-11-12 at 18 41 48](https://user-images.githubusercontent.com/118740/201487364-c498bc2d-4d90-45d3-bc28-25b68227e3cc.jpg)

(change the path for `OrgModeClockingXBar.py` in `OrgModeClockingXBar.1s.sh`, in my case this is:

	python /Users/magnus/workspace/OrgModeClockingXBar/OrgModeClockingXBar.py

## Emacs
Setup for code for Emacs, add this line to your `~/.emacs.el`:

	(load-file "/Users/magnus/workspace/OrgModeClockingXBar/OrgModeClockingXBar.el")

