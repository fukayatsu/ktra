jQuery ->
  window.Ktra ||= {}
  window.Ktra.tasks = new Tasks

class Tasks
  constructor: ->
    @init()

  init: ->
    @listen()

  listen: ->
    @toggle_point_radio_buttons()
    @listen_keyup()
    @listen_task_point()

  listen_keyup: ->
    $(document).on 'keyup', '.new_task #task_title', @toggle_point_radio_buttons

  toggle_point_radio_buttons: =>
    if $('#task_title').val()
      @show_point_radio_buttons()
    else
      @hide_point_radio_buttons()

  show_point_radio_buttons: =>
    $(".new-task .point-radio").slideDown("fast", "swing")

  hide_point_radio_buttons: =>
    $(".new-task .point-radio").hide()


  listen_task_point: ->
    $(document).on 'click', '.new_task .point-radio input', (e) =>
      $('.new_task').submit()

