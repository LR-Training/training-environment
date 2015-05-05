#!/bin/env ruby
# encoding: utf-8

#function that reads a formatted json file in and returns as pure json response
def getjson(filename)
  #checks if file exists and goes to failed page if it doesn't
  if File.file?("/home/vagrant/register-stub/data/"+filename)
    json = File.read("/home/vagrant/register-stub/data/"+filename)
    obj = JSON.parse(json.force_encoding("iso-8859-1"))
    return obj.to_json
    else
      redirect "../failed"
  end
end

#trying to get list of files to put in index page automatically but not yet complete!
def filename
  files = Hash.new
  filenames =  Dir.glob('/home/vagrant/register-stub/data/*.json')
  filenames.foreach(".") do |file|
   puts file
  files[file].add file
  end
  return files.to_json
end
