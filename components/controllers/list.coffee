class ListController extends Monocle.Controller

  elements:
    "footer a:first-child": "pendientes"
    "footer a:last-child": "finalizadas"

  constructor: ->
    super
    __Model.Task.bind "create", @bindTaskCreate
    __Model.Task.bind "change", @bindTaskChange

  bindTaskCreate: (task) =>
    view = new __View.Task model: task
    view.append task

  bindTaskChange: (task) =>
    #console.log __Model.Task.finished().length
    Lungo.Element.count("#c1", __Model.Task.pending().length);
    Lungo.Element.count("#c2", __Model.Task.finished().length);



__Controller.List = new ListController "section#task"

#ejecutar algo cuando Lungo esté ListController
#Lungo.ready ->
#  __Model.Task.create titulo:"Ir al medico", descripcion: "Lorem ipsum"
#  __Model.Task.create titulo:"Ir al colegio", descripcion: "Lorem ipsum"
#  __Model.Task.create titulo:"Ir a casa de Sandra", descripcion: "Lorem ipsum"
