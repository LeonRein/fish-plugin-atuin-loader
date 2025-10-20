function _atuin_loader_load \
    --description "Loads the Atuin fish plugin"

    # Parse arguments
    set enable_logging $argv[1]
    if not set --query argv[1]
        set enable_logging true
    end

    # Check if atuin is available
    if command -v atuin >/dev/null 2>&1
        # Load atuin with any custom arguments
        if set -q _atuin_loader_arguments; and test (count $_atuin_loader_arguments) -gt 0
            atuin init fish $_atuin_loader_arguments | sed 's/-k up/up/' | source
        else
            atuin init fish | sed 's/-k up/up/' | source
        end
        
        if test "$enable_logging" != false
            echo "Loaded the Atuin fish plugin."
        end
    else
        if test "$enable_logging" != false
            echo "Skipped loading Atuin: atuin command not found."
        end
    end
end
