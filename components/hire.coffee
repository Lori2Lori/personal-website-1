View     = require 'teacup-view'

module.exports = new View (attributes) ->
  @section attributes, => @div class: "container", =>

    @markdown """
      # Let's create a **multilingual** and **mobile-friendly** websites for your company.

    """

    @div class: 'team', =>
      @a
        href  : "#landing"
        class : "teammate dorota"
        =>
          @img
            src   : '/dorota-cieslinska-circle-transparent.png'
            alt   : 'Dorota Cieslinska'
          @h3 'Dorota Cieslinska'

    @article =>
      @markdown """
        ## Area of expertise

        If you have special needs for your business, I can help you choose **right feature set** and **technology stack** for your product. I have experience in **project management** and **product development** in various types of organisations. You can **outsource your entire project** or it's part to us or hire us to **strenghten your existing team**. I'm based in Bussum in the Amsterdam area.

        ## Some of the technologies I use
      """

      @grid items: [
        src:   "/logos/logo-js.svg"
        title: "JavaScript"
      ,
        src:   "/logos/logo-html5.svg"
        title: "HTML"
      ,
        src:   "/logos/logo-css3.svg"
        title: "CSS"
      ,
        src:   "/logos/logo-reactjs.svg"
        title: "React.js"
      ,
        src:   "/logos/logo-coffee.svg"
        title: "CoffeeScript"
      ,
        src:   "/logos/logo-backbone.svg"
        title: "Backbone.js"
      ,
        src:   "/logos/logo-jquery.svg"
        title: "jQuery"
      ,
        src:   "/logos/logo-node.svg"
        title: "Node.js"
      ,
        src:   "/logos/logo-rethinkdb.svg"
        title: "RethinkDB"
      # ,
      #   src:   "/logos/logo-elasticsearch.svg"
      #   title: "ElasticSearch"
      # ,
      #   src:   "/logos/logo-socketio.svg"
      #   title: "Socket.IO"
      ,
        src:   "/logos/logo-docker.svg"
        title: "Docker"
      # ,
      #   src:   "/logos/logo-mongodb.svg"
      #   title: "MongoDB"
      # ,
      #   src:   "/logos/logo-mysql.svg"
      #   title: "SQL"
      ]

    @contact    id: 'contact'
