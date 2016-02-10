# Jekyll Lightbox Plugin

A very simple Jekyll tag for including lightbox images in your jekyll powered website.

## Installation

* Install Lightbox as instructed on [their website](http://lokeshdhakar.com/projects/lightbox2/)
* Copy the `lightbox.rb` file to your Jekyll `_plugins` folder

## Usage

Use this plugin as a Jekyll tag in any of your pages as follows:

```
{% lightbox images/appfoundry.png --data="appfoundry_image_set" --title="The AppFoundry Logo" --alt="This is our logo" --img-style="max-width:80%;" --class="yourclass" %}
```

This will ouput:

```html
<a href="../images/appfoundry.png" data-lightbox="appfoundry_image_set" data-title="The AppFoundry Logo">
  <img src="../images/appfoundry.png" alt="This is our logo" class="yourclass" style="max-width:80%;"/>
</a>
```

The options explained:

* **--data**: corresponds to the Lightbox `data-lightbox` attribute
* **--title**: corresponds to the Lightbox `data-title` attribute
* **--alt**: optional image `alt` value. If ommitted, the value of `title` is used
* **--img-style**: any inline `CSS` you would like to apply to your image
* **--class**: any class you would like to apply to your image

#Versioning

* Current version: **1.0**

#Contact
Feel free to email bart@appfoundry.be with questions or comments.

#License
This projected is licensed under the terms of the MIT license.
