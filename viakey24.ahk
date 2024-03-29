#SingleInstance Force
global MyGUI := Gui()  ; Define the GUI globally.
global isGuiVisible := false  ; Track the visibility of the GUI.

if (A_Args.Length > 1) {
    MyGUI.Add("Picture", "x0 y0", A_Args[1])
    toggleKey := A_Args[2]
    Hotkey(toggleKey, ToggleImage())  ;
}else{
    MyGUI.Add("Picture", "x0 y0", "layer.png")
    F24::ToggleImage()
}

; Function to toggle the image display
ToggleImage() {
    global
    if (isGuiVisible) {
        MyGUI.Hide()  ; Hide the GUI if it is visible.
        isGuiVisible := false
    } else {
        MyGUI.Show("")  ; Show the GUI.
        isGuiVisible := true
    }
}
