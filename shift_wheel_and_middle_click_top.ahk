^+WheelUp:: Send("^+{Up}")
^+WheelDown:: Send("^+{Down}")




; 全局变量初始化
global lastClickTime := 0
global clickThreshold := 300  ; 毫秒内双击判定

~MButton:: {
    global lastClickTime, clickThreshold  ; 声明全局变量
    currentTime := A_TickCount
    if (currentTime - lastClickTime < clickThreshold) {
        Send("{Ctrl Down}{Home}{Ctrl Up}")  ; 执行跳到顶部
    }
    lastClickTime := currentTime
}





^+RButton:: Send("^+{Right}")
^+LButton:: Send("^+{Left}")