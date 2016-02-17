View     = require 'teacup-view'

module.exports = new View (attributes) ->

  @tag 'form', action: '/', method: 'POST', id: 'contact', =>
    @h1 """Just leave your contact details"""

    @label "Please describe your needs"
    @textarea name: "description", required: true, rows: 6

    @label "Your contact information (email)"
    @input type: "email", name: "email", required: true

    @label "Company name"
    @input type: "text", name: "company", required: true

    @button type: "submit", "Get your new website!"

  @div id: 'thank-you', =>
    @h1 "Thank you"
    @h2 "Your message has been sent. We will contact you shortly."
