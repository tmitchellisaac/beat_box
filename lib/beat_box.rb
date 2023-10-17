class BeatBox
  attr_accessor :list, :rate, :voice

ACCEPTABLE_SOUNDS = ["doop", "deep", "tee", "dee", "suu", "woop", "schwoop", "ploop", "boop", "beep", "bop", "la", "na", "bop", "oom", "dum", "boom"]

  def initialize(*bb_input)
    if bb_input.empty?
      @list = LinkedList.new
    else
      @list = LinkedList.new
      bb_input_array = bb_input.join.split
      bb_input_array.each do |individual_data|
        if ACCEPTABLE_SOUNDS.include?(individual_data) == true
          @list.append(individual_data)
        end
      end
    end
  end

  def append(data_input)
    separated_data_array = data_input.split(" ")
    separated_data_array.each do |individual_data|
      if ACCEPTABLE_SOUNDS.include?(individual_data) == true
        @list.append(individual_data)
      end
    end
  end

  def prependdd(data_input)
    separated_data_array = data_input.split(" ")
    separated_data_array.each do |individual_data|
      if ACCEPTABLE_SOUNDS.include?(individual_data) == true
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

  def rate=(input_rate)
    @rate = input_rate
  end
  
  def reset_rate
    @rate = 500
  end

  def voice=(input_voice)
    @voice = input_voice
  end

  def reset_voice
    @voice = "Boing"
  end

  def play 
    if @rate == nil
      @rate = 500
    end
    
    if @voice == nil
      @voice = "Boing"
    end
      `say -r #{@rate} -v #{@voice} "#{@list.to_string}"`
    # `say -r 500 -v Boing "#{@list.to_string}"`
  end

end