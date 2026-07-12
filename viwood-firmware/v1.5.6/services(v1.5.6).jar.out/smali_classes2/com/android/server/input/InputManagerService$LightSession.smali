.class public final Lcom/android/server/input/InputManagerService$LightSession;
.super Ljava/lang/Object;
.source "InputManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final mDeviceId:I

.field public mLightIds:[I

.field public mLightStates:[Landroid/hardware/lights/LightState;

.field public final mOpPkg:Ljava/lang/String;

.field public final mToken:Landroid/os/IBinder;

.field public final synthetic this$0:Lcom/android/server/input/InputManagerService;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmDeviceId(Lcom/android/server/input/InputManagerService$LightSession;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/input/InputManagerService$LightSession;->mDeviceId:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLightIds(Lcom/android/server/input/InputManagerService$LightSession;)[I
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/input/InputManagerService$LightSession;->mLightIds:[I

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLightStates(Lcom/android/server/input/InputManagerService$LightSession;)[Landroid/hardware/lights/LightState;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/input/InputManagerService$LightSession;->mLightStates:[Landroid/hardware/lights/LightState;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmOpPkg(Lcom/android/server/input/InputManagerService$LightSession;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/input/InputManagerService$LightSession;->mOpPkg:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmLightIds(Lcom/android/server/input/InputManagerService$LightSession;[I)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/input/InputManagerService$LightSession;->mLightIds:[I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmLightStates(Lcom/android/server/input/InputManagerService$LightSession;[Landroid/hardware/lights/LightState;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/input/InputManagerService$LightSession;->mLightStates:[Landroid/hardware/lights/LightState;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/input/InputManagerService;ILjava/lang/String;Landroid/os/IBinder;)V
    .locals 0

    .line 2022
    iput-object p1, p0, Lcom/android/server/input/InputManagerService$LightSession;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2023
    iput p2, p0, Lcom/android/server/input/InputManagerService$LightSession;->mDeviceId:I

    .line 2024
    iput-object p3, p0, Lcom/android/server/input/InputManagerService$LightSession;->mOpPkg:Ljava/lang/String;

    .line 2025
    iput-object p4, p0, Lcom/android/server/input/InputManagerService$LightSession;->mToken:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 4

    .line 2030
    invoke-static {}, Lcom/android/server/input/InputManagerService;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2031
    const-string v0, "InputManager"

    const-string v1, "Light token died."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2033
    :cond_0
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$LightSession;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->-$$Nest$fgetmLightLock(Lcom/android/server/input/InputManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2034
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService$LightSession;->this$0:Lcom/android/server/input/InputManagerService;

    iget v2, p0, Lcom/android/server/input/InputManagerService$LightSession;->mDeviceId:I

    iget-object v3, p0, Lcom/android/server/input/InputManagerService$LightSession;->mToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/input/InputManagerService;->closeLightSession(ILandroid/os/IBinder;)V

    .line 2035
    iget-object v1, p0, Lcom/android/server/input/InputManagerService$LightSession;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v1}, Lcom/android/server/input/InputManagerService;->-$$Nest$fgetmLightSessions(Lcom/android/server/input/InputManagerService;)Landroid/util/ArrayMap;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/input/InputManagerService$LightSession;->mToken:Landroid/os/IBinder;

    invoke-virtual {v1, p0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2036
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
