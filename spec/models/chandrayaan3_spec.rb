require 'rails_helper'

RSpec.describe Chandrayaan3, type: :model do
  it 'has initial position and direction' do
    chandrayaan = Chandrayaan3.new
    expect(chandrayaan.position_x).to eq(0)
    expect(chandrayaan.position_y).to eq(0)
    expect(chandrayaan.position_z).to eq(0)
    expect(chandrayaan.direction).to eq('N')
  end

  it 'moves forward' do
    chandrayaan = Chandrayaan3.new
    chandrayaan.move('f')
    expect(chandrayaan.position_y).to eq(1)
  end

  it 'turns left' do
    chandrayaan = Chandrayaan3.new
    chandrayaan.move('l')
    expect(chandrayaan.direction).to eq('W')
  end

  it 'turns right' do
    chandrayaan = Chandrayaan3.new
    chandrayaan.move('r')
    expect(chandrayaan.direction).to eq('E')
  end

  it 'turns up' do
    chandrayaan = Chandrayaan3.new
    chandrayaan.move('u')
    expect(chandrayaan.position_z).to eq(1)
  end

  it 'turns down' do
    chandrayaan = Chandrayaan3.new
    chandrayaan.move('d')
    expect(chandrayaan.position_z).to eq(-1)
  end
end
