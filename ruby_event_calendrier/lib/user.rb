class User
  attr_accessor :email, :age 

  @@user_count = 0

  def initialize(email, age)
    @email = email
    @age = age

    # Ajout de l'utilisateur à la liste
    #@@users << self 
    @@user_count += 1

  end
  def self.count
      @@user_count

  end

  # 🔍 Trouver un utilisateur par email
  
end

