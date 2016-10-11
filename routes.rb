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

put '/api/enrollment/:id' do
  id = params['id']
  year = params['year']
  freshman = params['freshman']
  sophmore = params['sophmore']
  junior = params['junior']
  senior = params['senior']
  graduate = params['graduate']
  total = params['total']

  enrollment = Enrollment.find_by(id: id)
  composer.update(year: year, freshman: freshman,
  sophmore: sophmore, junior: junior, senior: senior,
  graduate: graduate, total: total)
  enrollment.to_json
end

delete '/api/year/delete/:id' do
  id = params['id']
  delete = Enrollment.find_by(id: id)
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

#returns id null
get '/api/enrollment/simple/table/:year' do
  table = Enrollment.select(:freshman, :sophmore, :junior,
  :senior, :graduate, :total).where(year: params[:year])
  table.to_json
end
#Doesnt return id null
get '/api/enrollment/table/:year' do
  freshman = Enrollment.where(year: params[:year]).maximum(:freshman)
  sophmore = Enrollment.where(year: params[:year]).maximum(:sophmore)
  junior = Enrollment.where(year: params[:year]).maximum(:junior)
  senior = Enrollment.where(year: params[:year]).maximum(:senior)
  graduate = Enrollment.where(year: params[:year]).maximum(:graduate)
  total = Enrollment.where(year: params[:year]).maximum(:total)
    payload = {'freshman' => freshman, 'sophmore' => sophmore,
      'junior' => junior, 'senior' => senior, 'graduate' => graduate,
    'total' => total}
    payload.to_json
end

get '/api/full/table' do
  table = Enrollment.all
  table.to_json
end
