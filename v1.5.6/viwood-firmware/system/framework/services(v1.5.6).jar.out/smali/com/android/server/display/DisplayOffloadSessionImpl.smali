.class public Lcom/android/server/display/DisplayOffloadSessionImpl;
.super Ljava/lang/Object;
.source "DisplayOffloadSessionImpl.java"

# interfaces
.implements Landroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mDisplayOffloader:Landroid/hardware/display/DisplayManagerInternal$DisplayOffloader;

.field public final mDisplayPowerController:Lcom/android/server/display/DisplayPowerController;

.field public mIsActive:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const-string v0, "DisplayOffloadSessionImpl"

    invoke-static {v0}, Lcom/android/server/display/utils/DebugUtils;->isDebuggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/display/DisplayOffloadSessionImpl;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/hardware/display/DisplayManagerInternal$DisplayOffloader;Lcom/android/server/display/DisplayPowerController;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/android/server/display/DisplayOffloadSessionImpl;->mDisplayOffloader:Landroid/hardware/display/DisplayManagerInternal$DisplayOffloader;

    .line 49
    iput-object p2, p0, Lcom/android/server/display/DisplayOffloadSessionImpl;->mDisplayPowerController:Lcom/android/server/display/DisplayPowerController;

    return-void
.end method


# virtual methods
.method public allowAutoBrightnessInDoze()Z
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/android/server/display/DisplayOffloadSessionImpl;->mDisplayOffloader:Landroid/hardware/display/DisplayManagerInternal$DisplayOffloader;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 67
    :cond_0
    invoke-interface {p0}, Landroid/hardware/display/DisplayManagerInternal$DisplayOffloader;->allowAutoBrightnessInDoze()Z

    move-result p0

    return p0
.end method

.method public blockScreenOn(Ljava/lang/Runnable;)Z
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/android/server/display/DisplayOffloadSessionImpl;->mDisplayOffloader:Landroid/hardware/display/DisplayManagerInternal$DisplayOffloader;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 82
    :cond_0
    invoke-interface {p0, p1}, Landroid/hardware/display/DisplayManagerInternal$DisplayOffloader;->onBlockingScreenOn(Ljava/lang/Runnable;)V

    const/4 p0, 0x1

    return p0
.end method

.method public cancelBlockScreenOn()V
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/android/server/display/DisplayOffloadSessionImpl;->mDisplayOffloader:Landroid/hardware/display/DisplayManagerInternal$DisplayOffloader;

    if-nez p0, :cond_0

    return-void

    .line 91
    :cond_0
    invoke-interface {p0}, Landroid/hardware/display/DisplayManagerInternal$DisplayOffloader;->cancelBlockScreenOn()V

    return-void
.end method

