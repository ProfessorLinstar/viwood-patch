.class public interface abstract Lcom/android/server/display/ExternalDisplayPolicy$Injector;
.super Ljava/lang/Object;
.source "ExternalDisplayPolicy.java"


# virtual methods
.method public abstract getDisplayNotificationManager()Lcom/android/server/display/notifications/DisplayNotificationManager;
.end method

.method public abstract getExternalDisplayStatsService()Lcom/android/server/display/ExternalDisplayStatsService;
.end method

.method public abstract getFlags()Lcom/android/server/display/feature/DisplayManagerFlags;
.end method

.method public abstract getHandler()Landroid/os/Handler;
.end method

.method public abstract getLogicalDisplayMapper()Lcom/android/server/display/LogicalDisplayMapper;
.end method

.method public abstract getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;
.end method

.method public abstract getThermalService()Landroid/os/IThermalService;
.end method

.method public abstract sendExternalDisplayEventLocked(Lcom/android/server/display/LogicalDisplay;I)V
.end method
