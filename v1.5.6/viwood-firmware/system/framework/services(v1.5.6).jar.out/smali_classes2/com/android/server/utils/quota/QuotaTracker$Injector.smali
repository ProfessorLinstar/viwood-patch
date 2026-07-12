.class Lcom/android/server/utils/quota/QuotaTracker$Injector;
.super Ljava/lang/Object;
.source "QuotaTracker.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getElapsedRealtime()J
    .locals 2

    .line 76
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public isAlarmManagerReady()Z
    .locals 0

    .line 80
    const-class p0, Lcom/android/server/SystemServiceManager;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/SystemServiceManager;

    invoke-virtual {p0}, Lcom/android/server/SystemServiceManager;->isBootCompleted()Z

    move-result p0

    return p0
.end method
