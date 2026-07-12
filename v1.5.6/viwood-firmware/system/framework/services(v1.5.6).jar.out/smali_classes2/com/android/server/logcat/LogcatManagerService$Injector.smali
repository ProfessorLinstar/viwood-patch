.class public Lcom/android/server/logcat/LogcatManagerService$Injector;
.super Ljava/lang/Object;
.source "LogcatManagerService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createClock()Ljava/util/function/Supplier;
    .locals 0

    .line 292
    new-instance p0, Lcom/android/server/logcat/LogcatManagerService$Injector$$ExternalSyntheticLambda0;

    invoke-direct {p0}, Lcom/android/server/logcat/LogcatManagerService$Injector$$ExternalSyntheticLambda0;-><init>()V

    return-object p0
.end method

.method public getLogdService()Landroid/os/ILogd;
    .locals 0

    .line 300
    const-string p0, "logd"

    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Landroid/os/ILogd$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ILogd;

    move-result-object p0

    return-object p0
.end method

.method public getLooper()Landroid/os/Looper;
    .locals 0

    .line 296
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p0

    return-object p0
.end method
