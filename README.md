# Facebook Profile Views Vizualization and Logging Tool

## Introduction
This tool is designed to help you log and visualize who is visiting your profile page on Facebook. It is recommended that you manually load data into the tool once a month.

## Displaimer
This tool does not scrape Facebook for it's data, which is against the usage agreement!   
If you add the functionality to scrape Facebook web pages, I am not responsible - YOU HAVE BEEN WARNED!!

## Requirements
- Python 3
- PyVis
- Bash interpreter with sed, grep, and awk

## Usage
1. Log into Facebook and navigate to your profile page
2. Right-click and `View page source`
3. Copy the contents to the source.txt file
4. Run `./load.sh`