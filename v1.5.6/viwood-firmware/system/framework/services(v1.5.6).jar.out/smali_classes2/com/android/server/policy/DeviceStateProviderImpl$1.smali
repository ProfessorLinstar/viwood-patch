.class public Lcom/android/server/policy/DeviceStateProviderImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "DeviceStateProviderImpl.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/policy/DeviceStateProviderImpl;

.field public final synthetic val$powerManager:Landroid/os/PowerManager;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/DeviceStateProviderImpl;Landroid/os/PowerManager;)V
    .locals 0

    .line 401
    iput-object p1, p0, Lcom/android/server/policy/DeviceStateProviderImpl$1;->this$0:Lcom/android/server/policy/DeviceStateProviderImpl;

    iput-object p2, p0, Lcom/android/server/policy/DeviceStateProviderImpl$1;->val$powerManager:Landroid/os/PowerManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 404
    const-string p1, "android.os.action.POWER_SAVE_MODE_CHANGED_INTERNAL"

    .line 405
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    .line 404
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 406
    iget-object p1, p0, Lcom/android/server/policy/DeviceStateProviderImpl$1;->this$0:Lcom/android/server/policy/DeviceStateProviderImpl;

    iget-object p0, p0, Lcom/android/server/policy/DeviceStateProviderImpl$1;->val$powerManager:Landroid/os/PowerManager;

    invoke-virtual {p0}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/server/policy/DeviceStateProviderImpl;->onPowerSaveModeChanged(Z)V

    :cond_0
    return-void
.end method
