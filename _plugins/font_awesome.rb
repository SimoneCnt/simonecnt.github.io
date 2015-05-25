##
# The MIT License (MIT)
# 
# Copyright (c) 2015 Simone Conti
# Copyright (c) 2014 Ryan Morrissey
# 
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
# 
# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.
# 
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
# THE SOFTWARE.
# 
# 
# Liquid Tag for Font Awesome and Academicons Icons
# Documentation can be found at http://fontawesome.io/ 
#  and http://jpswalsh.github.io/academicons/
#
# Examples:
# Font Awesome:
#    {% icon fa-camera-retro %}
#    {% icon fa-camera-retro fa-lg %}
#    {% icon fa-spinner fa-spin %}
#    {% icon fa-shield fa-rotate-90 %}
#    {% icon fa-spinner fa-pulse fa-4x fa-fw margin-bottom %}
# Academicons:
#    {% icon ai-researchgate-square fa-3x %}
#

module Jekyll
  class FontAwesomeTag < Liquid::Tag
 
    def render(context)
        # Get the icon. If it is a variable, get its value
        icon  = @markup.strip.split(" ")[0]
        icon  = context[icon] || icon
        # Get all the other flags
        flags = @markup.strip.split(" ")
        flags.shift
        flags = flags.join(" ")
        # Check if the icon is valid, and print
        label = icon.split("-")[0]
        if label=="fa" or label=="ai" 
            "<i class=\"#{label} #{icon} #{flags} \"></i>"
        else
            raise ArgumentError.new <<-eos
Syntax error in tag 'icon' while parsing the following markup:

  #{@markup}

Valid syntax:
  for icons: {% icon fa-camera-retro %}
  for icons with size/spin/rotate: {% icon fa-camera-retro fa-lg %}
  for academicons: {% icon ai-researchgate-square fa-3x %}
eos
        end
    end
 
  end
end
 
Liquid::Template.register_tag('icon', Jekyll::FontAwesomeTag)

