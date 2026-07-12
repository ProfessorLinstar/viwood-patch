.class public Lcom/android/server/power/PowerManagerService$NativeWrapper;
.super Ljava/lang/Object;
.source "PowerManagerService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 986
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public nativeAcquireSuspendBlocker(Ljava/lang/String;)V
    .locals 0

    .line 994
    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$smnativeAcquireSuspendBlocker(Ljava/lang/String;)V

    return-void
.end method

.method public nativeForceSuspend()Z
    .locals 0

    .line 1019
    invoke-static {}, Lcom/android/server/power/PowerManagerService;->-$$Nest$smnativeForceSuspend()Z

    move-result p0

    return p0
.end method

.method public nativeInit(Lcom/android/server/power/PowerManagerService;)V
    .locals 0

    .line 989
    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$mnativeInit(Lcom/android/server/power/PowerManagerService;)V

    return-void
.end method

.method public nativeReleaseSuspendBlocker(Ljava/lang/String;)V
    .locals 0

    .line 999
    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$smnativeReleaseSuspendBlocker(Ljava/lang/String;)V

    return-void
.end method

.method public nativeSetAutoSuspend(Z)V
    .locals 0

    .line 1004
    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$smnativeSetAutoSuspend(Z)V

    return-void
.end method

.method public nativeSetPowerBoost(II)V
    .locals 0

    .line 1009
    invoke-static {p1, p2}, Lcom/android/server/power/PowerManagerService;->-$$Nest$smnativeSetPowerBoost(II)V

    return-void
.end method

.method public nativeSetPowerMode(IZ)Z
    .locals 0

    .line 1014
    invoke-static {p1, p2}, Lcom/android/server/power/PowerManagerService;->-$$Nest$smnativeSetPowerMode(IZ)Z

    move-result p0

    return p0
.end method
