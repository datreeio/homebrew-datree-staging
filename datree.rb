# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.14.49-rc"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.14.49-rc/datree-cli_0.14.49-rc_Darwin_x86_64.zip"
    sha256 "eecfd15a2559334cafed5c8cba2fdbe763dffd7f76622330bbf02dd26e91d9d9"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.14.49-rc/datree-cli_0.14.49-rc_Linux_x86_64.zip"
    sha256 "313a7c0a23e80ebfa5e5fc3071298979774969f7f8e3de4aecbf007a724b8535"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.14.49-rc/datree-cli_0.14.49-rc_Linux_arm64.zip"
    sha256 "60246d8bd995b539af27dd406ceabc7a1412d034458d47437c778a39f1ec60a7"
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
