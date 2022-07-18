class User
    attr_accessor:name
    @@name="user"
    def initialize(name='unknown')
        @name=name
        
    end
    
    def self.get_name
        puts "class name is #@@name"
    end

    def self.set_name name
        @@name = name
    end

    def user_name=(val)
        @name=val
    end

     def user_name
        @name
    end
end
