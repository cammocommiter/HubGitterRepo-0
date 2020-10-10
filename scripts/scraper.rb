sudo apt-get install libreadline5-dev
cd ext/readline
ruby extconf.rb
make
sudo make install

new_array = array.reject {|x| x < 3}