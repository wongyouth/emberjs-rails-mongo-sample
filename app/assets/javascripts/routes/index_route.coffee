Posts.IndexRoute = Em.Route.extend
  redirect: ->
    @transitionTo 'posts'
