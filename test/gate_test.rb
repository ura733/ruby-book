require 'minitest/autorun'
require './lib/gate'
require './lib/ticket'

class GateTest < Minitest::Test

  def setup
    @umeda = Gate.new(:umeda)
    @juso = Gate.new(:juso)
    @mikuni = Gate.new(:mikuni)
  end

  def test_gate
    ticket = Ticket.new(150)
    @umeda.enter(ticket)
    assert @juso.exit(ticket)
  end

  def test_umeda_to_mikuni_not_enough
    ticket = Ticket.new(150)
    @umeda.enter(ticket)
    refute @mikuni.exit(ticket)
  end

  def test_juso_to_mikuni_enough
    ticket = Ticket.new(190)
    @umeda.enter(ticket)
    assert @mikuni.exit(ticket)
  end


end
