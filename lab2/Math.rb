class Math
    
    def self.numeric?(num)
     num.is_a? Numeric
    end

    def self.calc(num1,num2,op)
        begin
            if !self.numeric?(num1)||! self.numeric?(num2)
                raise ArgumentError.new 'Error ==> please pass a valid number'
            end

            if ! ['+','-','*','/'].include?(op)
                 raise ArgumentError.new 'Error ==> please pass a valid operator'
            end

            if op=='/' && num2 ==0 
                raise ZeroDivisionError.new 
            end

            puts num1.public_send(op ,num2)

        rescue  ArgumentError => e
            puts e.message
        end
    end
end

Math.calc(2,8,"*")