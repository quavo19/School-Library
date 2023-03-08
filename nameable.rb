class Nameable
    def correct_name
      raise NotImplementedError.new("Subclasses must implement correct_name method")
    end
end
