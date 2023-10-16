class BeatBox
  attr_accessor :list

  def initialize
    @list = LinkedList.new
  end

  def append(data_input)
    separated_data_array = data_input.split(" ")
    acceptable_sounds = ["doop", "deep", "tee", "dee", "suu", "woop", "schwoop", "ploop", "boop", "beep", "bop", "la", "na", "bop", "oom", "dum", "boom"]
    separated_data_array.each do |individual_data|
      if acceptable_sounds.include?(individual_data) == true
        @list.append(individual_data)
      end
    
    end
  end

  def prependdd(data_input)
    separated_data_array = data_input.split(" ")
    acceptable_sounds = ["doop", "deep", "tee", "dee", "suu", "woop", "schwoop", "ploop", "boop", "beep", "bop", "la", "na", "bop", "oom", "dum", "boom"]
    separated_data_array.each do |individual_data|
      if acceptable_sounds.include?(individual_data) == true
        @list.prependd(individual_data)
      end
    
    end
  end



  def all 
    @list.to_string
  end


  def count
    @list.count
  end

  def play 
    `say -r 500 -v Boing "#{@list.to_string}"`
  end
end