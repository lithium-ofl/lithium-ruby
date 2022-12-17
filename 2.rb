special='!"#$%&\'()*+,-./:;<=>?@[\\]^_`{|}~]'.chars.to_a
users=[]
    loop do
    puts "Kayıt Olmak İçin 1'i\nGiriş Yapmak İçin 2'yi Tuşlayın"
    secim=gets.chomp


    if secim=="1"
        puts "Kayıt Sistemine Hoşgeldiniz"
        username = nil
        loop do 
            username=gets.chomp
            if username.chars.any? { |c| special.include? c }
                puts "Kullanıcı Adı Geçersiz"
            else
                break
            end
        end

        password=gets.chomp
        user=username+"/"+password
        users.append(user)
        puts "Kayıt Başarılı"
        end
    if secim=="2"
        puts "Giriş Sistemine Hoşgeldiniz"
        loginusername=gets.chomp
        loginpassword=gets.chomp
        loginuser=loginusername+"/"+loginpassword
        if users.include? loginuser
            puts "Giriş Başarılı"
        else
            puts "Giriş Başarısız"
        end
    end
end
