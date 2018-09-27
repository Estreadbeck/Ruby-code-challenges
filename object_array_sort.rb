require 'rspec'

def position_enforcer(arr, *name)
  arr.sort_by! {|hsh| hsh[:position]}
  name.each do |o| 
    if o.key?(:position)
      arr.insert(o.fetch(:position) - 1, o).compact!
    else
      arr[-1] ? inCount = arr[-1].fetch(:position) : inCount = 0
      arr << o.merge!({position: inCount + 1}) 
      inCount += 1
    end
  end
  i = 1
  arr.map do |v|
    v[:position] = i
    i += 1
  end
  p arr
end


# position_enforcer(Array.new, {name: 'Jan Micheal Vincent'})
# position_enforcer([{ name: 'Benjamin Haribert', position: 1 }, { name: 'Ranjit Asclepius', position: 2 }, { name: 'Mansoor Ragnvald', position: 3 }], {name: 'David Farnsworth', position: 3}, {name: 'Jan Micheal Vincent'})




describe 'always sorted object' do
  it 'assigns a position of 1 for the first object added to the array' do
    array_of_objects = []

    expect(
      position_enforcer(
        array_of_objects,
        { name: 'Robert Shun' }
      )
    ).to eq(
      [
        { name: 'Robert Shun', position: 1 }
      ]
    )
  end

  it 'takes in an array of objects that each contain a position attribute and ensures that it is always sorted properly' do
    array_of_objects = [
      { name: 'Benjamin Haribert', position: 1 },
      { name: 'Ranjit Asclepius', position: 2 },
      { name: 'Mansoor Ragnvald', position: 3 },
    ]

    expect(
      position_enforcer(
        array_of_objects,
        { name: 'Robert Shun' }
      )
    ).to eq(
      [
        { name: 'Benjamin Haribert', position: 1 },
        { name: 'Ranjit Asclepius', position: 2 },
        { name: 'Mansoor Ragnvald', position: 3 },
        { name: 'Robert Shun', position: 4 }
      ]
    )
  end

  it 'auto resorts the position values for an array of objects with the position attribute' do
    array_of_objects = [
      { name: 'Benjamin Haribert', position: 1 },
      { name: 'Ranjit Asclepius', position: 2 },
      { name: 'Mansoor Ragnvald', position: 3 },
    ]

    expect(
      position_enforcer(
        array_of_objects,
        { name: 'Robert Shun', position: 2 }
      )
    ).to eq(
      [
        { name: 'Benjamin Haribert', position: 1 },
        { name: 'Robert Shun', position: 2 },
        { name: 'Ranjit Asclepius', position: 3 },
        { name: 'Mansoor Ragnvald', position: 4 },
      ]
    )
  end
end