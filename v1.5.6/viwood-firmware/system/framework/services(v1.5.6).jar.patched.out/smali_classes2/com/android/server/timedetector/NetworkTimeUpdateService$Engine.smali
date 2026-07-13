.class interface abstract Lcom/android/server/timedetector/NetworkTimeUpdateService$Engine;
.super Ljava/lang/Object;
.source "NetworkTimeUpdateService.java"


# virtual methods
.method public abstract dump(Ljava/io/PrintWriter;)V
.end method

.method public abstract forceRefreshForTests(Landroid/net/Network;Lcom/android/server/timedetector/NetworkTimeUpdateService$Engine$RefreshCallbacks;)Z
.end method

.method public abstract refreshAndRescheduleIfRequired(Landroid/net/Network;Ljava/lang/String;Lcom/android/server/timedetector/NetworkTimeUpdateService$Engine$RefreshCallbacks;)V
.end method
