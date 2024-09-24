class Grocery
    def initialize()
        @Available_no_of_notes = Hash.new
        puts "Enter the no.of 2000 ruppee notes"
        @Available_no_of_notes[2000] = gets.chomp.to_i
        puts "Enter the no.of 500 ruppee notes"
        @Available_no_of_notes[500] = gets.chomp.to_i
        puts "Enter the no.of 100 ruppee notes"
        @Available_no_of_notes[100] = gets.chomp.to_i
        puts "Enter the no.of 50 ruppee notes"
        @Available_no_of_notes[50] = gets.chomp.to_i
        puts "Enter the no.of 20 ruppee"
        @Available_no_of_notes[20] = gets.chomp.to_i
        puts "Enter the no.of 10 ruppee"
        @Available_no_of_notes[10] = gets.chomp.to_i
        puts "Enter the no.of 5 ruppee"
        @Available_no_of_notes[5] = gets.chomp.to_i
        puts "Enter the no.of 2 ruppee coins"
        @Available_no_of_notes[2] = gets.chomp.to_i
        puts "Enter the no.of 1 ruppee coins"
        @Available_no_of_notes[1] = gets.chomp.to_i
    end

    def change
        puts "Enter the amount you need to give change"
        @requested_amount = gets.chomp.to_i
        if @requested_amount > total_amount
            puts "You dont have enough change."
        else
            @change_for_requested_amount = Hash.new

            @Available_no_of_notes.each do |key, value|

                if @requested_amount == 0
                    break
                end

                if @requested_amount / key != 0 && value != 0
                    no_of_notes = @requested_amount / key
                    @change_for_requested_amount[key] = no_of_notes
                    @requested_amount = @requested_amount %  key
                end

            end

            @change_for_requested_amount.each { |key, value| puts "#{key} : #{value}" if value != 0}

            if @requested_amount != 0
                puts "you will be given a one ruppee chocolate"
            end

        end
    end

    def total_amount
        2000 * @Available_no_of_notes[2000] + 500 * @Available_no_of_notes[500] + 100 * @Available_no_of_notes[100] + 50 * @Available_no_of_notes[50] + 20 * @Available_no_of_notes[20] + 10 * @Available_no_of_notes[10] + 5 * @Available_no_of_notes[5] + 2 * @Available_no_of_notes[2] + @Available_no_of_notes[1]
       
    end
end

grocery = Grocery.new
grocery.change