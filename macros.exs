defmodule Unless do
  def fun_unless(clause, expression) do
    if(!clause, do: expression)
  end

  defmacro  macro_unless(clause, expression) do
    quote do
      if(!unquote(clause), do: unquote(expression))
    end
  end
end

defmodule Other do
  require Unless

  def run_examples do
    Unless.fun_unless true, IO.puts "this should never be printed from fun_unless"
    Unless.macro_unless true, IO.puts "this should never be printed from macro_unless"
  end
end

# Need to require a module befor using macros
# To signify the order of compilation of the modules
Other.run_examples
