require_relative 'type'

module RDL::Type
  class SingletonType < Type
    attr_reader :val

    @@cache = {}
    @@cache.compare_by_identity

    class << self
      alias :__new__ :new
    end

    def self.new(val)
      t = @@cache[val]
      return t if t
      t = self.__new__ val
      return (@@cache[val] = t) # assignment evaluates to t
    end

    def initialize(val)
      @val = val
    end

    def eql?(other)
      self == other
    end

    def ==(other)
      return (other.instance_of? self.class) && (other.val.equal? @val)
    end

    def match(other)
      other = other.type if other.instance_of? AnnotatedArgType
      return true if other.instance_of? WildQuery
      return self == other
    end

    def hash # :nodoc:
      return @val.hash
    end

    def to_s
      if @val.instance_of? Symbol
        ":#{@val}"
      elsif @val.nil?
        "nil"
      else
        @val.to_s
#        "Singleton(#{@val.to_s})"
      end
    end

    def <=(other)
      other.instance_of?(TopType) ||
        (@val.nil? && (not (other.instance_of?(SingletonType)))) ||
        (other.instance_of?(SingletonType) && other.val == @val) ||
        (other.instance_of?(NominalType) && @val.class == other.klass) ||
        (other.instance_of?(NominalType) && @val.is_a?(other.klass)) ||
        (other.instance_of?(UnionType) && other.types.any? { |ot| self <= ot })
    end

    def member?(obj, *args)
      t = RDL::Util.rdl_type obj
      return t <= self if t
      obj.equal?(@val)
    end

    def instantiate(inst)
      return self
    end
  end
end
