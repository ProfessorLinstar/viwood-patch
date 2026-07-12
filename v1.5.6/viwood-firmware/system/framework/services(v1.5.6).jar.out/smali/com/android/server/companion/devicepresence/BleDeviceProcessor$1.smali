.class public Lcom/android/server/companion/devicepresence/BleDeviceProcessor$1;
.super Landroid/content/BroadcastReceiver;
.source "BleDeviceProcessor.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/companion/devicepresence/BleDeviceProcessor;


# direct methods
.method public static synthetic $r8$lambda$GG5h9OK5k90dQ3r6u26HI7ldv-E(Lcom/android/server/companion/devicepresence/BleDeviceProcessor$1;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/companion/devicepresence/BleDeviceProcessor$1;->lambda$onReceive$0()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/companion/devicepresence/BleDeviceProcessor;)V
    .locals 0

    .line 241
    iput-object p1, p0, Lcom/android/server/companion/devicepresence/BleDeviceProcessor$1;->this$0:Lcom/android/server/companion/devicepresence/BleDeviceProcessor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic lambda$onReceive$0()V
    .locals 0

    .line 245
    iget-object p0, p0, Lcom/android/server/companion/devicepresence/BleDeviceProcessor$1;->this$0:Lcom/android/server/companion/devicepresence/BleDeviceProcessor;

    invoke-static {p0}, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->-$$Nest$mcheckBleState(Lcom/android/server/companion/devicepresence/BleDeviceProcessor;)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 245
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Lcom/android/server/companion/devicepresence/BleDeviceProcessor$1$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/server/companion/devicepresence/BleDeviceProcessor$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/companion/devicepresence/BleDeviceProcessor$1;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
