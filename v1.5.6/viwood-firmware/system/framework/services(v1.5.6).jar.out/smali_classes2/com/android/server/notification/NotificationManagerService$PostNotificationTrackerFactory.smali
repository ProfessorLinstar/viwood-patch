.class public interface abstract Lcom/android/server/notification/NotificationManagerService$PostNotificationTrackerFactory;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"


# virtual methods
.method public newTracker(Landroid/os/PowerManager$WakeLock;)Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;
    .locals 0

    .line 14677
    new-instance p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;

    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;-><init>(Landroid/os/PowerManager$WakeLock;)V

    return-object p0
.end method
