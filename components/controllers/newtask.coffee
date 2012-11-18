class NewTaskController extends Monocle.Controller

  events:
    "tap a[data-action=save]": "onSave"

  elements:
      "#txt-titulo"      : "titulo"
      "#txt-descripcion" : "descripcion"

  constructor: ->
    super

  onSave:(event) ->

    __Model.Task.create
      titulo: @titulo.val()
      descripcion: @descripcion.val()

    Lungo.Router.back()

    @titulo.val ""
    @descripcion.val ""

__Controller.NewTask = new NewTaskController "section#new"