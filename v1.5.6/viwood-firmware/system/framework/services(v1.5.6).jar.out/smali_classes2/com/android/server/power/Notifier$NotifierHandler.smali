.class public final Lcom/android/server/power/Notifier$NotifierHandler;
.super Landroid/os/Handler;
.source "Notifier.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/Notifier;


# direct methods
.method public constructor <init>(Lcom/android/server/power/Notifier;Landroid/os/Looper;)V
    .locals 1

    .line 1450
    iput-object p1, p0, Lcom/android/server/power/Notifier$NotifierHandler;->this$0:Lcom/android/server/power/Notifier;

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 1451
    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 1456
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    return-void

    .line 1477
    :pswitch_0
    iget-object p0, p0, Lcom/android/server/power/Notifier$NotifierHandler;->this$0:Lcom/android/server/power/Notifier;

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {p0, v0, p1}, Lcom/android/server/power/Notifier;->-$$Nest$mscreenPolicyChanging(Lcom/android/server/power/Notifier;II)V

    return-void

    .line 1474
    :pswitch_1
    iget-object p0, p0, Lcom/android/server/power/Notifier$NotifierHandler;->this$0:Lcom/android/server/power/Notifier;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/android/server/power/Notifier;->-$$Nest$mshowWiredChargingStarted(Lcom/android/server/power/Notifier;I)V

    return-void

    .line 1471
    :pswitch_2
    iget-object p0, p0, Lcom/android/server/power/Notifier$NotifierHandler;->this$0:Lcom/android/server/power/Notifier;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/android/server/power/Notifier;->-$$Nest$mlockProfile(Lcom/android/server/power/Notifier;I)V

    return-void

    :pswitch_3
    const/4 p1, 0x4

    .line 1467
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1468
    iget-object p0, p0, Lcom/android/server/power/Notifier$NotifierHandler;->this$0:Lcom/android/server/power/Notifier;

    invoke-static {p0}, Lcom/android/server/power/Notifier;->-$$Nest$msendEnhancedDischargePredictionBroadcast(Lcom/android/server/power/Notifier;)V

    return-void

    .line 1464
    :pswitch_4
    iget-object p0, p0, Lcom/android/server/power/Notifier$NotifierHandler;->this$0:Lcom/android/server/power/Notifier;

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {p0, v0, p1}, Lcom/android/server/power/Notifier;->-$$Nest$mshowWirelessChargingStarted(Lcom/android/server/power/Notifier;II)V

    return-void

    .line 1461
    :pswitch_5
    iget-object p0, p0, Lcom/android/server/power/Notifier$NotifierHandler;->this$0:Lcom/android/server/power/Notifier;

    invoke-static {p0}, Lcom/android/server/power/Notifier;->-$$Nest$msendNextBroadcast(Lcom/android/server/power/Notifier;)V

    return-void

    .line 1458
    :pswitch_6
    iget-object p0, p0, Lcom/android/server/power/Notifier$NotifierHandler;->this$0:Lcom/android/server/power/Notifier;

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {p0, v0, p1}, Lcom/android/server/power/Notifier;->-$$Nest$msendUserActivity(Lcom/android/server/power/Notifier;II)V

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
