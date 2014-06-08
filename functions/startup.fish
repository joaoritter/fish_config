function startup  
    alias cs "ssh ritterj@classroom.cs.unc.edu"
    alias edit_startup "vim ~/.config/fish/functions/startup.fish"
    alias vimrc "vim ~/.vimrc"
    alias cdp "cd .."
    alias pref "open /Applications/System\ Preferences.app"
    alias p "python"
    alias photoshop "open -a Adobe\ Photoshop\ CS"
    alias illustrator "open -a Adobe\ Illustrator\ CS"
    alias web "open -a FirefoxNightly"
    alias notes "cd ~/Dropbox/Joao/notes"
    alias ical "open -a Calendar"
    
    function v
        vim $argv
    end

    function cdp
        if set -q $argv
            cd ..
        else
            cd ../$argv
        end
    end

    function cdpp
        if set -q $argv
            cd ..
            cd ..
        else
            cd ..
            cd ../$argv
        end
    end

    function db
        if set -q $argv
            cd ~/Dropbox
        else
            cd ~/Dropbox/$argv
        end
    end

    function dbj 
        if set -q $argv
            cd ~/Dropbox/Joao
        else
            cd ~/Dropbox/Joao/$argv
        end
    end


    function sch
        if set -q $argv
            cd ~/Dropbox/Joao/school
        else
            cd ~/Dropbox/Joao/school/$argv
        end
    end

    function dp
        if set -q $argv
            cd ~/Dropbox/Joao/design_projects
        else
            cd ~/Dropbox/Joao/design_projects/$argv
        end
    end
    function dl
        cd ~/Downloads
    end

set PATH /usr/local/bin $PATH

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
