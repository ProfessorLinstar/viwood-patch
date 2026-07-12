.class public final Lcom/android/server/wm/AppWarnings$UiHandler;
.super Landroid/os/Handler;
.source "AppWarnings.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/AppWarnings;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/AppWarnings;Landroid/os/Looper;)V
    .locals 1

    .line 736
    iput-object p1, p0, Lcom/android/server/wm/AppWarnings$UiHandler;->this$0:Lcom/android/server/wm/AppWarnings;

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 737
    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 742
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    return-void

    .line 768
    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    .line 769
    iget-object p0, p0, Lcom/android/server/wm/AppWarnings$UiHandler;->this$0:Lcom/android/server/wm/AppWarnings;

    invoke-static {p0, p1}, Lcom/android/server/wm/AppWarnings;->-$$Nest$mshowPageSizeMismatchDialogUiThread(Lcom/android/server/wm/AppWarnings;Lcom/android/server/wm/ActivityRecord;)V

    return-void

    .line 764
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    .line 765
    iget-object p0, p0, Lcom/android/server/wm/AppWarnings$UiHandler;->this$0:Lcom/android/server/wm/AppWarnings;

    invoke-static {p0, p1}, Lcom/android/server/wm/AppWarnings;->-$$Nest$mshowDeprecatedAbiDialogUiThread(Lcom/android/server/wm/AppWarnings;Lcom/android/server/wm/ActivityRecord;)V

    return-void

    .line 760
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    .line 761
    iget-object p0, p0, Lcom/android/server/wm/AppWarnings$UiHandler;->this$0:Lcom/android/server/wm/AppWarnings;

    invoke-static {p0, p1}, Lcom/android/server/wm/AppWarnings;->-$$Nest$mshowDeprecatedTargetSdkDialogUiThread(Lcom/android/server/wm/AppWarnings;Lcom/android/server/wm/ActivityRecord;)V

    return-void

    .line 755
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 756
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 757
    iget-object p0, p0, Lcom/android/server/wm/AppWarnings$UiHandler;->this$0:Lcom/android/server/wm/AppWarnings;

    invoke-static {p0, v0, p1}, Lcom/android/server/wm/AppWarnings;->-$$Nest$mhideDialogsForPackageUiThread(Lcom/android/server/wm/AppWarnings;Ljava/lang/String;I)V

    return-void

    .line 751
    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    .line 752
    iget-object p0, p0, Lcom/android/server/wm/AppWarnings$UiHandler;->this$0:Lcom/android/server/wm/AppWarnings;

    invoke-static {p0, p1}, Lcom/android/server/wm/AppWarnings;->-$$Nest$mshowUnsupportedCompileSdkDialogUiThread(Lcom/android/server/wm/AppWarnings;Lcom/android/server/wm/ActivityRecord;)V

    return-void

    .line 748
    :pswitch_5
    iget-object p0, p0, Lcom/android/server/wm/AppWarnings$UiHandler;->this$0:Lcom/android/server/wm/AppWarnings;

    invoke-static {p0}, Lcom/android/server/wm/AppWarnings;->-$$Nest$mhideUnsupportedDisplaySizeDialogUiThread(Lcom/android/server/wm/AppWarnings;)V

    return-void

    .line 744
    :pswitch_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    .line 745
    iget-object p0, p0, Lcom/android/server/wm/AppWarnings$UiHandler;->this$0:Lcom/android/server/wm/AppWarnings;

    invoke-static {p0, p1}, Lcom/android/server/wm/AppWarnings;->-$$Nest$mshowUnsupportedDisplaySizeDialogUiThread(Lcom/android/server/wm/AppWarnings;Lcom/android/server/wm/ActivityRecord;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public hideDialogsForPackage(Ljava/lang/String;I)V
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 800
    invoke-virtual {p0, v0, p2, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public hideUnsupportedDisplaySizeDialog()V
    .locals 1

    const/4 v0, 0x2

    .line 780
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 781
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public showDeprecatedAbiDialog(Lcom/android/server/wm/ActivityRecord;)V
    .locals 1

    const/4 v0, 0x6

    .line 795
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 796
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public showDeprecatedTargetDialog(Lcom/android/server/wm/ActivityRecord;)V
    .locals 1

    const/4 v0, 0x5

    .line 790
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 791
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public showPageSizeMismatchDialog(Lcom/android/server/wm/ActivityRecord;)V
    .locals 1

    const/4 v0, 0x7

    .line 804
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 805
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public showUnsupportedCompileSdkDialog(Lcom/android/server/wm/ActivityRecord;)V
    .locals 1

    const/4 v0, 0x3

    .line 785
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 786
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public showUnsupportedDisplaySizeDialog(Lcom/android/server/wm/ActivityRecord;)V
    .locals 1

    const/4 v0, 0x1

    .line 775
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 776
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
