View     = require 'teacup-view'

module.exports = new View (attributes) ->
  @section attributes, => @div class: "container", =>
    @header =>
      @h1 =>
        @raw "Welcome to my Studio!"
        do @br
        @markdown """
          **Multiple language** and **mobile-friendly** websites.
        """
        @a "Get your new website!", href: "#hire"

      @img
        class : 'main-image'
        src   : '/DCieslinska.jpg'
        alt   : 'Dorota Cieslinska face'

    

    @footer =>
      @ul id: 'menu', =>
        @li class: 'caption', => @span "Get in touch via"
        (@li => @a { href },  => @span label) for label, href of {
          'Facebook'      : 'https://www.facebook.com/l2ldevelopment'
          'Twitter'       : 'https://twitter.com/Lori2Lori'
          'LinkedIn'      : 'https://nl.linkedin.com/in/dorotacieslinska'
          'GitHub'        : 'https://github.com/Lori2Lori'
        }
