module ApplicationHelper
    def todo_priority(todo)
        case todo.priority
        when 1
            '<i class="arrow circle up icon"></i>'.html_safe
        else
            '<i class="arrow circle down icon"></i>'.html_safe
        end
      end

end

