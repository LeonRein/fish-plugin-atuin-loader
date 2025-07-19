### Auto-load Atuin ###
# Only load if we're in an interactive session
if status is-interactive
    _atuin_loader_load false  # false = disable loading message for cleaner startup
end
