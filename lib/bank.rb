require './lib/deep_freezable'

class Bank
  extend DeepFreezable

  CURRENCIES = deep_freeze({ 'Japan' => 'yen', 'Us' => 'dollar', 'India' => 'repee' })
end
