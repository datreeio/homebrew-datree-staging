# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.13.6-staging"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.13.6-staging/datree-cli_0.13.6-staging_Darwin_x86_64.zip"
    sha256 "1f9a4ad089cd26053291aa77f099d174108eaf43fbe9809f7193358070e457ad"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.13.6-staging/datree-cli_0.13.6-staging_Linux_x86_64.zip"
    sha256 "35d373a977b21635194404a0e04a335a890fdc376f43d352578893d6a434c33c"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.13.6-staging/datree-cli_0.13.6-staging_Linux_arm64.zip"
    sha256 "e6531caf5021095c35521bc03c5658995a6935aa23a35e0dadab87bb81e1aeac"
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
