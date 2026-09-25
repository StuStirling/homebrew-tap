cask "grove" do
  version "0.1.0"
  sha256 "bdecd5c5e1086a22f6e3d684dd7c38a3087498e3e9a05a3ca7efc38d8ed71a72"

  url "https://github.com/StuStirling/grove/releases/download/v#{version}/grove-darwin-universal.zip"
  name "grove"
  desc "Git-worktree switcher"
  homepage "https://github.com/StuStirling/grove"

  app "grove.app"
  binary "#{appdir}/grove.app/Contents/MacOS/grove"

  # Unsigned: strip the quarantine bit so the app opens after install.
  postflight do
    system_command "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "#{appdir}/grove.app"]
  end
end
