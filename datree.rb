# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.14.93-rc"

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.14.93-rc/datree-cli_0.14.93-rc_Darwin_x86_64.zip"
    sha256 "4ca52542765c398bb60ae7e8ef8a4871c7c3a17750e7a835263ccfe67124ea0c"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.14.93-rc/datree-cli_0.14.93-rc_Linux_x86_64.zip"
    sha256 "b48cc4abb5291527a6a196a95a0f8f950cb76296728d2b038b5c2611048ee647"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.14.93-rc/datree-cli_0.14.93-rc_Linux_arm64.zip"
    sha256 "1a5986aafb13cdd76c3df7745c9334d5020816b02571e64865e2bf8020a1677e"
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
