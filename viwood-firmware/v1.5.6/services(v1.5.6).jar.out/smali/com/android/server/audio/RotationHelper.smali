.class public abstract Lcom/android/server/audio/RotationHelper;
.super Ljava/lang/Object;
.source "RotationHelper.java"


# static fields
.field public static sContext:Landroid/content/Context;

.field public static sDisplayListener:Lcom/android/server/audio/RotationHelper$AudioDisplayListener;

.field public static sFoldState:Ljava/lang/Boolean;

.field public static sFoldStateCallback:Ljava/util/function/Consumer;

.field public static sFoldStateListener:Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;

.field public static final sFoldStateLock:Ljava/lang/Object;

.field public static sHandler:Landroid/os/Handler;

.field public static sRotation:Ljava/lang/Integer;

.field public static sRotationCallback:Ljava/util/function/Consumer;

.field public static final sRotationLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 62
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/audio/RotationHelper;->sRotationLock:Ljava/lang/Object;

    .line 63
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/audio/RotationHelper;->sFoldStateLock:Ljava/lang/Object;

    return-void
.end method

.method public static disable()V
    .locals 2

    .line 99
    sget-object v0, Lcom/android/server/audio/RotationHelper;->sContext:Landroid/content/Context;

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    sget-object v1, Lcom/android/server/audio/RotationHelper;->sDisplayListener:Lcom/android/server/audio/RotationHelper$AudioDisplayListener;

    .line 100
    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 101
    sget-object v0, Lcom/android/server/audio/RotationHelper;->sContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/devicestate/DeviceStateManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/devicestate/DeviceStateManager;

    sget-object v1, Lcom/android/server/audio/RotationHelper;->sFoldStateListener:Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;

    .line 102
    invoke-virtual {v0, v1}, Landroid/hardware/devicestate/DeviceStateManager;->unregisterCallback(Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V

    return-void
.end method

.method public static enable()V
    .locals 3

    .line 90
    sget-object v0, Lcom/android/server/audio/RotationHelper;->sContext:Landroid/content/Context;

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    sget-object v1, Lcom/android/server/audio/RotationHelper;->sDisplayListener:Lcom/android/server/audio/RotationHelper$AudioDisplayListener;

    sget-object v2, Lcom/android/server/audio/RotationHelper;->sHandler:Landroid/os/Handler;

    .line 91
    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 92
    invoke-static {}, Lcom/android/server/audio/RotationHelper;->updateOrientation()V

    .line 94
    sget-object v0, Lcom/android/server/audio/RotationHelper;->sContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/devicestate/DeviceStateManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/devicestate/DeviceStateManager;

    new-instance v1, Landroid/os/HandlerExecutor;

    sget-object v2, Lcom/android/server/audio/RotationHelper;->sHandler:Landroid/os/Handler;

    invoke-direct {v1, v2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    sget-object v2, Lcom/android/server/audio/RotationHelper;->sFoldStateListener:Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;

    .line 95
    invoke-virtual {v0, v1, v2}, Landroid/hardware/devicestate/DeviceStateManager;->registerCallback(Ljava/util/concurrent/Executor;Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V

    return-void
.end method

.method public static forceUpdate()V
    .locals 3

    .line 165
    sget-object v0, Lcom/android/server/audio/RotationHelper;->sRotationLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 166
    :try_start_0
    sput-object v1, Lcom/android/server/audio/RotationHelper;->sRotation:Ljava/lang/Integer;

    .line 167
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 168
    invoke-static {}, Lcom/android/server/audio/RotationHelper;->updateOrientation()V

    .line 169
    sget-object v1, Lcom/android/server/audio/RotationHelper;->sFoldStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 170
    :try_start_1
    sget-object v0, Lcom/android/server/audio/RotationHelper;->sFoldState:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 171
    sget-object v2, Lcom/android/server/audio/RotationHelper;->sFoldStateCallback:Ljava/util/function/Consumer;

    invoke-interface {v2, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 173
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    .line 167
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public static init(Landroid/content/Context;Landroid/os/Handler;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 80
    sput-object p0, Lcom/android/server/audio/RotationHelper;->sContext:Landroid/content/Context;

    .line 81
    sput-object p1, Lcom/android/server/audio/RotationHelper;->sHandler:Landroid/os/Handler;

    .line 82
    new-instance p0, Lcom/android/server/audio/RotationHelper$AudioDisplayListener;

    invoke-direct {p0}, Lcom/android/server/audio/RotationHelper$AudioDisplayListener;-><init>()V

    sput-object p0, Lcom/android/server/audio/RotationHelper;->sDisplayListener:Lcom/android/server/audio/RotationHelper$AudioDisplayListener;

    .line 83
    new-instance p0, Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;

    sget-object p1, Lcom/android/server/audio/RotationHelper;->sContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/audio/RotationHelper$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/audio/RotationHelper$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {p0, p1, v0}, Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;-><init>(Landroid/content/Context;Ljava/util/function/Consumer;)V

    sput-object p0, Lcom/android/server/audio/RotationHelper;->sFoldStateListener:Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;

    .line 84
    sput-object p2, Lcom/android/server/audio/RotationHelper;->sRotationCallback:Ljava/util/function/Consumer;

    .line 85
    sput-object p3, Lcom/android/server/audio/RotationHelper;->sFoldStateCallback:Ljava/util/function/Consumer;

    .line 86
    invoke-static {}, Lcom/android/server/audio/RotationHelper;->enable()V

    return-void

    .line 78
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid null context"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static publishRotation(I)V
    .locals 2

    const/4 v0, -0x1

    if-eqz p0, :cond_3

    const/4 v1, 0x1

    if-eq p0, v1, :cond_2

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    .line 141
    const-string p0, "AudioService.RotationHelper"

    const-string v1, "Unknown device rotation"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move p0, v0

    goto :goto_0

    :cond_0
    const/16 p0, 0x10e

    goto :goto_0

    :cond_1
    const/16 p0, 0xb4

    goto :goto_0

    :cond_2
    const/16 p0, 0x5a

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    if-eq p0, v0, :cond_4

    .line 145
    sget-object v0, Lcom/android/server/audio/RotationHelper;->sRotationCallback:Ljava/util/function/Consumer;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_4
    return-void
.end method

.method public static updateFoldState(Z)V
    .locals 2

    .line 153
    sget-object v0, Lcom/android/server/audio/RotationHelper;->sFoldStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 154
    :try_start_0
    sget-object v1, Lcom/android/server/audio/RotationHelper;->sFoldState:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v1, p0, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 155
    :cond_0
    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/android/server/audio/RotationHelper;->sFoldState:Ljava/lang/Boolean;

    .line 156
    sget-object v1, Lcom/android/server/audio/RotationHelper;->sFoldStateCallback:Ljava/util/function/Consumer;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 158
    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static updateOrientation()V
    .locals 3

    .line 112
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v0

    const/4 v1, 0x0

    .line 113
    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v0

    iget v0, v0, Landroid/view/DisplayInfo;->rotation:I

    .line 114
    sget-object v1, Lcom/android/server/audio/RotationHelper;->sRotationLock:Ljava/lang/Object;

    monitor-enter v1

    .line 115
    :try_start_0
    sget-object v2, Lcom/android/server/audio/RotationHelper;->sRotation:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, v0, :cond_1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 116
    :cond_0
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/android/server/audio/RotationHelper;->sRotation:Ljava/lang/Integer;

    .line 117
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/audio/RotationHelper;->publishRotation(I)V

    .line 119
    :cond_1
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
