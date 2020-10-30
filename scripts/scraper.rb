string[N..-1]

respond_to do |format|

  format.html # show.html.erb
  format.json { render json: @user }

 end
