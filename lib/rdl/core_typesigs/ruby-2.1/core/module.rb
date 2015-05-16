require 'rdl'
class Module
  extend RDL 
  
  RDL.turn_off
  ## Class Methods
  #typesig(:nesting)
  #typesig(:constants)

  ## Instance Methods
  typesig(:<, "(Module) -> %bool") 
  typesig(:<=, "(Module) -> %bool") 
  typesig(:<=>, "(Module) -> Fixnum") 
  typesig(:==, "(%any) -> %bool") 
  typesig(:===, "(%any) -> %bool") 
  typesig(:>, "(Module) -> %bool") 
  typesig(:>=, "(Module) -> %bool") 
  typesig(:ancestors, "() -> Array") 
  typesig(:autoload, "(Module, String) -> NilClass") 
  typesig(:autoload?, "(String) -> String") 
  typesig(:class_eval, "(String, ?String, ?Integer) -> %any") 
  typesig(:class_exec, "(*%any) {(*%any) -> %any} -> %any") 
  typesig(:class_variable_defined?, "(Symbol) -> %bool") 
  typesig(:class_variable_get, "(String) -> %any") 
  typesig(:class_variable_set, "(Symbol,%any) -> %any") 
  typesig(:class_variables, "(?%bool) -> Array") 
  typesig(:const_defined?, "(Symbol or String, ?%bool) -> %bool") 
  typesig(:const_get, "(Symbol, ?%bool) -> %any") 
  typesig(:const_missing, "(Symbol) -> %any") 
  typesig(:const_set, "(String or Symbol, %any) -> %any") 
  typesig(:constants, "(?%bool) -> Array") 
  typesig(:freeze, "() -> Module") 
  typesig(:include, "(*Module) -> Module") 
  typesig(:include?, "(Module) -> %bool") 
  typesig(:included_modules, "() -> Array") 
  typesig(:inspect, "() -> String") 
  typesig(:instance_method, "(Symbol) -> UnboundedMethod") 
  typesig(:instance_methods, "(?%bool) -> Array") 
  typesig(:method_defined?, "(Symbol or String) -> %bool") 
  typesig(:module_eval, "() {(%any) -> %any} -> %any") 
  typesig(:module_exec, "(*%any) {(*%any) -> %any} -> %any") 
  typesig(:name, "() -> String") 
  typesig(:prepend, "(*Module) -> Module") 
  typesig(:private_class_method, "(*Symbol) -> Module")
  typesig(:private_class_method, "(*String) -> Module")
  typesig(:private_constant, "(*Symbol) -> Module") 
  typesig(:private_instance_methods, "(?%bool) -> Array") 
  typesig(:private_method_defined?, "(String or Symbol) -> %bool") 
  typesig(:protected_instance_methods, "(?%bool) -> Array") 
  typesig(:protected_method_defined?, "(String or Symbol) -> %bool") 
  typesig(:public_class_method, "(*String) -> Module") 
  typesig(:public_class_method, "(*Symbol) -> Module") 
  typesig(:public_constant, "(*Symbol) -> Module") 
  typesig(:public_instance_method, "(Symbol) -> UnboundedMethod") 
  typesig(:public_instance_methods, "(?%bool) -> Array") 
  typesig(:public_method_defined?, "(Symbol or String) -> %bool") 
  typesig(:remove_class_variable, "(Symbol) -> %any") 
  typesig(:singleton_class?, "() -> %bool") 
  typesig(:to_s, "() -> String") 

  RDL.turn_on
end
