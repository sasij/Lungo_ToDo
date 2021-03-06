// Generated by CoffeeScript 1.4.0
(function() {
  var __hasProp = {}.hasOwnProperty,
    __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

  __Model.Task = (function(_super) {

    __extends(Task, _super);

    function Task() {
      return Task.__super__.constructor.apply(this, arguments);
    }

    Task.fields("titulo", "descripcion", "done", "created_at");

    Task.pending = function() {
      return this.select(function(task) {
        return !task.done;
      });
    };

    Task.finished = function() {
      return this.select(function(task) {
        return !!task.done;
      });
    };

    Task.prototype.validate = function() {
      if (!this.titulo) {
        return "El nombre es requerido";
      }
    };

    return Task;

  })(Monocle.Model);

}).call(this);
