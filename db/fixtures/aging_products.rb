AgingProduct.delete_all
ActiveRecord::Base.connection.execute('ALTER TABLE aging_products AUTO_INCREMENT = 1')

green = Color.find_by_name('green')
blue = Color.find_by_name('blue')
yellow = Color.find_by_name('yellow')
orange = Color.find_by_name('orange')
red = Color.find_by_name('red')

AgingProduct.seed(
  {:name => "ift/nn", :u_start => 0, :u_end => 69, :start => 0, :end => 44, :score => 4,
   :score_message => "Poor",  :weight => 5, :color_id => red.id},
  {:name => "ift/nn", :u_start => 0, :u_end => 69, :start => 45, :end => 159, :score => 3,
   :score_message => "",  :weight => 5, :color_id => yellow.id},
  {:name => "ift/nn", :u_start => 0, :u_end => 69, :start => 160, :end => 318, :score => 2,
   :score_message => "",  :weight => 5, :color_id => blue.id},
  {:name => "ift/nn", :u_start => 0, :u_end => 69, :start => 319, :end => 1500, :score => 1,
   :score_message => "Good",  :weight => 5, :color_id => green.id},

  {:name => "ift/nn", :u_start => 70, :u_end => 229, :start => 0, :end => 44, :score => 4,
   :score_message => "Poor",  :weight => 5, :color_id => red.id},
  {:name => "ift/nn", :u_start => 70, :u_end => 229, :start => 45, :end => 159, :score => 3,
   :score_message => "",  :weight => 5, :color_id => yellow.id},
  {:name => "ift/nn", :u_start => 70, :u_end => 229, :start => 160, :end => 318, :score => 2,
   :score_message => "",  :weight => 5, :color_id => blue.id},
  {:name => "ift/nn", :u_start => 70, :u_end => 229, :start => 319, :end => 1500, :score => 1,
   :score_message => "Good",  :weight => 5, :color_id => green.id},

  {:name => "ift/nn", :u_start => 230, :u_end => nil, :start => 0, :end => 44, :score => 4,
   :score_message => "Poor",  :weight => 5, :color_id => red.id},
  {:name => "ift/nn", :u_start => 230, :u_end => nil, :start => 45, :end => 159, :score => 3,
   :score_message => "",  :weight => 5, :color_id => yellow.id},
  {:name => "ift/nn", :u_start => 230, :u_end => nil, :start => 160, :end => 318, :score => 2,
   :score_message => "",  :weight => 5, :color_id => blue.id},
  {:name => "ift/nn", :u_start => 230, :u_end => nil, :start => 319, :end => 1500, :score => 1,
   :score_message => "Good",  :weight => 5, :color_id => green.id}

)
