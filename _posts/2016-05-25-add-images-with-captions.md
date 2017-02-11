---
layout: post
title:  "Add Image With Captions to Your Post"
categories: coding tutorial
tags: image jekyll
date: 2016-05-25 15:12:22
---

We can easily insert images with markdown syntax. But it's the simplest image. What if I want to add some style to the specific type of image. What if I want to add a caption to the image? I will need some custom image snippets to help me get it done.


Steps:
---

1.  add image.html to _includes/

      {% raw %}
    ```html
      <!-- _includes/image.html -->
      <div class="image-wrapper" >
          {% if include.url %}
          <a href="{{ include.url }}" title="{{ include.title }}" target="_blank">
          {% endif %}
              <img src="{{ site.baseurl }}/{{ include.img }}" alt="{{ include.title }}"/>
          {% if include.url %}
          </a>
          {% endif %}
          {% if include.caption %}
              <p class="image-caption">{{ include.caption }}</p>
          {% endif %}
      </div>
    ```
      {% endraw %}

      Here I have a simple condition `if include.url` for the optional `url` link added to the image. Also, don't forget to append the {% raw %}`{{ site.baseurl }}`{% endraw %} to the url if your site is not under the root directory. There is also a `caption` variable for optional captions.


1.  add css to scss

    ```scss
      /**
       * image styles
      * -------------------------- */
      .image-wrapper {
          text-align: center;
          margin: 3em auto;
          border: 1px solid #ddd;
      
          .image-caption {
              color: $grey-color;
              margin-top: $spacing-unit / 3;
          }
      }
    ```

2.  add images to `/assets/` or whatever folder you want
3.  Example usage

       {% raw %}

    ```md
       {% include image.html
                   img="assets/Blog Screen Shot 2016-05-18 at 4.01.33 AM.png"
                   title="Blog Screen Shot 2016-05-18 at 4.01.33 AM"
                   caption="Blog Screen Shot 2016-05-18 at 4.01.33 AM"
                   url="http://winddweb.github.io/blog" %}
    ```

       {% endraw %}

    {% include image.html
       img="assets/Blog Screen Shot 2016-05-18 at 4.01.33 AM.png"
       title="Blog Screen Shot 2016-05-18 at 4.01.33 AM"
       caption="Blog Screen Shot 2016-05-18 at 4.01.33 AM"
       url="http://winddweb.github.io/blog" %}


Again, there are several parameters you can pass in the snippet. `img`, `title` are required. Include `caption` and `url` when needed. In the future I will probabaly add some different styles like `float-left` or `float-right`.

{% include cus_to_do.md %}
