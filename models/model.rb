class Giftideas
    attr_accessor :title, :image, :description
    def initialize(title, image, description)
        @title=title
        @image=image
        @description=description
    end
end

def gifts(type)
    if @params[:type] == "golf" 
        golf = Giftideas.new("A Day of Golf!","http://sfrecpark.org/wp-content/uploads/2-Lincoln-Cover-Image-586x286.jpg", "Finally getting to play golf in San Francisco's amazing golf course!")
    return "#{golf.title}++#{golf.image}++#{golf.description}"
    elsif @params[:type] == "dinner"
        dinner = Giftideas.new("A Nice Lunch or Dinner","https://static1.squarespace.com/static/52c0d31ae4b0803bf7e95f36/t/55315a1ee4b0ed810cde9fda/1402359939917/waterbar-baylights-1-retouched.jpg", "Eat an awesome dinner with an even better view.")
    return "#{dinner.title}++#{dinner.image}++#{dinner.description}"
    elsif @params[:type] == "sightseeing"  
        sightseeing= Giftideas.new("See San Francisco!","https://i.ytimg.com/vi/JJ0fft0pK7Y/maxresdefault.jpg","See San Francisco in a way you have never seen before.")
    return "#{sightseeing.title}++#{sightseeing.image}++#{sightseeing.description}"
    elsif @params[:type] == "grades"
        grades= Giftideas.new("Have Good Grades!","https://s26.postimg.org/3yv4s1rh5/IMG_2129.jpg","I will have straight As when you come visit.")
    return "#{grades.title}++#{grades.image}++#{grades.description}"
    end
end
