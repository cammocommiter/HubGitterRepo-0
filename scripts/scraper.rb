elsif !reject_new_record?(association_name, attributes)
  method = "build_#{association_name}"
  if respond_to?(method)
    send(method, attributes.except(*UNASSIGNABLE_KEYS))
  else
    raise ArgumentError, "Cannot build association #{association_name}. Are you trying to build a polymorphic one-to-one association?"
  end
end

require 'active_support/inflector'
