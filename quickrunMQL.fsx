open System.Runtime.InteropServices
open System.Windows.Forms

[<DllImport "user32.dll">]
extern nativeint FindWindow(string className, string windowName)

[<DllImport "user32.dll">]
extern bool SetForegroundWindow(nativeint hwnd)

FindWindow("MetaQuotes::MetaEditor::5.00", null) |> SetForegroundWindow |> ignore
SendKeys.Send "{F5}"
