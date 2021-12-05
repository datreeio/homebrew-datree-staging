# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.14.56-rc"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.14.56-rc/datree-cli_0.14.56-rc_Darwin_x86_64.zip"
    sha256 "c6861df754c6d0ecac00e09023a085998f481cc272359f7106363bb4f69eec2c"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.14.56-rc/datree-cli_0.14.56-rc_Linux_x86_64.zip"
    sha256 "5b72fc28ff65104ec81aced6205f34f775307c9e41071413adcb9bff10c7d16f"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.14.56-rc/datree-cli_0.14.56-rc_Linux_arm64.zip"
    sha256 "40722bbfdd3ecd85af72bee5dd2206d4bca96df8ce40829367c864904bb6fc90"
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
