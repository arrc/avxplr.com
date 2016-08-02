module Admin::Editor::SubAttributesHelper
  # index - tab id "#tab-<%= @role.class.name.downcase %>"
  # modal open - { open: "#{@role.class.name.downcase}-new-item-modal" }

  # new form id - "<%= klass.class.name.downcase %>-new-item-modal"
  # Form h3 name - <%= klass.class.name.downcase %>
  # e.class.name.tableize.split("_").join(' ').capitalize
  # hidden_field - klass.class.name

  # create.js - "#<%= @klass.class.name.downcase %>-new-item-modal"
  # "#tab-<%= @klass.class.name.downcase %> tbody"

  # Destroy.js - "#<%= @klass.class.name.downcase %>_item_<%= @klass.id %>"

  # Update.js - "#<%= @klass.class.name.downcase %>-edit-modal-<%= @klass.id %>"

  # klass_item
  # id - "<%= klass_item.class.name.downcase %>_item_<%= klass_item.id %>"
  # path attr -  klass: klass_item.class.name
  # edit modal open - { open: "#{klass_item.class.name.downcase}-edit-modal-#{klass_item.id}" }
  # model id = id=<%= "#{klass_item.class.name.downcase}-edit-modal-#{klass_item.id}" %>
  # form input class - {class: "form-#{klass_item.class.name.downcase}-name"}

  # klass_list
  
end
