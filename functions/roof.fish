function roof
    set where
    set which
    switch (count $argv)
        case 0
            cd ~/DropboxToeboat/code/
            return
        case 1
            set where -l
            set which $argv[1]
        case 2
            set where $argv[1]
            set which $argv[2]
        case '*'
            echo I dont understand that command
    end
    switch $where
        case -l --local
            switch $which
                case server
                    cd ~/DropboxToeboat/code/servers/roof.app
                case client
                    cd ~/DropboxToeboat/code/client
                case public
                    cd ~/DropboxToeboat/code/public/roof.io
                case '*'
                    echo I have no idea what $which means
            end
        case -c --cloud 
            switch $which
                case server
                    ssh joao@162.243.88.104
                case proxy
                    ssh joao@104.131.220.107
                case db
                    ssh joao@104.131.222.115
                case '*'
                    echo I have no idea what $which means
            end
        case '*'
            echo I have no idea what $where means
    end
end
