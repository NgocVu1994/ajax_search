class User < ActiveRecord::Base
  searchkick word_start: [:email], autocomplete: ['name']
end
