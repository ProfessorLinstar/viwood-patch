.class public Lcom/android/server/location/injector/SystemLocationPowerSaveModeHelper;
.super Lcom/android/server/location/injector/LocationPowerSaveModeHelper;
.source "SystemLocationPowerSaveModeHelper.java"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public volatile mLocationPowerSaveMode:I

.field public mReady:Z


# direct methods
.method public static synthetic $r8$lambda$ic8IvMLJ6vQCSmvs8tXdFedL-KE(Lcom/android/server/location/injector/SystemLocationPowerSaveModeHelper;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/location/injector/SystemLocationPowerSaveModeHelper;->lambda$accept$0(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/android/server/location/injector/LocationPowerSaveModeHelper;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/android/server/location/injector/SystemLocationPowerSaveModeHelper;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public accept(Landroid/os/PowerSaveState;)V
    .locals 2

    .line 65
    iget-boolean v0, p1, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 68
    :cond_0
    iget p1, p1, Landroid/os/PowerSaveState;->locationMode:I

    .line 71
    :goto_0
    iget v0, p0, Lcom/android/server/location/injector/SystemLocationPowerSaveModeHelper;->mLocationPowerSaveMode:I

    if-ne p1, v0, :cond_1

    return-void

    .line 75
    :cond_1
    iput p1, p0, Lcom/android/server/location/injector/SystemLocationPowerSaveModeHelper;->mLocationPowerSaveMode:I

    .line 78
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/location/injector/SystemLocationPowerSaveModeHelper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/location/injector/SystemLocationPowerSaveModeHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/injector/SystemLocationPowerSaveModeHelper;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 35
    check-cast p1, Landroid/os/PowerSaveState;

    invoke-virtual {p0, p1}, Lcom/android/server/location/injector/SystemLocationPowerSaveModeHelper;->accept(Landroid/os/PowerSaveState;)V

    return-void
.end method

.method public getLocationPowerSaveMode()I
    .locals 1

    .line 84
    iget-boolean v0, p0, Lcom/android/server/location/injector/SystemLocationPowerSaveModeHelper;->mReady:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 85
    iget p0, p0, Lcom/android/server/location/injector/SystemLocationPowerSaveModeHelper;->mLocationPowerSaveMode:I

    return p0
.end method

.method public final synthetic lambda$accept$0(I)V
    .locals 0

    .line 78
    invoke-virtual {p0, p1}, Lcom/android/server/location/injector/LocationPowerSaveModeHelper;->notifyLocationPowerSaveModeChanged(I)V

    return-void
.end method

.method public onSystemReady()V
    .locals 3

    .line 50
    iget-boolean v0, p0, Lcom/android/server/location/injector/SystemLocationPowerSaveModeHelper;->mReady:Z

    if-eqz v0, :cond_0

    return-void

    .line 54
    :cond_0
    const-class v0, Landroid/os/PowerManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManagerInternal;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Landroid/os/PowerManagerInternal;->registerLowPowerModeObserver(ILjava/util/function/Consumer;)V

    .line 56
    iget-object v0, p0, Lcom/android/server/location/injector/SystemLocationPowerSaveModeHelper;->mContext:Landroid/content/Context;

    const-class v2, Landroid/os/PowerManager;

    .line 57
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 56
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    invoke-virtual {v0}, Landroid/os/PowerManager;->getLocationPowerSaveMode()I

    move-result v0

    iput v0, p0, Lcom/android/server/location/injector/SystemLocationPowerSaveModeHelper;->mLocationPowerSaveMode:I

    .line 59
    iput-boolean v1, p0, Lcom/android/server/location/injector/SystemLocationPowerSaveModeHelper;->mReady:Z

    return-void
.end method
