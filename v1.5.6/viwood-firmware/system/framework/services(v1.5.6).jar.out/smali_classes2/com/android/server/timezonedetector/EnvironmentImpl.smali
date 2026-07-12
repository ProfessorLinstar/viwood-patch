.class public final Lcom/android/server/timezonedetector/EnvironmentImpl;
.super Ljava/lang/Object;
.source "EnvironmentImpl.java"

# interfaces
.implements Lcom/android/server/timezonedetector/Environment;


# instance fields
.field public final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/server/timezonedetector/EnvironmentImpl;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public addDebugLogEntry(Ljava/lang/String;)V
    .locals 0

    .line 79
    invoke-static {p1}, Lcom/android/server/SystemTimeZone;->addDebugLogEntry(Ljava/lang/String;)V

    return-void
.end method

.method public dumpDebugLog(Ljava/io/PrintWriter;)V
    .locals 0

    .line 84
    invoke-static {p1}, Lcom/android/server/SystemTimeZone;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public elapsedRealtimeMillis()J
    .locals 2

    .line 69
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDeviceTimeZone()Ljava/lang/String;
    .locals 0

    .line 50
    const-string/jumbo p0, "persist.sys.timezone"

    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDeviceTimeZoneConfidence()I
    .locals 0

    .line 55
    invoke-static {}, Lcom/android/server/SystemTimeZone;->getTimeZoneConfidence()I

    move-result p0

    return p0
.end method

.method public runAsync(Ljava/lang/Runnable;)V
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/android/server/timezonedetector/EnvironmentImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setDeviceTimeZoneAndConfidence(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 62
    const-class p0, Lcom/android/server/AlarmManagerInternal;

    .line 63
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/AlarmManagerInternal;

    .line 64
    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/AlarmManagerInternal;->setTimeZone(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method
