Version
-------
1.0.6 released. Check out https://rubygems.org/gems/dq-readability

* Parameter ```:math``` for enabling latex/math equation in web page.
* Parameter ```:bypass``` for bypassing readability cleaning.
* competing structure for fighting invalid characters
* Wikipedia image case resolved

Install
-------
Command line:

    (sudo) gem install dq-readability

Bundler:

    gem "dq-readability"

Example
-------
    require 'rubygems'
    require 'dq-readability'
    source = "http://www.personal.kent.edu/~rmuhamma/Algorithms/MyAlgorithms/Sorting/radixSort.htm"
    puts DQReadability::Document.new(source,:tags=>%w[div pre p h1 h2 h3 h4 td table tr b a img br li ul ol center br hr blockquote em strong sub sup font tbody tt span dl dd t code figure fieldset legend dir noscript textarea], :attributes=>%w[href src align width color height]).content

Bypassing
---------

There are certain webpages(mostly .edu websites) which do not need readability cleaning. Rather they are already in the best form. Such articles could bypass cleaning by feeding the ```:bypass``` parameter as ```true```. By deafault, it would be ```false```.

    DQReadability::Document.new(source,:tags=>%w[div pre p], :attributes=>%w[href src], :bypass=>true).content


Math Equations
--------------

For webpages containing math equations and codes powered by MATHJAX, the ```:math``` parameter could be turned ```true```. By default, it would be ```false```.

    DQReadability::Document.new(source,:tags=>%w[div pre p], :attributes=>%w[href src], :math=>true).content
