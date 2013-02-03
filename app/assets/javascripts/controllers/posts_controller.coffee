Posts.PostsController = Ember.ArrayController.extend
  isNewVisible: false

  new: ->
    @.set 'isNewVisible', true

  cancel: ->
    @.set 'isNewVisible', false

  save: ->
    Posts.Post.createRecord
      title: @.get 'title'
      body: @.get 'body'
    @.get('store').commit()
    @.set 'isNewVisible', false
    @.set 'title', ''
    @.set 'body', ''

