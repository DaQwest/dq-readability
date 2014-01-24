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
    puts Readability::Document.new(source).content
    


