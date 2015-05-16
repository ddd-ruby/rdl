require 'rdl'
class Thread
  extend RDL 

  ## Class Methods
  # typesig(:new)
  # typesig(:start)
  # typesig(:fork)
  # typesig(:main)
  # typesig(:current)
  # typesig(:stop)
  # typesig(:kill)
  # typesig(:exit)
  # typesig(:pass)
  # typesig(:list)
  # typesig(:abort_on_exception)
  # typesig(:abort_on_exception=)
  # typesig(:handle_interrupt)
  # typesig(:pending_interrupt?)
  # typesig(:exclusive)

  ## Instance Methods
  typesig(:[], "(Symbol or String) -> %any") 
  typesig(:[]=, "(Symbol or String, %any) -> %any") 
  typesig(:abort_on_exception, "() -> %bool") 
  typesig(:abort_on_exception=, "(%bool) -> %bool") 
  typesig(:add_trace_func, "(Proc) -> Proc") 
  typesig(:alive?, "() -> %bool") 
  typesig(:backtrace, "() -> Array") 
  typesig(:backtrace_locations, "(*IO) -> Array") 
  typesig(:exit, "() -> Thread") 
  typesig(:group, "() -> ThreadGroup") 
  typesig(:inspect, "() -> String") 
  typesig(:join, "(?Integer) -> Thread") 
  typesig(:key?, "(String or Symbol) -> %bool") 
  typesig(:keys, "() -> Array") 
  typesig(:kill, "() -> Thread") 
  typesig(:pending_interrupt?, "(?Error) -> %bool") 
  typesig(:priority, "() -> Integer") 
  typesig(:priority=, "(Integer) -> Thread") 
  typesig(:raise, "(?String) -> NilClass") 
  typesig(:raise, "(Exception, ?String, ?Array) -> NilClass")
  typesig(:run, "() -> Thread") 
  typesig(:safe_level, "() -> Integer") 
  # Intersection Type # 
  typesig(:set_trace_func, "(NilClass) -> NilClass") 
  typesig(:set_trace_func, "(Proc) -> Proc")
  # End Intersection # 
  typesig(:status, "() -> String or FalseClass") 
  typesig(:stop?, "() -> %bool") 
  typesig(:terminate, "() -> Thread") 
  typesig(:thread_variable?, "(String or Symbol) -> %bool") 
  typesig(:thread_variable_get, "(String or Symbol) -> %any") 
  typesig(:thread_variable_set, "(String or Symbol, String or Symbol) -> %any") 
  typesig(:thread_variables, "() -> Array") 
  typesig(:value, "() -> %any") 
  typesig(:wakeup, "() -> Thread") 
end
