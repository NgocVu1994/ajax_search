class User < ActiveRecord::Base


  def search search
    if search
      where('name LIKE ?', "%#{search}%")
    else
      scoped
    end
  end
end
