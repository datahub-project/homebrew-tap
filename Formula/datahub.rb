class Datahub < Formula
  include Language::Python::Virtualenv

  desc "CLI for DataHub, the open-source context platform for humans and AI agents"
  homepage "https://docs.datahub.com/"
  url "https://files.pythonhosted.org/packages/d0/b6/a9912f367d525972b2575ab07703b698dfaaa93e97b4d9f70e1849a3f8a8/acryl_datahub-1.9.0.1.tar.gz"
  sha256 "9a7fdcdbcea7fa97026d7648049454fa4818069d617716d14e60ab578d7b839f"
  license "Apache-2.0"
  head "https://github.com/datahub-project/datahub.git", branch: "master"

  livecheck do
    url "https://pypi.org/pypi/acryl-datahub/json"
    strategy :json do |json|
      json.dig("info", "version")
    end
  end

  bottle do
    root_url "https://github.com/datahub-project/homebrew-tap/releases/download/datahub-1.9.0.1"
    sha256 cellar: :any, arm64_sequoia: "b3d3fa7959feed47b7b685a732259f8033b8fb5d76698c2fe277a9bd8088f96a"
    sha256 cellar: :any, x86_64_linux:  "68f51e4bcfa73b780b9869f3f9007bae68f37c4825ed95aeaca11f0635cb10ec"
  end






















  depends_on "rust" => :build
  depends_on "openssl@3"
  depends_on "python@3.13"

  resource "aiohappyeyeballs" do
    url "https://files.pythonhosted.org/packages/ce/f4/eec0465c2f67b2664688d0240b3212d5196fd89e741df67ddb81f8d35658/aiohappyeyeballs-2.7.1.tar.gz"
    sha256 "065665c041c42a5938ed220bdcd7230f22527fbec085e1853d2402c8a3615d9d"
  end

  resource "aiohttp" do
    url "https://files.pythonhosted.org/packages/6c/4c/bdccd81e9ee225b69c60e7766c9a5b05364f118f4d383713b89a682d772d/aiohttp-3.14.5.tar.gz"
    sha256 "5558a7f5a05af9ecf744af91e5baefc436f93c9333e656c27ec253f9a6bbe178"
  end

  resource "aiosignal" do
    url "https://files.pythonhosted.org/packages/61/62/06741b579156360248d1ec624842ad0edf697050bbaf7c3e46394e106ad1/aiosignal-1.4.0.tar.gz"
    sha256 "f47eecd9468083c2029cc99945502cb7708b082c232f9aca65da147157b251c7"
  end

  resource "annotated-types" do
    url "https://files.pythonhosted.org/packages/5f/56/a8120250d128bed162cd73c76d45f6ef9991f3e068f62a8ee060afa3104a/annotated_types-0.8.0.tar.gz"
    sha256 "13b2beaad985e05e2d6407ee4c4f35590b11f8d693a258a561055cac8f64cab7"
  end

  resource "anyio" do
    url "https://files.pythonhosted.org/packages/a1/98/7e457a3b014976887a050561955c0b76e1e7e2d6e27b78ecef2ef80518f2/anyio-4.16.0.tar.gz"
    sha256 "59bb03251907983d1603d27c3087ddb1e93299ea2163adcdba37899a4fb12ffb"
  end

  resource "asgiref" do
    url "https://files.pythonhosted.org/packages/6b/90/f5fce14e95fccf53b58e8e2c47cd84d40d105d64073ae1ac75166db150e0/asgiref-3.13.0.tar.gz"
    sha256 "034cc8cbf72d00553b4be256703ac545120b4e50af13b49dec99da899aeeecb4"
  end

  resource "attrs" do
    url "https://files.pythonhosted.org/packages/9a/8e/82a0fe20a541c03148528be8cac2408564a6c9a0cc7e9171802bc1d26985/attrs-26.1.0.tar.gz"
    sha256 "d03ceb89cb322a8fd706d4fb91940737b6642aa36998fe130a9bc96c985eff32"
  end

  resource "avro" do
    url "https://files.pythonhosted.org/packages/5f/68/973b9c682aa2c3cf2b05fc4c961af11b9be1d9b46604f65aed23cd4fd1e6/avro-1.12.2.tar.gz"
    sha256 "e900e7b59a4781f63d9e935e88f6ec50c4d60be3f4adf9c63b51ed39d578fe08"
  end

  resource "avro-gen3" do
    url "https://files.pythonhosted.org/packages/ba/d2/58133bc977971a846ea2cb89fd4ae27fc71e05efd45c64a5c2996c597491/avro_gen3-0.7.16.tar.gz"
    sha256 "1ef593e22d8876ec55b91aa75cb0581a4526bae4bb990fde7892208679dc44dc"
  end

  resource "cached-property" do
    url "https://files.pythonhosted.org/packages/76/4b/3d870836119dbe9a5e3c9a61af8cc1a8b69d75aea564572e385882d5aefb/cached_property-2.0.1.tar.gz"
    sha256 "484d617105e3ee0e4f1f58725e72a8ef9e93deee462222dbd51cd91230897641"
  end

  resource "certifi" do
    url "https://files.pythonhosted.org/packages/51/33/4cd27639502f010084bcef7a2036391dd637439901341ce1a530f36f6e51/certifi-2026.11.20.tar.gz"
    sha256 "af1cb240a8133f105aa52684a3a3258339d7f2fd0bd4e2812698ff5cf5588c4e"
  end

  resource "charset-normalizer" do
    url "https://files.pythonhosted.org/packages/c2/c3/cae6d3bdefd96a941ffc247c714ac4babc488a69012e11c058f6c17c6c47/charset_normalizer-3.5.3.tar.gz"
    sha256 "a250888753faa289e2997962fbb17c4960cbdb58575533ca6fceee68c224bdff"
  end

  resource "click" do
    url "https://files.pythonhosted.org/packages/45/37/edbf1b0707709013c0cf2e8317e03d97ed29bf4cac709fe328904ae92a38/click-8.5.1.tar.gz"
    sha256 "9bbfada76703fd1d784b83eea012e3e8c6a001a876543ef104fa56aaaeb072b4"
  end

  resource "click-default-group" do
    url "https://files.pythonhosted.org/packages/1d/ce/edb087fb53de63dad3b36408ca30368f438738098e668b78c87f93cd41df/click_default_group-1.2.4.tar.gz"
    sha256 "eb3f3c99ec0d456ca6cd2a7f08f7d4e91771bef51b01bdd9580cc6450fe1251e"
  end

  resource "click-spinner" do
    url "https://files.pythonhosted.org/packages/93/2a/04893832bfeddc2d40a7de2e8153b3085f12d63507d91a9cf0157dc3a1c2/click_spinner-0.1.10-py2.py3-none-any.whl"
    sha256 "d1ffcff1fdad9882396367f15fb957bcf7f5c64ab91927dee2127e0d2991ee84"
  end

  resource "cramjam" do
    url "https://files.pythonhosted.org/packages/21/78/bfb048f7fcf70192081ad834e7bbde59af716bbdd4d2410ffd39357db068/cramjam-2.14.0.tar.gz"
    sha256 "050095380dc01a7f3dc2b8bcd9de2cbf4a208a8aab32301c760ea3c280d641bd"
  end

  resource "deprecated" do
    url "https://files.pythonhosted.org/packages/49/85/12f0a49a7c4ffb70572b6c2ef13c90c88fd190debda93b23f026b25f9634/deprecated-1.3.1.tar.gz"
    sha256 "b1b50e0ff0c1fddaa5708a2c6b0a6588bb09b892825ab2b214ac9ea9d92a5223"
  end

  resource "docker" do
    url "https://files.pythonhosted.org/packages/88/7f/731ff914b0255d3d065f45fd4e626d4b8c95dbcbaada049f337a6ac16410/docker-7.2.0.tar.gz"
    sha256 "cebb93773d334f778e023a7ee352a8d6e13ab1bd3b863a4d4a59dec897df43ac"
  end

  resource "expandvars" do
    url "https://files.pythonhosted.org/packages/9c/64/a9d8ea289d663a44b346203a24bf798507463db1e76679eaa72ee6de1c7a/expandvars-1.1.2.tar.gz"
    sha256 "6c5822b7b756a99a356b915dd1267f52ab8a4efaa135963bd7f4bd5d368f71d7"
  end

  resource "frozenlist" do
    url "https://files.pythonhosted.org/packages/2d/f5/c831fac6cc817d26fd54c7eaccd04ef7e0288806943f7cc5bbf69f3ac1f0/frozenlist-1.8.0.tar.gz"
    sha256 "3ede829ed8d842f6cd48fc7081d7a41001a56f1f38603f9d49bf3020d59a31ad"
  end

  resource "h11" do
    url "https://files.pythonhosted.org/packages/01/ee/02a2c011bdab74c6fb3c75474d40b3052059d95df7e73351460c8588d963/h11-0.16.0.tar.gz"
    sha256 "4e35b956cf45792e4caa5885e69fba00bdbc6ffafbfa020300e549b208ee5ff1"
  end

  resource "httpcore" do
    url "https://files.pythonhosted.org/packages/06/94/82699a10bca87a5556c9c59b5963f2d039dbd239f25bc2a63907a05a14cb/httpcore-1.0.9.tar.gz"
    sha256 "6e34463af53fd2ab5d807f399a9b45ea31c3dfa2276f15a2c3f00afff6e176e8"
  end

  resource "httpx" do
    url "https://files.pythonhosted.org/packages/b1/df/48c586a5fe32a0f01324ee087459e112ebb7224f646c0b5023f5e79e9956/httpx-0.28.1.tar.gz"
    sha256 "75e98c5f16b0f35b567856f597f06ff2270a374470a5c2392242528e3e3e42fc"
  end

  resource "humanfriendly" do
    url "https://files.pythonhosted.org/packages/cc/3f/2c29224acb2e2df4d2046e4c73ee2662023c58ff5b113c4c1adac0886c43/humanfriendly-10.0.tar.gz"
    sha256 "6b0b831ce8f15f7300721aa49829fc4e83921a9a301cc7f606be6686a2288ddc"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/f5/08/8eea9d4b8302028f3abb2c0813953f7aec26d33b7a8960ed760e65ff29fa/idna-3.20.tar.gz"
    sha256 "a7db850025b95ded1eae8a46181a1a6c56c92c96f0e2b005d9ff8dc0210cab44"
  end

  resource "ijson" do
    url "https://files.pythonhosted.org/packages/75/61/4066af787ed25bfca02c3edd2d7fd489b1b5ca27b54b400b187e5f2865e7/ijson-3.6.0.tar.gz"
    sha256 "ec8f9265524e724905ecf00bdd061c374baaa8d5045ef50425695fb06efb45f5"
  end

  resource "json-logic" do
    url "https://files.pythonhosted.org/packages/7d/05/5b516986c0706b7ae5f4b2155b1c32979479b378b55c0dd9bcc48e70fc5d/json_logic-0.7.0a0.tar.gz"
    sha256 "84580b974bcfec7b00d63745f19ca363939fc2b93c579f578d41d7d10c12fe0c"
  end

  resource "jsonref" do
    url "https://files.pythonhosted.org/packages/aa/0d/c1f3277e90ccdb50d33ed5ba1ec5b3f0a242ed8c1b1a85d3afeb68464dca/jsonref-1.1.0.tar.gz"
    sha256 "32fe8e1d85af0fdefbebce950af85590b22b60f9e95443176adbde4e1ecea552"
  end

  resource "jsonschema" do
    url "https://files.pythonhosted.org/packages/b3/fc/e067678238fa451312d4c62bf6e6cf5ec56375422aee02f9cb5f909b3047/jsonschema-4.26.0.tar.gz"
    sha256 "0c26707e2efad8aa1bfc5b7ce170f3fccc2e4918ff85989ba9ffa9facb2be326"
  end

  resource "jsonschema-specifications" do
    url "https://files.pythonhosted.org/packages/19/74/a633ee74eb36c44aa6d1095e7cc5569bebf04342ee146178e2d36600708b/jsonschema_specifications-2025.9.1.tar.gz"
    sha256 "b540987f239e745613c7a9176f3edb72b832a4ac465cf02712288397832b5e8d"
  end

  resource "loguru" do
    url "https://files.pythonhosted.org/packages/61/ce/b5bb93d4d9fc7a067f69140b3bb3782f6ad6360bc76e99b6e3d386cb1320/loguru-0.8.0.tar.gz"
    sha256 "fb3e4623288e37700a0577f6e0ce776cc1860b5d95c657d67f07a2476b304867"
  end

  resource "mixpanel" do
    url "https://files.pythonhosted.org/packages/dd/30/c7c1bbadd3ec813713d872d1d99e2cdd3d0b2269561eb317f215167de8a6/mixpanel-5.5.0.tar.gz"
    sha256 "e2a17f6f0db4bfc5a61429b1c718ae28ff40cee9e6fb50a0ed1e57614e615e2a"
  end

  resource "multidict" do
    url "https://files.pythonhosted.org/packages/7b/6b/29ef8e752f5854dcc267ded0652c475bec99b86f255957a0d4fcad657b18/multidict-7.2.1.tar.gz"
    sha256 "e8af3e6f1bdbc31fd762b094133b478b89988eaebc63cbe82b1d9e3bbd15cede"
  end

  resource "mypy-extensions" do
    url "https://files.pythonhosted.org/packages/d0/6f/43edf3be2748d0e40974a5ee046a8bb4c9961a4bdd3e7d5c6dcbf32d1af6/mypy_extensions-1.2.0.tar.gz"
    sha256 "c6e275a07f1c2fc096b62940452d0eaa3f3af7de45d704787866240a7c6d5a51"
  end

  resource "packaging" do
    url "https://files.pythonhosted.org/packages/c3/75/ffb1dc0ed12352139fb4ca0e3fde4325a23e3d0f3f40efe89717bc4f557b/packaging-26.4.tar.gz"
    sha256 "c4b671c41ddb9bf26e543c37723610d28fb6bf7affc4da17cf048d419d2c062a"
  end

  resource "progressbar2" do
    url "https://files.pythonhosted.org/packages/d4/cb/6c2cb8c9652fdfe1bd15ae723e5e97a77316daf9b3c6835b8b35ef07ece4/progressbar2-4.7.1.tar.gz"
    sha256 "e7e1c1b6fe6495051c41c44fc50980ba37f8d874deb94ea680528b1a0442ff1a"
  end

  resource "propcache" do
    url "https://files.pythonhosted.org/packages/b3/9a/9fbf4e4ec0c2d7f1c32519fff782ef467859b8faa9fbc5331a96f6395d43/propcache-0.5.4.tar.gz"
    sha256 "ff6b113f50bc066a698db5d944d2c6dc7507168dd3341e255a8892fd0715a558"
  end

  resource "psutil" do
    url "https://files.pythonhosted.org/packages/aa/c6/d1ddf4abb55e93cebc4f2ed8b5d6dbad109ecb8d63748dd2b20ab5e57ebe/psutil-7.2.2.tar.gz"
    sha256 "0746f5f8d406af344fd547f1c8daa5f5c33dbc293bb8d6a16d80b4bb88f59372"
  end

  resource "pydantic" do
    url "https://files.pythonhosted.org/packages/8e/25/3ec212432a6031b65f043eaca9c820ddf87c0d0aa330023e64f79fcb5db6/pydantic-2.14.4.tar.gz"
    sha256 "7c19f1d46f8accf55a4617a6116e1ade64840870f397b846a2c53fb9019414ba"
  end

  resource "pydantic-core" do
    url "https://files.pythonhosted.org/packages/fb/63/0ceb815a7762576027ce388544c573d440574f95afb1302a2496b96db548/pydantic_core-2.50.5.tar.gz"
    sha256 "1e740886083ff95530d694e6a3f09ed914bcf92a496d16acd307c6c3484fc36d"
  end

  resource "python-dateutil" do
    url "https://files.pythonhosted.org/packages/66/c0/0c8b6ad9f17a802ee498c46e004a0eb49bc148f2fd230864601a86dcf6db/python-dateutil-2.9.0.post0.tar.gz"
    sha256 "37dd54208da7e1cd875388217d5e00ebd4179249f90fb72437e91a35459a0ad3"
  end

  resource "python-json-logger" do
    url "https://files.pythonhosted.org/packages/21/25/5473e46b179f8e8b4ad3aeeb36773d1701b7770eaf5e5bc2025c7303b598/python_json_logger-4.2.0.tar.gz"
    sha256 "e371ebe22ec01e289850102091a2b1f6fc9e655c7f1f5f29073936756c290afa"
  end

  resource "python-utils" do
    url "https://files.pythonhosted.org/packages/f6/bf/e4cc07248ca65fe5065a9712efeace1eba6b0c77c72fc24cbfc8a79ddd80/python_utils-4.2.2.tar.gz"
    sha256 "6c51c46e600c67ad5f16c4205ba875ced4372e560561c5aa3cf52ff1d4657471"
  end

  resource "pyyaml" do
    url "https://files.pythonhosted.org/packages/76/b8/c0b780928e2fb1c87e9e375818c6f121da2398b071012d1747be300b83f4/pyyaml-6.0.4.tar.gz"
    sha256 "e24bf71af8a432d7808fabff134d38dfe16d3cbb41f2873bb4b1e42422de0a1a"
  end

  resource "referencing" do
    url "https://files.pythonhosted.org/packages/22/f5/df4e9027acead3ecc63e50fe1e36aca1523e1719559c499951bb4b53188f/referencing-0.37.0.tar.gz"
    sha256 "44aefc3142c5b842538163acb373e24cce6632bd54bdb01b21ad5863489f50d8"
  end

  resource "requests" do
    url "https://files.pythonhosted.org/packages/ac/c3/e2a2b89f2d3e2179abd6d00ebd70bff6273f37fb3e0cc209f48b39d00cbf/requests-2.34.2.tar.gz"
    sha256 "f288924cae4e29463698d6d60bc6a4da69c89185ad1e0bcc4104f584e960b9ed"
  end

  resource "requests-file" do
    url "https://files.pythonhosted.org/packages/3c/f8/5dc70102e4d337063452c82e1f0d95e39abfe67aa222ed8a5ddeb9df8de8/requests_file-3.0.1.tar.gz"
    sha256 "f14243d7796c588f3521bd423c5dea2ee4cc730e54a3cac9574d78aca1272576"
  end

  resource "rpds-py" do
    url "https://files.pythonhosted.org/packages/42/68/3bd46b8a5e01d3c2ebdf9c5e9497912e3fe0cde02bac21a7130ca866e403/rpds_py-2026.9.1.tar.gz"
    sha256 "4793ef7f78268b124b73fa933440f01d258bbae01de9fa53e9080c9ab0425a12"
  end

  resource "ruamel-yaml" do
    url "https://files.pythonhosted.org/packages/c7/3b/ebda527b56beb90cb7652cb1c7e4f91f48649fbcd8d2eb2fb6e77cd3329b/ruamel_yaml-0.19.1.tar.gz"
    sha256 "53eb66cd27849eff968ebf8f0bf61f46cdac2da1d1f3576dd4ccee9b25c31993"
  end

  resource "sentry-sdk" do
    url "https://files.pythonhosted.org/packages/22/68/d1e94ac6c96d47d7870510d1b46364cd1e9f106d22731c7064921d054460/sentry_sdk-2.77.0.tar.gz"
    sha256 "23ae3aa73b440ad45f335a7e10218df73dce1a951d6e2743da7a03ad1f173870"
  end

  resource "six" do
    url "https://files.pythonhosted.org/packages/94/e7/b2c673351809dca68a0e064b6af791aa332cf192da575fd474ed7d6f16a2/six-1.17.0.tar.gz"
    sha256 "ff70335d468e7eb6ec65b95b99d3a2836546063f63acc5171de367e834932a81"
  end

  resource "tabulate" do
    url "https://files.pythonhosted.org/packages/46/58/8c37dea7bbf769b20d58e7ace7e5edfe65b849442b00ffcdd56be88697c6/tabulate-0.10.0.tar.gz"
    sha256 "e2cfde8f79420f6deeffdeda9aaec3b6bc5abce947655d17ac662b126e48a60d"
  end

  resource "toml" do
    url "https://files.pythonhosted.org/packages/be/ba/1f744cdc819428fc6b5084ec34d9b30660f6f9daaf70eead706e3203ec3c/toml-0.10.2.tar.gz"
    sha256 "b3bda1d108d5dd99f4a20d24d9c348e91c4db7ab1b749200bded2f839ccbe68f"
  end

  resource "typing-extensions" do
    url "https://files.pythonhosted.org/packages/f6/cc/6253133b5bb138fc3306cebfbda2c520f545d36b5be2c7255cc528bb45d6/typing_extensions-4.16.0.tar.gz"
    sha256 "dc983d19a509c94dba722ee6abd33940f7c05a89e243c47e907eb4db6f1a43e5"
  end

  resource "typing-inspect" do
    url "https://files.pythonhosted.org/packages/dc/74/1789779d91f1961fa9438e9a8710cdae6bd138c80d7303996933d117264a/typing_inspect-0.9.0.tar.gz"
    sha256 "b23fc42ff6f6ef6954e4852c1fb512cdd18dbea03134f91f856a95ccc9461f78"
  end

  resource "typing-inspection" do
    url "https://files.pythonhosted.org/packages/ff/50/0195198eb1d75bab716bb0a813abea4cc394bfa17a92a189f021a34859af/typing_inspection-0.4.5.tar.gz"
    sha256 "7f16c411e7930dc79596d42ab44672a3fe5f60eb34b781a1647e7872363120c7"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/e3/05/b17359e1cefb4f909b5e40b1b90a496d987258916dbbf88e842c729f510e/urllib3-2.8.0.tar.gz"
    sha256 "63bf2ead4c879426ebf22ef2a781eeb4aa3b4ae798a0435506f8687fd5bb9b63"
  end

  resource "wrapt" do
    url "https://files.pythonhosted.org/packages/9c/b0/f752d19e1e83ab8bd64aeccfde32ff086aee3ef08520f7340b69a8d0a4d2/wrapt-2.5.2.tar.gz"
    sha256 "551cb49e88b3722faad780303833bc4fa70685fb1773270fb98b40d39d9fddbf"
  end

  resource "yarl" do
    url "https://files.pythonhosted.org/packages/75/16/e8be8e2fb175bbf41a0680381a319f1199fae256588241a2ac8677eafb49/yarl-1.25.1.tar.gz"
    sha256 "03dd38de09bc213e9a8b29761eec33ee1d5318dac0e49d8af36e4d27830e23a7"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/datahub --version")
    system bin/"datahub", "check", "plugins", "--source", "file"
  end
end
