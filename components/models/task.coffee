class __Model.Task extends Monocle.Model

  @fields "titulo", "descripcion", "done", "created_at"

  @pending: ->
    @select (task) -> !task.done

  @finished: ->
    @select (task) -> !!task.done

  validate: ->
    unless @titulo
      "El nombre es requerido"
