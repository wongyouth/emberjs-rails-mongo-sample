Posts.PostsRoute = Em.Route.extend
  model: ->
    Posts.Post.find()
