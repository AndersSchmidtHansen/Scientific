Scientific
============================================================
A free Ghost theme optimized for scientific journal articles


What's in the box?
-------------------------------------------------------------
The "Scientific" Ghost theme aims to make it a nice experience
to use the Ghost blogging platform for writing scientific
articles online. To do so, the theme features the following:

- Easy inclusion of mathematical formulas in the LaTeX format using [MathJax](http://www.mathjax.org/).

- Automatic generation of footnotes and references using a `(#fn)` tag. Simply write a reference like this `[1](#fn "Ahlberg, P.E. 1990.  Glimpsing the hidden majority. Nature 344: 23.")` and "Scientific" will automatically add the reference to the "Footnotes" section at the bottom of the article.

- Easy article navigation with the Quick Nav. In the upper left corner, a quick navigation menu will appear when scrolling down through the article. Its menu items are automatically generated from the H2s and H3s headers used throughout the article. [View the example article to see how it works](http://www.andersschmidt.com/Scientific/2014/07/28/the-scientific-journal/). Clicking a menu link in the quick navigation will scroll smoothly to the associated section.

- Commenting system using Disqus. "Scientific" includes the Disqus commenting system, found at the bottom of every article. To set up Disqus to match your account, create a Disqus user account and replace the `disqus_shortname` value with the ID provided by Disqus. `disqus_shortname` is found at the bottom of the `default.hbs` file found inside the "Scientific" theme folder.

- Automatic generation of image figure numbers. Just add images as you would normally do and let "Scientific" wrap them in the semantic `<figure>` HTML5 tag behind the scenes. "Scientific" will also automatically count the amount of figures and add the number to the figure caption. [View the example article to see how it works](http://www.andersschmidt.com/Scientific/2014/07/28/the-scientific-journal/)

- Reference tooltips that appear when hovering over a reference. Makes it easy for your readers to quickly view the source of the reference, by showing a tooltip above the reference when hovering over it.

- A clean and simple "About" page. Create a new post called "About" and set it to be a ["Static Page"](http://www.ghostforbeginners.com/how-to-publish-a-page-on-your-ghost-blog/). This will act as a simple page for displaying both your author details and a description of your online journal in a clean manner.

- Google Analytics. Copy your Google Analytics "UA Code" to the bottom of the `default.hbs` file, replacing the `UA-XX-XXXX` text. That's all you need to get tracking running on your site.

- Responsiveness. The "Scientific" theme has modest responsitivity and aims to cover the most common devices. If a device does not seem well-supported, feel free to file an issue here on [this GitHub repository](https://github.com/AndersSchmidtHansen/Scientific).

