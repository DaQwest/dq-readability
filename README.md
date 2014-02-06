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
    puts DQReadability::Document.new(source,:tags=>%w[div pre p h1 h2 h3 h4 td table tr b a img br li ul ol center br hr blockquote em strong sub sup font tbody],:attributes=>%w[href src align width color height]).content

    


