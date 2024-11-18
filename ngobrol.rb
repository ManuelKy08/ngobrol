class SimpleChatBot
  def initialize
    @greetings = ['halo', 'hi', 'hai', 'hello']
    @questions = {
      'siapa kamu' => 'Saya adalah chatbot yang dapat membantu Anda!',
      'apa kabar' => 'Saya baik-baik saja, terima kasih!',
      'berapakah 2 + 2' => '2 + 2 = 4',
      'siapa presiden indonesia' => 'Presiden Indonesia saat ini adalah Bapa Prabowo Subianto.',
      'apa itu ruby' => 'Ruby adalah bahasa pemrograman yang dinamis dan serbaguna!',
      'berapakah 3 + 5' => '3 + 5 = 8',
      'siapa penemu lampu' => 'Penemu lampu adalah Thomas Edison.',
      'berapa umur bumi' => 'Bumi diperkirakan berusia sekitar 4,5 miliar tahun.',
      'apa itu teknologi' => 'Teknologi adalah aplikasi pengetahuan ilmiah untuk tujuan praktis.',
      'siapa penyanyi pop terkenal' => 'Beberapa penyanyi pop terkenal adalah Michael Jackson, Madonna, dan Justin Timberlake.',
      'apakah risky punya pacar' => 'Bos saya tidak memiliki pacar, dia jomblo dari lahir, tetapi dia lagi suka dengan inisial E dan L.',
      'siapa pacar si risky' => 'Jangan ditanya, saya juga kasihan karna belum pernah pacaran, mungkin dia lagi fokus mengembangkan skill-nya.',
      'siapa yang menemukan telepon' => 'Telepon ditemukan oleh Alexander Graham Bell.',
      'risky suka makan apa' => 'Tentu, Bos saya suka makan nasi dong! Masa makan kamu kan kamu aja ilfeel sama dia, haha!',
      'apa itu python' => 'Python adalah bahasa pemrograman tingkat tinggi yang mudah dipelajari dan digunakan.',
      'apakah kamu pintar' => 'Saya hanya program komputer, tetapi saya dapat membantu Anda dengan banyak hal!',
      'siapa E dan L yang di sukai bos mu' => 'Bos saya nanti marah, dia tidak ingin mengungkapkannya. Btw, dia orangnya tertutup',
      'kenapa langit biru' => 'Langit terlihat biru karena atmosfer bumi menyebarkan cahaya biru dari matahari.',
      'berapa tinggi gunung everest' => 'Gunung Everest memiliki tinggi sekitar 8.848 meter di atas permukaan laut.',
      'siapa si risky' => 'Bos saya, Mr. Kiy, adalah manusia biasa yang menyukai teknologi. Btw, dia lagi suka sama inisial E dan L lho.',
      'apa itu internet' => 'Internet adalah jaringan global yang menghubungkan jutaan komputer di seluruh dunia.',
      'siapa presiden amerika' => 'Presiden Amerika Serikat saat ini adalah Donald Trump (November 2024).',
      'apa itu ai' => 'AI (Artificial Intelligence) atau Kecerdasan Buatan adalah bidang dalam ilmu komputer yang fokus pada pengembangan sistem yang dapat meniru, mempelajari, dan mengaplikasikan kemampuan.',
      'siapa pahlawan nasional indonesia' => 'Beberapa pahlawan nasional Indonesia adalah Soekarno, Hatta, dan Kartini.',
      'apa itu bitcoin' => 'Bitcoin adalah mata uang digital yang tidak diatur oleh pemerintah atau bank mana pun.',
      'prestasi apa yang di raih si risky' => 'Oh ya! Bos saya tidak ingin tahu, Private. Btw, sepertinya bos saya tidak memiliki prestasi apapun, haha!',
      'berapa banyak negara di dunia' => 'Ada sekitar 195 negara di dunia saat ini.',
      'apa itu demokrasi' => 'Demokrasi adalah bentuk pemerintahan di mana warga negara memiliki kekuasaan untuk memilih pemimpin mereka.',
      'apa ibu kota indonesia' => 'Ibu kota Indonesia adalah Jakarta.',
      'apa hobi si risky' => 'Hobi bos saya adalah bermain komputer dan suka menyendiri. Oh ya, dia gugup lho kalau dekat cewek.',
      'siapa penulis harry potter' => 'Penulis Harry Potter adalah J.K. Rowling.',
      'siapa pacarmu' => 'Saya adalah chatbot, jadi saya tidak memiliki pacar. Tapi saya bisa memberikan tips percintaan!',
      'apa itu cinta' => 'Cinta adalah perasaan yang mendalam terhadap seseorang atau sesuatu yang membawa kebahagiaan dan kedamaian dalam hidup.',
      'kenapa cinta itu penting' => 'Cinta memberi kita alasan untuk hidup, tumbuh, dan berbagi kebahagiaan dengan orang lain.',
      'apa itu jodoh' => 'Jodoh adalah seseorang yang sudah ditakdirkan untuk menjadi pasangan hidup kita.',
      'bagaimana cara menjaga hubungan' => 'Menjaga komunikasi yang baik, saling percaya, dan memberikan perhatian adalah kunci untuk hubungan yang sehat.',
      'apa yang harus dilakukan jika merasa cemburu' => 'Cemburu adalah perasaan yang alami, tetapi penting untuk berkomunikasi dengan pasangan dan membicarakan perasaan Anda secara jujur.',
      'bagaimana cara mengungkapkan perasaan' => 'Cobalah berbicara dari hati, dengan jujur dan terbuka, dan berikan perhatian pada perasaan pasangan.',
      'bagaimana cara move on' => 'Move on itu tidak mudah, tapi berikan waktu untuk diri sendiri, fokus pada kebahagiaan diri, dan jangan takut untuk membuka hati kembali ketika sudah siap.',
      'kenapa aku sering merasa cemas dalam hubungan' => 'Perasaan cemas bisa datang dari ketidakpastian atau ketakutan akan kehilangan. Cobalah untuk berbicara dengan pasangan dan mencari cara untuk merasa lebih aman dalam hubungan.',
      'bagaimana cara tahu jika seseorang benar-benar mencintaimu' => 'Cinta yang sejati menunjukkan dirinya melalui tindakan, perhatian, kejujuran, dan komitmen, bukan hanya kata-kata.',
      'apa yang harus dilakukan jika hubungan sedang renggang' => 'Bicarakan masalahnya secara terbuka dan jujur, berusaha untuk saling mendengarkan, dan mencari solusi bersama-sama.',
      'kenapa cinta itu terkadang menyakitkan' => 'Cinta bisa menyakitkan ketika kita tidak saling memahami atau ketika ada perbedaan yang sulit diterima. Tetapi, cinta juga bisa membawa kebahagiaan jika kita bisa belajar dari pengalaman tersebut.',
      'apa arti cinta sejati' => 'Cinta sejati adalah cinta yang penuh pengertian, kesetiaan, dan komitmen yang tulus tanpa pamrih.',
      'bagaimana cara memilih pasangan yang tepat' => 'Carilah seseorang yang memiliki nilai dan tujuan hidup yang sejalan denganmu, serta seseorang yang bisa mendukungmu dalam segala kondisi.',
      'bagaimana cara merawat hubungan jarak jauh' => 'Komunikasi yang terbuka, saling percaya, dan membuat waktu untuk bertemu secara rutin adalah kunci hubungan jarak jauh yang sehat.',
      'bagaimana jika aku merasa tidak dicintai' => 'Perasaan seperti itu bisa timbul, tetapi bicarakan dengan pasangan dan jelaskan bagaimana perasaanmu. Komunikasi yang baik adalah kunci.',
      'apa yang membuat hubungan langgeng' => 'Kepercayaan, komunikasi, saling menghargai, dan kompromi adalah faktor penting yang membuat hubungan langgeng.',
      'apa itu blockchain' => 'Blockchain adalah teknologi yang mendasari sistem cryptocurrency, yang memungkinkan transaksi digital yang aman dan transparan.'
    }
    @exit_keywords = ['keluar', 'bye', 'terima kasih', 'quit']
  end
  
  def print_interface
    puts "###############################"
    puts "#       CHATBOT INTERFACE      #"
    puts "###############################"
    puts ">> Halo! Saya chatbot. Ketik 'keluar' atau 'quit' untuk berhenti."
    puts "###############################"
  end

  def start(text)
    puts "\033[1;32m"
    puts " \\                                        ______                     "
    puts " \\               _________        .------------------.              "
    puts "  \\             :______.-':      '  .--------------.  '             "
    puts "   \\            | ______  |      | : #Root = Freedom: |             "
    puts "    \\           |:______B:|      | |  403 Forbidden | |             "
    puts "     \\          |:______B:|      | |                | |             "
    puts "      \\         |:______B:|      | |  apa itu cinta | |             "
    puts "       \\        |         |      | |          Maksaa| |             "
    puts "        \\       |:_____:  |      | | Kamu mah ahk   | |             "
    puts "        /       |    ==   |      | :  pasti2 aja lah: |             "
    puts "       /        |       O |      :  '--------------'  :             "
    puts "      /         |       o |      :'---...______...---'              "
    puts "     /          |       o |-._.-i___/'             \\._             "
    puts "    /           |'-.____o_|   '-.   '-...______...-'  \`-._          "
    puts "   /            |:________|      \`.____________________   \`-.___.-. "
    puts "  /                              .'.eeeeeeeeeeeeeeeeee.'.      :___:"
    puts "                 RR SEC        .'.eeeeeeeeeeeeeeeeeeeeee.'.         "
    puts "                               :____________________________:"
    puts ">> #{text}"
    puts "\033[0m"
  end

  def run
    print_interface
    start("Halo! Ada yang bisa saya bantu?")
    loop do
      print ">>> Anda: "
      input = gets.chomp.downcase
      break if @exit_keywords.include?(input)
      
      if @greetings.include?(input)
        puts "###############################"
        puts "Bot: Halo! Ada yang bisa saya bantu?"
        puts "###############################"
      else
        response = @questions[input] || "Bot: Maaf, saya tidak mengerti pertanyaan itu."
        puts "###############################"
        puts "#{response}"
        puts "###############################"
      end
    end
  end
end

chatbot = SimpleChatBot.new
chatbot.run
