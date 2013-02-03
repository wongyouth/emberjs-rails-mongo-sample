Posts.PostEditView = Ember.View.extend
  templateName: 'posts/edit'

  didInsertElement: ->
    $('input:first').focus()
