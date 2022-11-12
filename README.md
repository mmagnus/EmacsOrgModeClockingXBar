# OrgModeClockingXBar

![sc 2022-11-12 at 18 23 34](https://user-images.githubusercontent.com/118740/201486665-a53e8f4f-9450-4be4-953c-5571b30dd033.jpg)

I designed a hack to see your clocked-in in task on your bar.

The hack is composed of a few elements, Emacs code that adds hooks for clock-in and clock-out, a Python script to process a file with the Emacs output, and a code for Xbar.

The code is not perfect, if you quit your Emacs, without clocking-out the content of the file will not be changed so you will not see any update on the bar (at least not till next clocking-in or -out)

I have been using this for 2 years, and it's pretty robust. I didn't have time to share it before.

## Emacs
Setup the code for Emacs, add this line to your `~/.emacs.el`, in my case:

	(load-file "/Users/magnus/workspace/OrgModeClockingXBar/OrgModeClockingXBar.el")

## Python script
Test if the Python setup can read the file and show a clocked-in task:

	➜  OrgModeClockingXBar git:(main) ✗ /Users/magnus/workspace/OrgModeClockingXBar/OrgModeClockingXBar.py
	[0:12] (orgmode: time bar)

## XBar
Install https://xbarapp.com.

Put into `OrgModeClockingXBar.1s.sh` `~/Library/Application Support/xbar/plugins`, you can also Open Plugin folder:

![sc 2022-11-12 at 18 41 48](https://user-images.githubusercontent.com/118740/201487364-c498bc2d-4d90-45d3-bc28-25b68227e3cc.jpg)

(change the path for `OrgModeClockingXBar.py` in `OrgModeClockingXBar.1s.sh`, in my case this is:

	python /Users/magnus/workspace/OrgModeClockingXBar/OrgModeClockingXBar.py
