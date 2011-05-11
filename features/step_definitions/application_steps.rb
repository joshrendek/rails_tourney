Given /^following application information:/ do |table|
  table.rows_hash.each do |key, value|
    AppConfig.set(key, value)
  end
end
