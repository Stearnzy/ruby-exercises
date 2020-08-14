# module HashBasedInit
#   def initialize(args)
#     args.each do |k, v|
#       send("#{k}=", v)
#     end
#   end
# end
#
# class Lion
#   include HashBasedInit
#   attr_accessor :name, :sound
# end


class Lion
  attr_reader :name, :sound

  def initialize(args)
    @name = args.values[0]
    @sound = args.values[1]
  end
end


lionel = Lion.new({name: "Lionel", sound: "roar"})
p lionel.name
p lionel.sound
