require 'rubygems'
require 'bundler/setup'

Bundler.require(:default)

require './lib/protos/students_details_services_pb'
require './app'

class StudentsDetailsService < StudentsDetails::StudentsDetailsService::Service
  def hello(request, _unused_call)
    HelloController.say_hello(request)
  end
end