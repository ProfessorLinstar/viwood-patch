.class public Lcom/android/server/wm/AccessibilityWindowsPopulator$MyHandler;
.super Landroid/os/Handler;
.source "AccessibilityWindowsPopulator.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/AccessibilityWindowsPopulator;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/AccessibilityWindowsPopulator;Landroid/os/Looper;)V
    .locals 1

    .line 614
    iput-object p1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$MyHandler;->this$0:Lcom/android/server/wm/AccessibilityWindowsPopulator;

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 615
    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 620
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 p1, 0x2

    if-eq v0, p1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    return-void

    .line 631
    :cond_0
    invoke-static {}, Lcom/android/server/wm/AccessibilityWindowsPopulator;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Windows change within in 2 frames continuously over 500 ms and notify windows changed immediately"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$MyHandler;->this$0:Lcom/android/server/wm/AccessibilityWindowsPopulator;

    invoke-static {v0}, Lcom/android/server/wm/AccessibilityWindowsPopulator;->-$$Nest$fgetmHandler(Lcom/android/server/wm/AccessibilityWindowsPopulator;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 636
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$MyHandler;->this$0:Lcom/android/server/wm/AccessibilityWindowsPopulator;

    invoke-static {p0}, Lcom/android/server/wm/AccessibilityWindowsPopulator;->-$$Nest$mforceUpdateWindows(Lcom/android/server/wm/AccessibilityWindowsPopulator;)V

    return-void

    .line 627
    :cond_1
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$MyHandler;->this$0:Lcom/android/server/wm/AccessibilityWindowsPopulator;

    invoke-static {p0}, Lcom/android/server/wm/AccessibilityWindowsPopulator;->-$$Nest$mforceUpdateWindows(Lcom/android/server/wm/AccessibilityWindowsPopulator;)V

    return-void

    .line 622
    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    .line 623
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$MyHandler;->this$0:Lcom/android/server/wm/AccessibilityWindowsPopulator;

    invoke-static {p0, p1}, Lcom/android/server/wm/AccessibilityWindowsPopulator;->-$$Nest$mnotifyWindowsChanged(Lcom/android/server/wm/AccessibilityWindowsPopulator;Ljava/util/List;)V

    return-void
.end method
