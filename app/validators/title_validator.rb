class TitleValidator < ActiveModel::Validator 
    def validate(record)
        clibaity = false
        ["Won't Believe", "Secret", "Top", "Guess"].each do |c|
           if record.title
                if record.title.include?(c)
                    clibaity = true
                end
            end
        end
        unless clibaity
            record.errors[:title] << "Title should be clickbaity!"
        end
    end
end
