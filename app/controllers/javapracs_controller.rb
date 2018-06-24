class JavapracsController < ApplicationController
  def strings
    @prac = Javaprac.new(javaprac_params)
    @prac.save
    redirect_to root_path
  end

  def loops
  end

  def functions
  end

  private
   def javaprac_params
     params.require(:prac).permit(:ques, :ans)
   end
end
