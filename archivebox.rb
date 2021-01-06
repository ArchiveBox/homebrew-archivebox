class Archivebox < Formula
  include Language::Python::Virtualenv

  desc "The self-hosted internet archiving solution"
  homepage "https://archivebox.io"
  url "https://files.pythonhosted.org/packages/c5/0b/bc14c5d598b92981873f65185e3045d8759f5f64008abf870c4faf6d8d46/archivebox-0.5.3.tar.gz"
  version "0.5.3-1"
  sha256 "68af7e1db93f0bc75cf071227fd9a0856036b199165d73834b4c25ed03ba72e3"
  license "MIT"

  depends_on "python@3.9"
  depends_on "wget"
  depends_on "curl"
  depends_on "git"
  depends_on "node"
  depends_on "youtube-dl"
  depends_on "ripgrep"

  resource "appnope" do
    url "https://files.pythonhosted.org/packages/26/34/0f3a5efac31f27fabce64645f8c609de9d925fe2915304d1a40f544cff0e/appnope-0.1.0.tar.gz"
    sha256 "8b995ffe925347a2138d7ac0fe77155e4311a0ea6d6da4f5128fe4b3cbe5ed71"
  end

  resource "archivebox" do
    url "https://files.pythonhosted.org/packages/c5/0b/bc14c5d598b92981873f65185e3045d8759f5f64008abf870c4faf6d8d46/archivebox-0.5.3.tar.gz"
    sha256 "68af7e1db93f0bc75cf071227fd9a0856036b199165d73834b4c25ed03ba72e3"
  end

  resource "asgiref" do
    url "https://files.pythonhosted.org/packages/e9/d1/096b5b0b411a1a53c294a508fdc51542de77bc193df5c8230ff9445e4ff3/asgiref-3.3.1.tar.gz"
    sha256 "7162a3cb30ab0609f1a4c95938fd73e8604f63bdba516a7f7d64b83ff09478f0"
  end

  resource "atomicwrites" do
    url "https://files.pythonhosted.org/packages/55/8d/74a75635f2c3c914ab5b3850112fd4b0c8039975ecb320e4449aa363ba54/atomicwrites-1.4.0.tar.gz"
    sha256 "ae70396ad1a434f9c7046fd2dd196fc04b12f9e91ffb859164193be8b6168a7a"
  end

  resource "backcall" do
    url "https://files.pythonhosted.org/packages/a2/40/764a663805d84deee23043e1426a9175567db89c8b3287b5c2ad9f71aa93/backcall-0.2.0.tar.gz"
    sha256 "5cbdbf27be5e7cfadb448baf0aa95508f91f2bbc6c6437cd9cd06e2a4c215e1e"
  end

  resource "base32-crockford" do
    url "https://files.pythonhosted.org/packages/a8/e7/868d9b106ffb86ebf1eb877517e03ac87667ce5ce201547fa3a26090c1ba/base32-crockford-0.3.0.tar.gz"
    sha256 "115f5bd32ae32b724035cb02eb65069a8824ea08c08851eb80c8b9f63443a969"
  end

  resource "certifi" do
    url "https://files.pythonhosted.org/packages/e6/de/879cf857ae6f890dfa23c3d6239814c5471936b618c8fb0c8732ad5da885/certifi-2020.11.8.tar.gz"
    sha256 "f05def092c44fbf25834a51509ef6e631dc19765ab8a57b4e7ab85531f0a9cf4"
  end

  resource "chardet" do
    url "https://files.pythonhosted.org/packages/fc/bb/a5768c230f9ddb03acc9ef3f0d4a3cf93462473795d18e9535498c8f929d/chardet-3.0.4.tar.gz"
    sha256 "84ab92ed1c4d4f16916e05906b6b75a6c0fb5db821cc65e70cbd64a3e2a5eaae"
  end

  resource "croniter" do
    url "https://files.pythonhosted.org/packages/67/59/9e30c03c61ea20724bbc2a5e5ec606e3d29f96435ad93a2400ebbeb29f7d/croniter-0.3.34.tar.gz"
    sha256 "7186b9b464f45cf3d3c83a18bc2344cc101d7b9fd35a05f2878437b14967e964"
  end

  resource "dateparser" do
    url "https://files.pythonhosted.org/packages/a9/f3/09df53068a630a69c95ae0fe8e4fae597bcfbd5f25abb30ab94dc02a7cb2/dateparser-1.0.0.tar.gz"
    sha256 "159cc4e01a593706a15cd4e269a0b3345edf3aef8bf9278a57dac8adf5bf1e4a"
  end

  resource "decorator" do
    url "https://files.pythonhosted.org/packages/da/93/84fa12f2dc341f8cf5f022ee09e109961055749df2d0c75c5f98746cfe6c/decorator-4.4.2.tar.gz"
    sha256 "e3a62f0520172440ca0dcc823749319382e377f37f140a0b99ef45fecb84bfe7"
  end

  resource "Django" do
    url "https://files.pythonhosted.org/packages/c6/e0/19b529ca9c55fa0ee095edffa7135a8eff354490159d2d64d006928beb84/Django-3.0.8.tar.gz"
    sha256 "31a5fbbea5fc71c99e288ec0b2f00302a0a92c44b13ede80b73a6a4d6d205582"
  end

  resource "django-extensions" do
    url "https://files.pythonhosted.org/packages/c8/72/08f93237277e45354d9f6f9f00aa64b622b3fa42cfdfa06720e8b16e8508/django-extensions-3.0.3.tar.gz"
    sha256 "6230898b1e1d5deb3ddab8335b2d270edb7afa4ef916a95e479a19fdfb0464cb"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/ea/b7/e0e3c1c467636186c39925827be42f16fee389dc404ac29e930e9136be70/idna-2.10.tar.gz"
    sha256 "b307872f855b18632ce0c21c5e45be78c0ea7ae4c15c828c20788b26921eb3f6"
  end

  resource "ipython" do
    url "https://files.pythonhosted.org/packages/cf/65/1224bc51f155ebf098eaeef02bb7fdeb380b2e03986b626d1811921db16f/ipython-7.19.0.tar.gz"
    sha256 "cbb2ef3d5961d44e6a963b9817d4ea4e1fa2eb589c371a470fed14d8d40cbd6a"
  end

  resource "ipython_genutils" do
    url "https://files.pythonhosted.org/packages/e8/69/fbeffffc05236398ebfcfb512b6d2511c622871dca1746361006da310399/ipython_genutils-0.2.0.tar.gz"
    sha256 "eb2e116e75ecef9d4d228fdc66af54269afa26ab4463042e33785b887c628ba8"
  end

  resource "jedi" do
    url "https://files.pythonhosted.org/packages/39/67/50d1653038dafe06ca2cc55c4598c5f8318d519c12a7a288d7826280ee22/jedi-0.17.2.tar.gz"
    sha256 "86ed7d9b750603e4ba582ea8edc678657fb4007894a12bcf6f4bb97892f31d20"
  end

  resource "mypy-extensions" do
    url "https://files.pythonhosted.org/packages/63/60/0582ce2eaced55f65a4406fc97beba256de4b7a95a0034c6576458c6519f/mypy_extensions-0.4.3.tar.gz"
    sha256 "2d82818f5bb3e369420cb3c4060a7970edba416647068eb4c5343488a6c604a8"
  end

  resource "natsort" do
    url "https://files.pythonhosted.org/packages/da/af/24d2f6915f26e6e365e8b6f165461730330458ec22b7dc19779d19bc4442/natsort-7.1.0.tar.gz"
    sha256 "33f3f1003e2af4b4df20908fe62aa029999d136b966463746942efbfc821add3"
  end

  resource "parso" do
    url "https://files.pythonhosted.org/packages/40/01/e0b8d2168fb299af90a78a5919257f821e5c21399bf0906c14c9e573db3f/parso-0.7.1.tar.gz"
    sha256 "caba44724b994a8a5e086460bb212abc5a8bc46951bf4a9a1210745953622eb9"
  end

  resource "pexpect" do
    url "https://files.pythonhosted.org/packages/e5/9b/ff402e0e930e70467a7178abb7c128709a30dfb22d8777c043e501bc1b10/pexpect-4.8.0.tar.gz"
    sha256 "fc65a43959d153d0114afe13997d439c22823a27cefceb5ff35c2178c6784c0c"
  end

  resource "pickleshare" do
    url "https://files.pythonhosted.org/packages/d8/b6/df3c1c9b616e9c0edbc4fbab6ddd09df9535849c64ba51fcb6531c32d4d8/pickleshare-0.7.5.tar.gz"
    sha256 "87683d47965c1da65cdacaf31c8441d12b8044cdec9aca500cd78fc2c683afca"
  end

  resource "prompt-toolkit" do
    url "https://files.pythonhosted.org/packages/d4/12/7fe77b49d67845a378cfadb484b64218ed09d0e8bf420c663b4fe28f0631/prompt_toolkit-3.0.8.tar.gz"
    sha256 "25c95d2ac813909f813c93fde734b6e44406d1477a9faef7c915ff37d39c0a8c"
  end

  resource "ptyprocess" do
    url "https://files.pythonhosted.org/packages/7d/2d/e4b8733cf79b7309d84c9081a4ab558c89d8c89da5961bf4ddb050ca1ce0/ptyprocess-0.6.0.tar.gz"
    sha256 "923f299cc5ad920c68f2bc0bc98b75b9f838b93b599941a6b63ddbc2476394c0"
  end

  resource "Pygments" do
    url "https://files.pythonhosted.org/packages/5d/0e/ff13c055b014d634ed17e9e9345a312c28ec6a06448ba6d6ccfa77c3b5e8/Pygments-2.7.2.tar.gz"
    sha256 "381985fcc551eb9d37c52088a32914e00517e57f4a21609f48141ba08e193fa0"
  end

  resource "python-crontab" do
    url "https://files.pythonhosted.org/packages/1b/7e/fb78b96de58a49b8ef807c321870ef4de3de5928fd71a40a400aed714310/python-crontab-2.5.1.tar.gz"
    sha256 "4bbe7e720753a132ca4ca9d4094915f40e9d9dc8a807a4564007651018ce8c31"
  end

  resource "python-dateutil" do
    url "https://files.pythonhosted.org/packages/be/ed/5bbc91f03fa4c839c4c7360375da77f9659af5f7086b7a7bdda65771c8e0/python-dateutil-2.8.1.tar.gz"
    sha256 "73ebfe9dbf22e832286dafa60473e4cd239f8592f699aa5adaf10050e6e1823c"
  end

  resource "pytz" do
    url "https://files.pythonhosted.org/packages/09/07/448a8887c7195450604dfc0305d80d74324c36ee18ed997664051d4bffe3/pytz-2020.4.tar.gz"
    sha256 "3e6b7dd2d1e0a59084bcee14a17af60c5c562cdc16d828e8eba2e683d3a7e268"
  end

  resource "regex" do
    url "https://files.pythonhosted.org/packages/2e/e4/3447fed9ab29944333f48730ecff4dca92f0868c5b188d6ab2b2078e32c2/regex-2020.11.13.tar.gz"
    sha256 "83d6b356e116ca119db8e7c6fc2983289d87b27b3fac238cfe5dca529d884562"
  end

  resource "requests" do
    url "https://files.pythonhosted.org/packages/da/67/672b422d9daf07365259958912ba533a0ecab839d4084c487a5fe9a5405f/requests-2.24.0.tar.gz"
    sha256 "b3559a131db72c33ee969480840fff4bb6dd111de7dd27c8ee1f820f4f00231b"
  end

  resource "six" do
    url "https://files.pythonhosted.org/packages/6b/34/415834bfdafca3c5f451532e8a8d9ba89a21c9743a0c59fbd0205c7f9426/six-1.15.0.tar.gz"
    sha256 "30639c035cdb23534cd4aa2dd52c3bf48f06e5f4a941509c8bafd8ce11080259"
  end

  resource "sqlparse" do
    url "https://files.pythonhosted.org/packages/a2/54/da10f9a0235681179144a5ca02147428f955745e9393f859dec8d0d05b41/sqlparse-0.4.1.tar.gz"
    sha256 "0f91fd2e829c44362cbcfab3e9ae12e22badaa8a29ad5ff599f9ec109f0454e8"
  end

  resource "traitlets" do
    url "https://files.pythonhosted.org/packages/b8/24/e6dfe45ecfc4c2b0d6774565e631dc1b9e50de2c3536625d377963d56cae/traitlets-5.0.5.tar.gz"
    sha256 "178f4ce988f69189f7e523337a3e11d91c786ded9360174a3d9ca83e79bc5396"
  end

  resource "tzlocal" do
    url "https://files.pythonhosted.org/packages/ce/73/99e4cc30db6b21cba6c3b3b80cffc472cc5a0feaf79c290f01f1ac460710/tzlocal-2.1.tar.gz"
    sha256 "643c97c5294aedc737780a49d9df30889321cbe1204eac2c2ec6134035a92e44"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/76/d9/bbbafc76b18da706451fa91bc2ebe21c0daf8868ef3c30b869ac7cb7f01d/urllib3-1.25.11.tar.gz"
    sha256 "8d7eaa5a82a1cac232164990f04874c594c9453ec55eef02eab885aa02fc17a2"
  end

  resource "w3lib" do
    url "https://files.pythonhosted.org/packages/5e/2f/76558d2712d93e9267a3160190f1bb005f97ef4aba35592728f63747da8b/w3lib-1.22.0.tar.gz"
    sha256 "0ad6d0203157d61149fd45aaed2e24f53902989c32fc1dccc2e2bfba371560df"
  end

  resource "wcwidth" do
    url "https://files.pythonhosted.org/packages/89/38/459b727c381504f361832b9e5ace19966de1a235d73cdbdea91c771a1155/wcwidth-0.2.5.tar.gz"
    sha256 "c4d647b99872929fdb7bdcaa4fbe7f01413ed3d98077df798530e5b04f116c83"
  end

  # TODO: figure out how to install npm modules here too: mercury, singlefile, readability 

  def install
    venv = virtualenv_create(libexec, "python3")
    # Install all of the resources declared on the formula into the virtualenv.
    resources.each do |r|
      # ansible-base provides all ansible binaries
      if r.name == "archivebox"
        venv.pip_install_and_link r
      else
        venv.pip_install r
      end
    end
    venv.pip_install_and_link buildpath
  end

  test do
    system "#{bin}/archivebox", "version"
    system "#{bin}/archivebox", "init"
    system "#{bin}/archivebox", "add", "https://example.com"
  end
end
