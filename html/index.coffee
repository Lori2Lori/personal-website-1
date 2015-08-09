View = require 'teacup-view'

module.exports = new View ->
  @doctype 5

  @html =>
    @head =>
      @link rel: 'stylesheet', href: 'index.css'
      @meta name: "viewport", content: "width=device-width, initial-scale=1.0"

    @body =>
      @div id: 'container', =>
        @header =>
          @h1 =>
            @raw "<strong>Hello</strong>, my name is Tadeusz."
            do @br
            @raw "I'm a <strong>full stack web developer</strong>."

          @img
            class : 'main-image'
            src   : 'tadeusz-lazurski-circle-transparent.png'
            alt   : 'Tadeusz Łazurski face - less than a half of it'

        @tag 'main', =>

          @p => @raw "Currently I'm interested in full time position in Europe, involving <strong>Node.js</strong>, <strong>React.js</strong> and <strong>CoffeeScript</strong>."





        @footer =>
          @ul id: 'menu', =>
            @li class: 'caption', => @span "Get in touch via"
            (@li => @a { href },  => @span label) for label, href of {
              'GitHub'        : 'https://github.com/lzrski'
              'StackOverflow' : 'https://stackoverflow.com/users/1151982'
              'Twitter'       : 'https://twitter.com/lazurski'
              'LinkedIn'      : 'https://pl.linkedin.com/in/lazurski'
            }

          @a
            class : 'source'
            href  : 'https://github.com/lzrski/personal-website'
            'Fork this website at GitHub'

      @script src: 'bundle.js'
