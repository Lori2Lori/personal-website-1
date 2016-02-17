View      = require 'teacup-view'


module.exports = new View ->
  @doctype 5

  @html lang: 'en', =>
    @head =>
      @link rel: 'stylesheet', href: '/index.css'
      @meta name: "viewport", content: "width=device-width, initial-scale=1.0"
      @script src: '/hotjar.js'


    @body =>
      @landing    id: 'landing'
      @hire  id: 'hire'
      @footer => @markdown """
        Copyright Dorota Cieslinska 2016

      """

      @script async: yes, src: '/bundle.js'
      @script async: yes, src: '/google-analytics.js'