.method public getAutoBrightnessLevels(I)[F
    .locals 2

    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-gt p1, v0, :cond_0

    .line 99
    iget-object p0, p0, Lcom/android/server/display/DisplayOffloadSessionImpl;->mDisplayPowerController:Lcom/android/server/display/DisplayPowerController;

    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayPowerController;->getAutoBrightnessLevels(I)[F

    move-result-object p0

    return-object p0

    .line 97
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown auto-brightness mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getAutoBrightnessLuxLevels(I)[F
    .locals 2

    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-gt p1, v0, :cond_0

    .line 107
    iget-object p0, p0, Lcom/android/server/display/DisplayOffloadSessionImpl;->mDisplayPowerController:Lcom/android/server/display/DisplayPowerController;

    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayPowerController;->getAutoBrightnessLuxLevels(I)[F

    move-result-object p0

    return-object p0

    .line 105
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown auto-brightness mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getBrightness()F
    .locals 0

    .line 152
    iget-object p0, p0, Lcom/android/server/display/DisplayOffloadSessionImpl;->mDisplayPowerController:Lcom/android/server/display/DisplayPowerController;

    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->getScreenBrightnessSetting()F

    move-result p0

    return p0
.end method

.method public getDozeBrightness()F
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/android/server/display/DisplayOffloadSessionImpl;->mDisplayPowerController:Lcom/android/server/display/DisplayPowerController;

    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->getDozeBrightnessForOffload()F

    move-result p0

    return p0
.end method

.method public isActive()Z
    .locals 0

    .line 59
    iget-boolean p0, p0, Lcom/android/server/display/DisplayOffloadSessionImpl;->mIsActive:Z

    return p0
.end method

.method public setDozeStateOverride(I)V
    .locals 1

    .line 54
    iget-object p0, p0, Lcom/android/server/display/DisplayOffloadSessionImpl;->mDisplayPowerController:Lcom/android/server/display/DisplayPowerController;

    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lcom/android/server/display/DisplayPowerController;->overrideDozeScreenState(II)V

    return-void
.end method

.method public startOffload()Z
    .locals 5

    .line 115
    iget-object v0, p0, Lcom/android/server/display/DisplayOffloadSessionImpl;->mDisplayOffloader:Landroid/hardware/display/DisplayManagerInternal$DisplayOffloader;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/display/DisplayOffloadSessionImpl;->mIsActive:Z

    if-eqz v0, :cond_0

    goto :goto_2

    .line 119
    :cond_0
    const-string v0, "DisplayOffloader#startOffload"

    const-wide/32 v1, 0x20000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 121
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/DisplayOffloadSessionImpl;->mDisplayOffloader:Landroid/hardware/display/DisplayManagerInternal$DisplayOffloader;

    invoke-interface {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayOffloader;->startOffload()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/display/DisplayOffloadSessionImpl;->mIsActive:Z

    .line 122
    sget-boolean v0, Lcom/android/server/display/DisplayOffloadSessionImpl;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 123
    const-string v0, "DisplayOffloadSessionImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startOffload = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/display/DisplayOffloadSessionImpl;->mIsActive:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 125
    :cond_1
    :goto_0
    iget-boolean p0, p0, Lcom/android/server/display/DisplayOffloadSessionImpl;->mIsActive:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :goto_1
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 128
    throw p0

    :cond_2
    :goto_2
    const/4 p0, 0x0

    return p0
.end method

.method public stopOffload()V
    .locals 3

    .line 135
    iget-object v0, p0, Lcom/android/server/display/DisplayOffloadSessionImpl;->mDisplayOffloader:Landroid/hardware/display/DisplayManagerInternal$DisplayOffloader;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/display/DisplayOffloadSessionImpl;->mIsActive:Z

    if-nez v0, :cond_0

    goto :goto_2

    .line 138
    :cond_0
    const-string v0, "DisplayOffloader#stopOffload"

    const-wide/32 v1, 0x20000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 140
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/DisplayOffloadSessionImpl;->mDisplayOffloader:Landroid/hardware/display/DisplayManagerInternal$DisplayOffloader;

    invoke-interface {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayOffloader;->stopOffload()V

    const/4 v0, 0x0

    .line 141
    iput-boolean v0, p0, Lcom/android/server/display/DisplayOffloadSessionImpl;->mIsActive:Z

    .line 142
    sget-boolean p0, Lcom/android/server/display/DisplayOffloadSessionImpl;->DEBUG:Z

    if-eqz p0, :cond_1

    .line 143
    const-string p0, "DisplayOffloadSessionImpl"

    const-string/jumbo v0, "stopOffload"

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 146
    :cond_1
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :goto_1
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 147
    throw p0

    :cond_2
    :goto_2
    return-void
.end method

.method public updateBrightness(F)V
    .locals 1

    .line 72
    iget-boolean v0, p0, Lcom/android/server/display/DisplayOffloadSessionImpl;->mIsActive:Z

    if-eqz v0, :cond_0

    .line 73
    iget-object p0, p0, Lcom/android/server/display/DisplayOffloadSessionImpl;->mDisplayPowerController:Lcom/android/server/display/DisplayPowerController;

    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayPowerController;->setBrightnessFromOffload(F)V

    :cond_0
    return-void
.end method
