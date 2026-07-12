.class Lcom/android/server/media/projection/MediaProjectionManagerService$Injector;
.super Ljava/lang/Object;
.source "MediaProjectionManagerService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createCallbackLooper()Landroid/os/Looper;
    .locals 0

    .line 240
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p0

    return-object p0
.end method

.method public createClock()Lcom/android/server/media/projection/MediaProjectionManagerService$Clock;
    .locals 0

    .line 235
    new-instance p0, Lcom/android/server/media/projection/MediaProjectionManagerService$Injector$$ExternalSyntheticLambda0;

    invoke-direct {p0}, Lcom/android/server/media/projection/MediaProjectionManagerService$Injector$$ExternalSyntheticLambda0;-><init>()V

    return-object p0
.end method

.method public mediaProjectionMetricsLogger(Landroid/content/Context;)Lcom/android/server/media/projection/MediaProjectionMetricsLogger;
    .locals 0

    .line 244
    invoke-static {p1}, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->getInstance(Landroid/content/Context;)Lcom/android/server/media/projection/MediaProjectionMetricsLogger;

    move-result-object p0

    return-object p0
.end method

.method public shouldMediaProjectionPreventReusingConsent(Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;)Z
    .locals 2

    .line 230
    iget-object p0, p1, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->packageName:Ljava/lang/String;

    iget p1, p1, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->uid:I

    .line 231
    invoke-static {p1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object p1

    const-wide/32 v0, 0xfddea07

    .line 230
    invoke-static {v0, v1, p0, p1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result p0

    return p0
.end method
