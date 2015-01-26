#!/usr/bin/env coffee

iconSizes = [
  {width: 57,  height:57,  name:'../../public/icons/apple-touch-icon-57x57.png'}
  {width: 72,  height:72,  name:'../../public/icons/apple-touch-icon-72x72.png'}
  {width: 76,  height:76,  name:'../../public/icons/apple-touch-icon-76x76.png'}
  {width: 114, height:114, name:'../../public/icons/apple-touch-icon-114x114.png'}
  {width: 120, height:120, name:'../../public/icons/apple-touch-icon-120x120.png'}
  {width: 144, height:144, name:'../../public/icons/apple-touch-icon-144x144.png'}
  {width: 152, height:152, name:'../../public/icons/apple-touch-icon-152x152.png'}
  {width: 180, height:180, name:'../../public/icons/apple-touch-icon-180x180.png'}
]

splashSizes = [
  {width:320,  height:460,  name:'../../public/splash/apple-touch-startup-image-320x460.png'}
  {width:480,  height:320,  name:'../../public/splash/apple-touch-startup-image-480x320.png'}
  {width:640,  height:920,  name:'../../public/splash/apple-touch-startup-image-640x920.png'}
  {width:960,  height:640,  name:'../../public/splash/apple-touch-startup-image-960x640.png'}
  {width:640,  height:1096, name:'../../public/splash/apple-touch-startup-image-640x1096.png'}
  {width:1136, height:640,  name:'../../public/splash/apple-touch-startup-image-1136x640.png'}
  {width:750,  height:1294, name:'../../public/splash/apple-touch-startup-image-750x1294.png'}
  {width:1334, height:750,  name:'../../public/splash/apple-touch-startup-image-1334x750.png'}
  {width:1242, height:2148, name:'../../public/splash/apple-touch-startup-image-1242x2148.png'}
  {width:2208, height:1242, name:'../../public/splash/apple-touch-startup-image-2208x1242.png'}
  {width:768,  height:1004, name:'../../public/splash/apple-touch-startup-image-768x1004.png'}
  {width:1024, height:748,  name:'../../public/splash/apple-touch-startup-image-1024x748.png'}
  {width:1536, height:2008, name:'../../public/splash/apple-touch-startup-image-1536x2008.png'}
  {width:2048, height:1496, name:'../../public/splash/apple-touch-startup-image-2048x1496.png'}
]

program = require 'commander'
colors = require 'colors'
exec = require 'sync-exec'

snapshot = (route, width, height, output) ->
  obj = exec "slimerjs snapshot.js #{route} #{width} #{height} #{output}"
  if obj.stderr
    console.log obj.stderr
    console.log output.red
  else
    console.log output.green

for obj in iconSizes
  snapshot 'icon', obj.width, obj.height, obj.name

for obj in splashSizes
  snapshot 'splash', obj.width, obj.height, obj.name
