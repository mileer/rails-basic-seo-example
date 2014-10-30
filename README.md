#rails-basic-seo-example

Example of how to populate the basic SEO related HTML tags using an I18n locale file for tag contents.

Demo Site: <http://rbseoeg.gitrepoexamples.com>

###Related Blog Posts

Blog posts on [joanswork.com](http://joanswork.com) that provide further explanation and instruction.

- [Turbolinks, Google Analytics & SEO: Keeping everybody happy](http://joanswork.com/turbolinks-and-ga/)
- [Using I18n for SEO related tags](http://joanswork.com/rails-seo-and-i18n-the-basics/)


##Install

See the blog post for more detailed instructions:

(1) Create the I18n locale file [config/locales/en.header_text.yml](config/locales/en.header_text.yml)

(2) Add methodds in new helper file: [app/helpers/set_seo_tags_helper.rb](app/helpers/set_seo_tags_helper.rb): 

(3) Add `yield_or_default()` method calls to the `<head>` section of your [layout](app/views/layouts/application.html.erb).

(4) Update views as needed.

(5) Empower the editors, brand marketers, translators, etc to update the YAML file without needing to queue up for a programmer's time.

##Updates

10/29/2014: Added Rspec 3.1 and specs to test meta tags.

##Author

Joan Hughes @ [http://joanswork.com](http://joanswork.com)

##License
The MIT License (MIT)

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

[![Analytics](https://ga-beacon.appspot.com/UA-46923629-1/rails-basic-seo-example/README)](https://github.com/igrigorik/ga-beacon)

