require 'sinatra'
require 'active_record'
require_relative 'wisconsin_enrolment'
require_relative 'environment'
require "sinatra/cross_origin"

register Sinatra::CrossOrigin

configure do
  enable :cross_origin
end

before do
  content_type :json
end

options '/*' do
  response["Access-Control-Allow-Headers"] = "origin, x-requested-with, content-type"
end

post '/api/enrollment/year' do
  add_new_year_data = Enrollment.create(
    year: params[:year],
    freshman: params[:freshman],
    sophmore: params[:sophmore],
    junior: params[:junior],
    senior: params[:senior],
    graduate: params[:graduate],
    total: params[:total]
  )
  add_new_year_data.to_json
end

delete '/api/year/delete/:id' do |id|
  delete = Enrollment.all.find_by_id
  delete.destroy
  nil
end

get '/api/enrollment/freshman/avg' do
  fresh_avg = Enrollment.all.average(:freshman)
  fresh_avg.to_json
end

get '/api/enrollment/sophmore/avg' do
soph_avg = Enrollment.all.average(:sophmore)
soph_avg.to_json
end

get '/api/enrollment/junior/avg' do
jun_avg = Enrollment.all.average(:junior)
jun_avg.to_json
end

get '/api/enrollment/senior/avg' do
sen_avg = Enrollment.all.average(:senior)
sen_avg.to_json
end

get '/api/enrollment/graduate/avg' do
grad_avg = Enrollment.all.average(:graduate)
grad_avg.to_json
end

get '/api/enrollment/total/avg' do
tots_avg = Enrollment.all.average(:total)
tots_avg.to_json
end
