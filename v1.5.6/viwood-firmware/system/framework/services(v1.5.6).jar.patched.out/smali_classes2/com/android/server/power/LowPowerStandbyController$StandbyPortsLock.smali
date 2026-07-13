.class public final Lcom/android/server/power/LowPowerStandbyController$StandbyPortsLock;
.super Ljava/lang/Object;
.source "LowPowerStandbyController.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final mPorts:Ljava/util/List;

.field public final mToken:Landroid/os/IBinder;

.field public final mUid:I

.field public final synthetic this$0:Lcom/android/server/power/LowPowerStandbyController;


# direct methods
.method public constructor <init>(Lcom/android/server/power/LowPowerStandbyController;Landroid/os/IBinder;ILjava/util/List;)V
    .locals 0

    .line 217
    iput-object p1, p0, Lcom/android/server/power/LowPowerStandbyController$StandbyPortsLock;->this$0:Lcom/android/server/power/LowPowerStandbyController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    iput-object p2, p0, Lcom/android/server/power/LowPowerStandbyController$StandbyPortsLock;->mToken:Landroid/os/IBinder;

    .line 219
    iput p3, p0, Lcom/android/server/power/LowPowerStandbyController$StandbyPortsLock;->mUid:I

    .line 220
    iput-object p4, p0, Lcom/android/server/power/LowPowerStandbyController$StandbyPortsLock;->mPorts:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController$StandbyPortsLock;->this$0:Lcom/android/server/power/LowPowerStandbyController;

    iget-object p0, p0, Lcom/android/server/power/LowPowerStandbyController$StandbyPortsLock;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, p0}, Lcom/android/server/power/LowPowerStandbyController;->releaseStandbyPorts(Landroid/os/IBinder;)V

    return-void
.end method

.method public getPorts()Ljava/util/List;
    .locals 0

    .line 246
    iget-object p0, p0, Lcom/android/server/power/LowPowerStandbyController$StandbyPortsLock;->mPorts:Ljava/util/List;

    return-object p0
.end method

.method public getToken()Landroid/os/IBinder;
    .locals 0

    .line 238
    iget-object p0, p0, Lcom/android/server/power/LowPowerStandbyController$StandbyPortsLock;->mToken:Landroid/os/IBinder;

    return-object p0
.end method

.method public getUid()I
    .locals 0

    .line 242
    iget p0, p0, Lcom/android/server/power/LowPowerStandbyController$StandbyPortsLock;->mUid:I

    return p0
.end method

.method public linkToDeath()Z
    .locals 2

    const/4 v0, 0x0

    .line 225
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/LowPowerStandbyController$StandbyPortsLock;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    .line 228
    :catch_0
    const-string p0, "LowPowerStandbyController"

    const-string v1, "StandbyPorts token already died"

    invoke-static {p0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public unlinkToDeath()V
    .locals 2

    .line 234
    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController$StandbyPortsLock;->mToken:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-void
.end method
