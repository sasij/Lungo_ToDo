class __View.Task extends Monocle.View

  container: "section#task article ul"

  #template_url: "/ToDo/components/templates/task.mustache"
  template: """
    <li class="{{^done}}red{{/done}}">
      <a href="#">
        {{#done}}
        <div class="right bubble blue">Hecho</div>
        {{/done}}

        <strong>{{titulo}}</strong>
        <small>{{descripcion}}</small>
      </a>
    </li>
    """

  events:
    "tap li" : "onTap"

  onTap: (event) ->
    @model.updateAttributes done: true
    @refresh()
    #console.error @model