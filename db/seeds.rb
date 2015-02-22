AdminUser.create!([
  {email: "admin@example.com", encrypted_password: "$2a$10$PisHSXCQBMOhDq/BbZ/bJO939maShLOl0fKLNpzjwszyw1bV37mtu", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2015-02-22 02:15:31", last_sign_in_at: "2015-02-22 02:15:31", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1"}
])
Display.create!([
  {name: "Ferris Wheel", child_content: "This is some content for Children.", adult_content: "This is some content for Adults.", beacon_uuid: "11111111-2222-3333-4444-555555555555", beacon_major_num: 1, beacon_minor_num: 1, location_id: 1, exhibit_id: 1, image_file_name: "ferriswheel.jpg", image_content_type: "image/jpeg", image_file_size: 779104, image_updated_at: "2015-02-22 03:41:48"},
  {name: "Andrew Carnegie", child_content: "This is some content for children.", adult_content: "This is some content for adults.", beacon_uuid: "11111111-2222-3333-4444-555555555555", beacon_major_num: 1, beacon_minor_num: 2, location_id: 1, exhibit_id: 1, image_file_name: "carnegie.jpg", image_content_type: "image/jpeg", image_file_size: 471841, image_updated_at: "2015-02-22 03:55:11"},
  {name: "Nickelodeon Movie Projector, 1905", child_content: "Content for children.", adult_content: "Content for adults.", beacon_uuid: "11111111-2222-3333-4444-555555555555", beacon_major_num: 1, beacon_minor_num: 3, location_id: 1, exhibit_id: 1, image_file_name: "nickelodeon.jpg", image_content_type: "image/jpeg", image_file_size: 718288, image_updated_at: "2015-02-22 04:14:24"}
])
DisplayInterest.create!([
  {display_id: 1, interest_id: 7},
  {display_id: 3, interest_id: 3},
  {display_id: 2, interest_id: 7}
])
Exhibit.create!([
  {name: "Pittsburgh: A Tradition of Innovation", location_id: nil, image_file_name: nil, image_content_type: nil, image_file_size: nil, image_updated_at: nil}
])
Interest.create!([
  {name: "Historic Figures", location_id: 1, image_file_name: nil, image_content_type: nil, image_file_size: nil, image_updated_at: nil},
  {name: "Pop Culture", location_id: 1, image_file_name: nil, image_content_type: nil, image_file_size: nil, image_updated_at: nil},
  {name: "American Life", location_id: 1, image_file_name: nil, image_content_type: nil, image_file_size: nil, image_updated_at: nil},
  {name: "Music", location_id: 1, image_file_name: nil, image_content_type: nil, image_file_size: nil, image_updated_at: nil},
  {name: "Exploration", location_id: 1, image_file_name: nil, image_content_type: nil, image_file_size: nil, image_updated_at: nil},
  {name: "Inventions", location_id: 1, image_file_name: nil, image_content_type: nil, image_file_size: nil, image_updated_at: nil},
  {name: "Engineering", location_id: 1, image_file_name: nil, image_content_type: nil, image_file_size: nil, image_updated_at: nil},
  {name: "Food", location_id: 1, image_file_name: nil, image_content_type: nil, image_file_size: nil, image_updated_at: nil}
])
Location.create!([
  {name: "Senator John Heinz History Center", latitude: 40.4463499, longitude: -79.9925008, city: "Pittsburgh", state: "PA", zip_code: "15222", street: "1212 Smallman St.", logo_file_name: "heinz-logo.png", logo_content_type: "image/png", logo_file_size: 20769, logo_updated_at: "2015-02-22 02:49:51", background_image_file_name: "heinz-bg.png", background_image_content_type: "image/png", background_image_file_size: 465417, background_image_updated_at: "2015-02-22 02:49:51"}
])

DataSyncStatus.create
