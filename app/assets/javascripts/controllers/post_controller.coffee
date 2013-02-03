Posts.PostController = Ember.ObjectController.extend
  isEditing: false

  edit: ->
    @.set 'isEditing', true

  cancel: ->
    @.set 'isEditing', false

  save: ->
    @.content.get('store').commit()
    @.set 'isEditing', false

  delete: ->
    console.log 'dddd'
    @.content.deleteRecord()
    @.content.get('store').commit()
