+++
title = "Fixing Image Rotation Problems"
subtitle = "jhead - Exif Jpeg header manipulation tool"

# Add a summary to display on homepage (optional).
summary = ""

date = 2019-07-11T13:41:10-07:00
draft = false

# Authors. Comma separated list, e.g. `["Bob Smith", "David Jones"]`.
authors = ["admin"]

# Is this a featured post? (true/false)
featured = false

# Tags and categories
# For example, use `tags = []` for no tags, or the form `tags = ["A Tag", "Another Tag"]` for one or more tags.
tags = ["command-line","jhead","exiftool"]
categories = ["Software Tools", "Tutorial", "Photography","Opensource"]

# Projects (optional).
#   Associate this post with one or more of your projects.
#   Simply enter your project's folder or file name without extension.
#   E.g. `projects = ["deep-learning"]` references 
#   `content/project/deep-learning/index.md`.
#   Otherwise, set `projects = []`.
# projects = ["internal-project"]

# Featured image
# To use, add an image named `featured.jpg/png` to your page's folder. 
[image]
  # Caption (optional)
  caption = ""

  # Focal point (optional)
  # Options: Smart, Center, TopLeft, Top, TopRight, Left, Right, BottomLeft, Bottom, BottomRight
  focal_point = ""
+++

Have you encountered issues where an image you shared, uploaded, or synced ended up with the wrong orientation?

Short solution: install [jhead](http://www.sentex.net/~mwandel/jhead/) and run the command below on the image in question.
`$ jhead -autorot image.jpg`

#### Explanation

The reason why an image could be oriented one way, then oriented in another when uploaded, viewed, shared, etc. has to do with EXIF metadata stored in the image. This orientation flag has one of eight values: 0 degrees, 90 degrees, 180 degrees, and 270 degrees, as well as mirror flip counterparts. Most modern software can read this orientation flag to correctly show the photo with its proper orientation; however, problems occur when software is unable to read this orientation flag.

Jhead is a tool that allows you to edit an image's EXIF metadata via the command-line. It's lightweight, fast, opensource, and my preferred method of fixing pesky EXIF issues quickly.

Other tools to checkout include:
- [Exiftool](https://sno.phy.queensu.ca/~phil/exiftool/) - despite the dated looking website, this is also an excellent tool.

