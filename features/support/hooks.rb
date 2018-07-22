Before do
    @metodos = Metodos.new
     
 end

After do |step|
    if step.failed?
      binding.pry
    end
  end