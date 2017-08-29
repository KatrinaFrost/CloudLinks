User.destroy_all

u1 = User.create :name => 'Katrina', :password => 'chicken', :email => 'katrinalfrost@hotmail.com'

Link.destroy_all
l1 = Link.create :link_display_name => 'sausage dog', :display_description => 'dog in a bun', :display_url => 'https://www.google.com.au/search?q=sausage+dog+in+bun&tbm=isch&imgil=2WTg_NyduI1ciM%253A%253Biv5WATHx9GIYbM%253Bhttp%25253A%25252F%25252Fjustcuteanimals.com%25252Fpost%25252F844&source=iu&pf=m&fir=2WTg_NyduI1ciM%253A%252Civ5WATHx9GIYbM%252C_&usg=__DmwVU97ONVwqGw3OE_afSh6UM-A%3D&biw=1440&bih=776&ved=0ahUKEwjEtYyG5PjVAhWBabwKHUaCD8YQyjcIQQ&ei=bXKjWYTLDYHT8QXGhL6wDA#imgrc=2WTg_NyduI1ciM:'

Genre.destroy_all
g1 = Genre.create :description => 'dog in a bun', :name => 'dog'
g1 = Genre.create :description => 'cat in a hat', :name => 'cat'
g1 = Genre.create :description => 'wheelie', :name => 'hamster'

u1.links << l1
g1.links << l1
