.class public Lcom/android/server/soundtrigger/SoundTriggerService$1;
.super Landroid/content/BroadcastReceiver;
.source "SoundTriggerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

.field public final synthetic val$powerManager:Landroid/os/PowerManager;


# direct methods
.method public constructor <init>(Lcom/android/server/soundtrigger/SoundTriggerService;Landroid/os/PowerManager;)V
    .locals 0

    .line 273
    iput-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$1;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    iput-object p2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$1;->val$powerManager:Landroid/os/PowerManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 276
    const-string p1, "android.os.action.POWER_SAVE_MODE_CHANGED"

    .line 277
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 280
    :cond_0
    iget-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$1;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {p1}, Lcom/android/server/soundtrigger/SoundTriggerService;->-$$Nest$fgetmDeviceStateHandler(Lcom/android/server/soundtrigger/SoundTriggerService;)Lcom/android/server/soundtrigger/DeviceStateHandler;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$1;->val$powerManager:Landroid/os/PowerManager;

    .line 281
    invoke-virtual {p0}, Landroid/os/PowerManager;->getSoundTriggerPowerSaveMode()I

    move-result p0

    .line 280
    invoke-virtual {p1, p0}, Lcom/android/server/soundtrigger/DeviceStateHandler;->onPowerModeChanged(I)V

    return-void
.end method
