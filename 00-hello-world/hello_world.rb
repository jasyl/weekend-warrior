def hello_world(name = '')
  if name.empty?
    return "Hello, World!"
  else
    return "Hello, #{name}!"
  end
end