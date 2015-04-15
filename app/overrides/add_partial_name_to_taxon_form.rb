Deface::Override.new(
  virtual_path: 'spree/admin/taxons/_form',
  name: 'add_partial_name_to_taxon_form',
  insert_bottom: 'div:first-child',
  text: "<%= f.field_container :partial_name, class: ['form-group'] do %>" +
      "<%= f.label :partial_name, 'Partial Name' %>" +
      "<%= f.select :partial_name, Spree::Taxon.partial_names, { include_blank: 'Select Partial' }, :class => 'form-control' %>" +
      "<% end %>"
)

Spree::PermittedAttributes.taxon_attributes << :partial_name
