.class public Lcom/android/server/input/BatteryController$ListenerRecord;
.super Ljava/lang/Object;
.source "BatteryController.java"


# instance fields
.field public final mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field public final mListener:Landroid/hardware/input/IInputDeviceBatteryListener;

.field public final mMonitoredDevices:Ljava/util/Set;

.field public final mPid:I

.field public final synthetic this$0:Lcom/android/server/input/BatteryController;


# direct methods
.method public static synthetic $r8$lambda$ZBlwIivbKgnBE15a7ZyblIFDLYc(Lcom/android/server/input/BatteryController$ListenerRecord;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/input/BatteryController$ListenerRecord;->lambda$new$0(I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/input/BatteryController;ILandroid/hardware/input/IInputDeviceBatteryListener;)V
    .locals 0

    .line 510
    iput-object p1, p0, Lcom/android/server/input/BatteryController$ListenerRecord;->this$0:Lcom/android/server/input/BatteryController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 511
    iput p2, p0, Lcom/android/server/input/BatteryController$ListenerRecord;->mPid:I

    .line 512
    iput-object p3, p0, Lcom/android/server/input/BatteryController$ListenerRecord;->mListener:Landroid/hardware/input/IInputDeviceBatteryListener;

    .line 513
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/server/input/BatteryController$ListenerRecord;->mMonitoredDevices:Ljava/util/Set;

    .line 514
    new-instance p1, Lcom/android/server/input/BatteryController$ListenerRecord$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, p2}, Lcom/android/server/input/BatteryController$ListenerRecord$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/input/BatteryController$ListenerRecord;I)V

    iput-object p1, p0, Lcom/android/server/input/BatteryController$ListenerRecord;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-void
.end method


# virtual methods
.method public final synthetic lambda$new$0(I)V
    .locals 0

    .line 514
    iget-object p0, p0, Lcom/android/server/input/BatteryController$ListenerRecord;->this$0:Lcom/android/server/input/BatteryController;

    invoke-static {p0, p1}, Lcom/android/server/input/BatteryController;->-$$Nest$mhandleListeningProcessDied(Lcom/android/server/input/BatteryController;I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 519
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/input/BatteryController$ListenerRecord;->mPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", monitored devices="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/input/BatteryController$ListenerRecord;->mMonitoredDevices:Ljava/util/Set;

    .line 520
    invoke-interface {p0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
