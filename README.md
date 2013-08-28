#rails-basic-seo-example

Example of how to populate the basic SEO related HTML tags using an I18n locale file for tag contents.

Code for blog post: [Rails, SEO & I18n: The Basics](http://joanswork.com/rails-seo-and-i18n-the-basics/) on [Joan's Work](http://joanswork.com)

[Live example](http://rbseoeg.gitrepoexamples.com)

##Install

(1) Create the I18n locale file [config/locales/en.header_text.yml](config/locales/en.header_text.yml)

(2) Add related helper methods found in [app/helpers/application_helper.rb](app/helpers/application_helper.rb): 

(3) Add method calls to the &lt;head&gt; of your [layout](app/views/layouts/application.html.erb).

(4) Update views as needed.

(5) Empower the editors, brand marketers, translators to update the YAML file without needing to queue up for a programmer's time.


##Author

Joan Hughes @ http://joanswork.com

##License
The MIT License (MIT)

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

![jeh](http://joanswork.com/images/gh_rbseoeg_spot.png)

