.class public Lcom/android/server/timezonedetector/DeviceActivityMonitorImpl;
.super Ljava/lang/Object;
.source "DeviceActivityMonitorImpl.java"

# interfaces
.implements Lcom/android/server/timezonedetector/DeviceActivityMonitor;


# instance fields
.field public final mListeners:Ljava/util/List;


# direct methods
.method public static bridge synthetic -$$Nest$mnotifyFlightComplete(Lcom/android/server/timezonedetector/DeviceActivityMonitorImpl;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/DeviceActivityMonitorImpl;->notifyFlightComplete()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/timezonedetector/DeviceActivityMonitorImpl;->mListeners:Ljava/util/List;

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 54
    new-instance v0, Lcom/android/server/timezonedetector/DeviceActivityMonitorImpl$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/server/timezonedetector/DeviceActivityMonitorImpl$1;-><init>(Lcom/android/server/timezonedetector/DeviceActivityMonitorImpl;Landroid/os/Handler;Landroid/content/ContentResolver;)V

    .line 68
    const-string p0, "airplane_mode_on"

    .line 69
    invoke-static {p0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    const/4 p2, 0x1

    .line 68
    invoke-virtual {p1, p0, p2, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public static create(Landroid/content/Context;Landroid/os/Handler;)Lcom/android/server/timezonedetector/DeviceActivityMonitor;
    .locals 1

    .line 43
    new-instance v0, Lcom/android/server/timezonedetector/DeviceActivityMonitorImpl;

    invoke-direct {v0, p0, p1}, Lcom/android/server/timezonedetector/DeviceActivityMonitorImpl;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    return-object v0
.end method


# virtual methods
.method public declared-synchronized addListener(Lcom/android/server/timezonedetector/DeviceActivityMonitor$Listener;)V
    .locals 1

    monitor-enter p0

    .line 76
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    iget-object v0, p0, Lcom/android/server/timezonedetector/DeviceActivityMonitorImpl;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public dump(Landroid/util/IndentingPrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 0
    return-void
.end method

.method public final notifyFlightComplete()V
    .locals 3

    .line 88
    monitor-enter p0

    .line 89
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/timezonedetector/DeviceActivityMonitorImpl;->mListeners:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 90
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lcom/android/server/timezonedetector/DeviceActivityMonitor$Listener;

    .line 92
    invoke-interface {v2}, Lcom/android/server/timezonedetector/DeviceActivityMonitor$Listener;->onFlightComplete()V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 90
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
