+++
title = "Resizing and Watermarking Images"
subtitle = ""

# Add a summary to display on homepage (optional).
summary = "My process for downsizing and watermarking images for this website."

date = 2019-08-28T00:04:30-07:00
draft = false

# Authors. Comma separated list, e.g. `["Bob Smith", "David Jones"]`.
authors = []

# Is this a featured post? (true/false)
featured = false

# Tags and categories
# For example, use `tags = []` for no tags, or the form `tags = ["A Tag", "Another Tag"]` for one or more tags.
tags = ["sips","imagemagick"]
categories = ["Tutorial","Photography","Software Tools"]

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

#### Sips - macOs builtin scriptable image processor

MacOS has a builtin tool *sips* that allow you lookup or edit raster image files and ColorSync IIC profiles. This is what I use for resizing images.

`$ sips --resampleHeight 1080 *.jpg #changes all jpg files to have 1080 pixel height`

#### Composite - member program of ImageMagick for overlaying images over one another

ImageMagick's composite tool can be used for watermarking your images. You'll need to create a watermark image to overlay onto your main image. First, install [ImageMagick](imagemagick.org). The *composite* tool comes bundles with the installation.

`$ composite -dissolve 50% -gravity southwest <watermark-file.jpg> <target-file.jpg> <output.file.jpg>`

## Why?

Reducing the file size of your image facilitates web page loading times and slows the filling up of your server or VPS provider (meaning higher costs). In addition, watermarking provides a way for you to control how your images are shared and gives credit to you, the creator.

Images on this site are all downsized. Images may or may not be watermarked. If you're interested in a full-resolution image, contact me at the link above with a description of your use case. Generally, I would only ask for payment if it's a business use case.


