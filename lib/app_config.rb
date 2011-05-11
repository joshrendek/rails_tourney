module AppConfig
  extend self

  def set(key, value)
    hash[key.to_sym] = value
  end

  def read(key)
    hash[key.to_sym]
  end

  def has_key?(key)
    hash.has_key?(key.to_sym)
  end

  def reset!
    hash.clear
  end

  def merge!(other)
    hash.merge! other
  end

  def inspect
    "#{super} #{hash.inspect}"
  end

  private

  def method_missing(name, *args)
    case name
    when /^(.*)\?$/ then has_key?($1)
    when /^(.*)=$/ then set($1, args.first)
    else
      has_key?(name) ? read(name) : super
    end
  end

  def hash
    @hash ||= HashWithIndifferentAccess.new

    @hash
  end
end
