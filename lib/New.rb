card_ids = Card.select(:id)
vendor_ids =Vendor.select(:id)
100.times do |count|
  card_id = card_ids[rand(card_ids.length)].id
  vendor_id = vendor_ids[rand(vendor_ids.length)].id
  x=rand(1..100)
	t=Transact.new(:card_id=> card_id,:vendor_id=>vendor_id,:amount=>x, :date=>241215)
  puts t.inspect
  t.save
end
