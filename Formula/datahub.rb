class Datahub < Formula
  include Language::Python::Virtualenv

  desc "CLI for DataHub, the open-source context platform for humans and AI agents"
  homepage "https://docs.datahub.com/"
  url "https://files.pythonhosted.org/packages/7b/e7/b322da07bb020133ae31216a3932438c1ac10b7d128f467595b2fd3acddb/acryl_datahub-1.6.0.tar.gz"
  sha256 "cfd3c8d8bc263723686dcbbd861ad6fb35519d39c2bff6a32fe7e85af4b869cf"
  license "Apache-2.0"
  head "https://github.com/datahub-project/datahub.git", branch: "master"

  livecheck do
    url "https://pypi.org/pypi/acryl-datahub/json"
    strategy :json do |json|
      json.dig("info", "version")
    end
  end

  depends_on "rust" => :build
  depends_on "openssl@3"
  depends_on "python@3.13"

  # ---------------------------------------------------------------------------
  # TODO: Run `brew update-python-resources Formula/datahub.rb` locally to
  # populate the ~31 transitive runtime dependencies as `resource` blocks.
  # The single example below is a placeholder so the file is syntactically
  # valid; replace it with the real generated list before the first release.
  # ---------------------------------------------------------------------------
  resource "click" do
    url "https://files.pythonhosted.org/packages/source/c/click/click-8.1.7.tar.gz"
    sha256 "ca9853ad459e787e2192211578cc907e7594e294c7ccc834310722b41b9ca6de"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/datahub --version")
    system bin/"datahub", "check", "plugins", "--source", "file"
  end
end
