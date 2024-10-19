
{ pkgs, ... }:

{
  home.file.".config/Code/User/keybindings.json".text = ''
  // Place your key bindings in this file to override the defaults
[
    // Clear the terminal
    {
        "key": "ctrl+l",
        "command": "workbench.action.terminal.clear"
    },
    // Create a new folder
    {
        "key": "ctrl+alt+n",
        "command": "explorer.newFolder"
    },
    // Create a new Python file
    {
        "key": "ctrl+alt+p",
        "command": "python.createNewFile"
    },
    // Run current Python file
    {
        "key": "ctrl+numpad4",
        "command": "python.execInTerminal"
    },
    // Kill the terminal
    {
        "key": "ctrl+numpad5",
        "command": "workbench.action.terminal.kill"
    },
    // Relaunch the terminal
    {
        "key": "ctrl+numpad6",
        "command": "workbench.action.terminal.relaunch"
    },
    // Toggle focus between terminal and editor
    {
        "key": "ctrl+'",
        "command": "workbench.action.terminal.focus"
    },
    {
        "key": "ctrl+'",
        "command": "workbench.action.focusFirstEditorGroup",
        "when": "terminalFocus"
    },
    // Debug controls
    {
        "key": "ctrl+enter",
        "command": "workbench.action.debug.continue",
        "when": "debugState == 'stopped'"
    },
    {
        "key": "ctrl+enter",
        "command": "workbench.action.debug.start",
        "when": "debuggersAvailable && debugState == 'inactive'"
    },
    {
        "key": "ctrl+enter",
        "command": "debug.openView",
        "when": "!debuggersAvailable"
    },
    // Close git repository
    {
        "key": "ctrl+k ctrl+g",
        "command": "git.close"
    },
    // Java: Insert System.out.println()
    {
        "key": "ctrl+alt+l",
        "command": "extension.insertSysoutStatement",
        "when": "editorTextFocus && editorLangId == 'java'"
    },
    // Remove conflicting key binding
    {
        "key": "ctrl+shift+l",
        "command": "-extension.insertSysoutStatement",
        "when": "editorTextFocus && editorLangId == 'java'"
    },
    // Reload Visual Studio Code
    {
        "key": "ctrl+alt+r",
        "command": "workbench.action.reloadWindow"
    },
    // Remove conflicting key binding
    {
        "key": "ctrl+r",
        "command": "-workbench.action.reloadWindow",
        "when": "isDevelopment && !isAuxiliaryWindowFocusedContext"
    },
    // Start Live Preview
    {
        "key": "alt+l alt+p",
        "command": "livePreview.start.internalPreview.atFile"
    },
    // Create new Java class
    {
        "key": "ctrl+alt+j",
        "command": "java.view.menus.file.newJavaClass"
    },
    // Create new file
    {
        "key": "ctrl+k ctrl+n",
        "command": "explorer.newFile"
    }
]  '';
}
