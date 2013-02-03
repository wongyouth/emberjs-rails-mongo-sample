Posts.PostNewView = Em.View.extend
  templateName: 'posts/edit'

  didInsertElement: ->
    $('input:first').focus()
