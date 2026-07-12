.class public Lcom/android/server/CachedDeviceStateService$1;
.super Landroid/content/BroadcastReceiver;
.source "CachedDeviceStateService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/CachedDeviceStateService;


# direct methods
.method public constructor <init>(Lcom/android/server/CachedDeviceStateService;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/android/server/CachedDeviceStateService$1;->this$0:Lcom/android/server/CachedDeviceStateService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 43
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_1
    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move v2, v0

    goto :goto_0

    :sswitch_2
    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move v2, v1

    :goto_0
    packed-switch v2, :pswitch_data_0

    return-void

    .line 51
    :pswitch_0
    iget-object p0, p0, Lcom/android/server/CachedDeviceStateService$1;->this$0:Lcom/android/server/CachedDeviceStateService;

    invoke-static {p0}, Lcom/android/server/CachedDeviceStateService;->-$$Nest$fgetmDeviceState(Lcom/android/server/CachedDeviceStateService;)Lcom/android/internal/os/CachedDeviceState;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/internal/os/CachedDeviceState;->setScreenInteractive(Z)V

    return-void

    .line 45
    :pswitch_1
    iget-object p0, p0, Lcom/android/server/CachedDeviceStateService$1;->this$0:Lcom/android/server/CachedDeviceStateService;

    invoke-static {p0}, Lcom/android/server/CachedDeviceStateService;->-$$Nest$fgetmDeviceState(Lcom/android/server/CachedDeviceStateService;)Lcom/android/internal/os/CachedDeviceState;

    move-result-object p0

    const-string/jumbo p1, "plugged"

    .line 46
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    move v0, v1

    .line 45
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/internal/os/CachedDeviceState;->setCharging(Z)V

    return-void

    .line 54
    :pswitch_2
    iget-object p0, p0, Lcom/android/server/CachedDeviceStateService$1;->this$0:Lcom/android/server/CachedDeviceStateService;

    invoke-static {p0}, Lcom/android/server/CachedDeviceStateService;->-$$Nest$fgetmDeviceState(Lcom/android/server/CachedDeviceStateService;)Lcom/android/internal/os/CachedDeviceState;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/internal/os/CachedDeviceState;->setScreenInteractive(Z)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7ed8ea7f -> :sswitch_2
        -0x5bb23923 -> :sswitch_1
        -0x56ac2893 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
