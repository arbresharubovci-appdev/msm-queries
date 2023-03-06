class DirectorsController < ApplicationController

  def index
    @list_of_directors = Director.all
    render({:template => "director_templates/index.html.erb"})
  end
  
  def director_details
    #Parameters: {"an_id"=>"42"}
    the_id = params.fetch("an_id")
    @the_director = Director.where({ :id =>  the_id }).at(0)
    @filmography = Movie.where({ :director_id =>  @the_director.id })
    render({:template => "director_templates/show.html.erb"})
  end


  def wisest
    @oldest = Director.where.not({ :dob => nil}).order({ :dob => :asc }).at(0)
    render({:template => "director_templates/eldest.html.erb"})
  end

  def youngest
    @youngest = Director.where.not({ :dob => nil}).order({ :dob => :asc }).at(0)
    render({:template => "director_templates/youngest.html.erb"})
  end



  def movies
    @the_movie=Movie.all
    render({:template => "director_templates/movies.html.erb"})
  end


  def movies_details
    #Parameters: {"id"=>"movies"}
    the_id_movie = params.fetch("film_id")
    @the_movie = Movie.where({:id => the_id_movie }).at(0)
    render({:template => "director_templates/movies_details.html.erb"})
  end

  def actors
    @the_actors= Actor.all
    render({:template => "director_templates/actors.html.erb"})
  end

  def actors_details
    the_id_actors = params.fetch("role_id")
    @the_actors = Actor.where({:id =>  the_id_actors }).at(0)
     @filmography = Movie.where({ :director_id =>  @the_director.id })
    render({:template => "director_templates/actors_details.html.erb"})
  end



end
