{ pkgs, ... }:

{
  home.file.".config/Code/User/settings.json".text = ''

{
    // Auto-save files after a delay
    "files.autoSave": "afterDelay",

    // Set the icon theme for the file explorer
    "workbench.iconTheme": "material-icon-theme",

    // Disable automatic linking of matching tags
    "editor.linkedEditing": false,

    // Focus on the terminal after launching Python
    "python.terminal.focusAfterLaunch": true,

    // Set the default formatter for most file types
    "editor.defaultFormatter": "esbenp.prettier-vscode",

    // Set tab width for Prettier
    "prettier.tabWidth": 4,

    // Python-specific settings
    "[python]": {
        "editor.defaultFormatter": "ms-python.black-formatter"
    },

    // Java-specific settings
    "[java]": {
        "editor.defaultFormatter": "redhat.java"
    },

    // Disable multi-line paste warning in terminal
    "terminal.integrated.enableMultiLinePasteWarning": "never",

    // Disable automatic Git repository detection
    //"git.autoRepositoryDetection": false,

    // Live Server settings
    "liveServer.settings.donotShowInfoMsg": true,
    "liveServer.settings.donotVerifyTags": true,

    // Disable Red Hat telemetry
    "redhat.telemetry.enabled": false,

    // Disable notification for open loose files in Live Preview
    "livePreview.notifyOnOpenLooseFile": false,

    // Set multi-cursor modifier key
    "editor.multiCursorModifier": "ctrlCmd",

    // Disable accessibility support
    "editor.accessibilitySupport": "off",

    // Disable minimap
    "editor.minimap.enabled": false,

    // Set Python interpreter path
    //"python.pythonPath": "~/xtreme/bin/python",

    // Set color theme
    //"workbench.colorTheme": "Gitpod Dark",

    // Set editor font family
    "editor.fontFamily": "'Fira Code' ,'MesloLGS NF', 'Droid Sans Mono', 'monospace'"
    
}

'';

}


