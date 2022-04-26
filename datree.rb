# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.3.5-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.3.5-rc/datree-cli_1.3.5-rc_Darwin_x86_64.zip"
    sha256 "f6346d17807b5e3403983c47a3100b163780e3789655e6278ec2644e50b65971"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.3.5-rc/datree-cli_1.3.5-rc_Darwin_arm64.zip"
    sha256 "2d750370a5df3153fd89269a68e25808f2a04b6c4e5069e2666e483588d0c9a2"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.3.5-rc/datree-cli_1.3.5-rc_Linux_x86_64.zip"
    sha256 "c5a8b7c3af3aba06b7baf79fc7f0cab7573a02362f824661ab72c5f684e7bc57"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.3.5-rc/datree-cli_1.3.5-rc_Linux_arm64.zip"
    sha256 "4cd1480b4615cd5413abcf6d2d25a3825a380083011c80db1b1733e8f277906b"
  end

  def install
    bin.install "datree"
  end

  def caveats
    <<~EOS
      \033[32m[V] Downloaded Datree
      [V] Finished Installation

      \033[35m Usage: $ datree test [k8s-file.yaml]
       Using Helm? => https://github.com/datreeio/helm-datree
       Using Kustomize? => https://hub.datree.io/kustomize-support
    EOS
  end
end
