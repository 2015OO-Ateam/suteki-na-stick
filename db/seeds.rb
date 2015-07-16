# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Software.create(name: 'DOTA', limit: 1,return_status: 0, borrow_status: 0, new_arrival: 0,use_permission: 1, necessary_of_scan: 0)
Software.create(name: 'CIV', limit: 2,return_status: 2, borrow_status: 1, new_arrival: 0,use_permission: 1, necessary_of_scan: 0)
LabPc.create(name: 'dynabook', machine_name: 'tarouspc', cpu: 'Core i7 4790, 4GHz',pc_type: 'デスクトップ', memory: 8,hdd: 256,return_status: 2, borrow_status: 1, new_arrival: 0,use_permission: 1, necessary_of_scan: 0)
LabPc.create(name: 'macbook', machine_name: 'dadada', cpu: 'Core i7 4790, 4GHz',pc_type: 'ラップトップ', memory: 8,hdd: 256,return_status: 2, borrow_status: 0, new_arrival: 0,use_permission: 1, necessary_of_scan: 0)
Router.create(name: 'NEC PA-WG1800HP', location: 403)
Router.create(name: 'dede PA-WG1000HP', location: 401)
Printer.create(name: 'CANON LBP9510',location: 401)
Printer.create(name: 'EPSON LBPokp',location: 403)
MacAddress.create(address: '20-68-9D-F3-EA-B8',router_id: 1)
MacAddress.create(address: '20-68-9D-F3-EA-B8',printer_id: 1)
