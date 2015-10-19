function startup  
    alias editStartup "vim ~/.config/fish/functions/startup.fish"
    alias vimrc "vim ~/.vimrc"
    alias cdp "cd .."
    alias cdpp "cd ../.."
    alias p "python"
    alias web "open -a FirefoxNightly"
    alias ical "open -a Calendar"
    alias fly "git add -A; and git commit -m 'intermediate commit'; and git pull --rebase; and git push"
    alias funcs "cd ~/.config/fish/functions"
    alias cds "cd $argv; and ls"
    
    function v
        vim $argv
    end

    set PATH /usr/local/bin $PATH
    set PATH /Developer/adt-bundle/sdk/platform-tools $PATH
    set PATH /Developer/adt-bundle/sdk/tools $PATH
#change location of screen captures
    defaults write com.apple.screencapture location ~/Pictures/screenshots
    killall SystemUIServer

#hides the dashboard
        defaults write com.apple.dashboard mcx-disabled -boolean YES

#copy text from quicklook
        defaults write com.apple.finder QLEnableTextSelection -bool true
        defaults write com.apple.finder QLEnableXRayFolders -boolean YES
        defaults write com.apple.Dock showhidden -bool YES
        defaults write com.apple.finder AppleShowAllFiles false
        defaults write com.apple.finder QuitMenuItem -bool YES
        killall Finder

#remove delay from dock
        defaults write com.apple.Preview ApplePersistenceIgnoreState YES
        defaults write com.apple.Dock autohide-delay -float 0 
        killall Dock

#enable debug mode in disk utility
        defaults write com.apple.DiskUtility DUDebugMenuEnabled -bool true
        defaults write com.apple.DiskUtility advanced-image-options -bool true

#long save by default
        defaults write -g NSNavPanelExpandedStateForSaveMode -bool TRUE

#stop help window from being at the front at all times
        defaults write com.apple.helpviewer DevMode -bool true
end
