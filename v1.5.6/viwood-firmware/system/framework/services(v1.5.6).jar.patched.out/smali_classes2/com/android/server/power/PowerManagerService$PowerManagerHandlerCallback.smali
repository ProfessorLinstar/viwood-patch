.class public final Lcom/android/server/power/PowerManagerService$PowerManagerHandlerCallback;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .locals 0

    .line 5681
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$PowerManagerHandlerCallback;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService$PowerManagerHandlerCallback;-><init>(Lcom/android/server/power/PowerManagerService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    .line 5684
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 5704
    :pswitch_0
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$PowerManagerHandlerCallback;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$mhandleWiskyUpdatePowerState(Lcom/android/server/power/PowerManagerService;)V

    goto :goto_0

    .line 5701
    :pswitch_1
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$PowerManagerHandlerCallback;->this$0:Lcom/android/server/power/PowerManagerService;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$mreleaseAllOverrideWakeLocks(Lcom/android/server/power/PowerManagerService;I)V

    goto :goto_0

    .line 5698
    :pswitch_2
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$PowerManagerHandlerCallback;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$mhandleAttentiveTimeout(Lcom/android/server/power/PowerManagerService;)V

    goto :goto_0

    .line 5695
    :pswitch_3
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$PowerManagerHandlerCallback;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->checkForLongWakeLocks()V

    goto :goto_0

    .line 5692
    :pswitch_4
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$PowerManagerHandlerCallback;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$mhandleScreenBrightnessBoostTimeout(Lcom/android/server/power/PowerManagerService;)V

    goto :goto_0

    .line 5689
    :pswitch_5
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$PowerManagerHandlerCallback;->this$0:Lcom/android/server/power/PowerManagerService;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$mhandleSandman(Lcom/android/server/power/PowerManagerService;I)V

    goto :goto_0

    .line 5686
    :pswitch_6
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$PowerManagerHandlerCallback;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$mhandleUserActivityTimeout(Lcom/android/server/power/PowerManagerService;)V

    :goto_0
    const/4 p0, 0x1

    return p0

    nop

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
