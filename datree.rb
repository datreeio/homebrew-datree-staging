# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.14.83-rc"

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.14.83-rc/datree-cli_0.14.83-rc_Darwin_x86_64.zip"
    sha256 "c4dc4dcf0a0fb74bedba00a32b663ffd74187e821c1c19a1797912d568669886"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.14.83-rc/datree-cli_0.14.83-rc_Linux_x86_64.zip"
    sha256 "8b6f209ae95b6c0f3fabcaa998477d9e8f60711daab126d61ce1de3ea238afe5"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.14.83-rc/datree-cli_0.14.83-rc_Linux_arm64.zip"
    sha256 "50ae676ce3ab7566333a9f68a93efe069e4404304bb88973cefa359f8ab57357"
  end

  def install
    bin.install "datree"
  end

  def caveats
    <<~EOS
      \033[32m[V] Downloaded Datree
      [V] Finished Installation

      \033[35m Usage: $ datree test [k8s-file.yaml]
       Using Helm? => https://hub.datree.io/helm-plugin
      tput init
    EOS
  end
end
