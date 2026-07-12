.class public abstract Lcom/android/server/notification/NotificationHistoryDatabaseFactory;
.super Ljava/lang/Object;
.source "NotificationHistoryDatabaseFactory.java"


# static fields
.field public static sTestingNotificationHistoryDb:Lcom/android/server/notification/NotificationHistoryDatabase;


# direct methods
.method public static create(Landroid/content/Context;Landroid/os/Handler;Ljava/io/File;)Lcom/android/server/notification/NotificationHistoryDatabase;
    .locals 0

    .line 35
    sget-object p0, Lcom/android/server/notification/NotificationHistoryDatabaseFactory;->sTestingNotificationHistoryDb:Lcom/android/server/notification/NotificationHistoryDatabase;

    if-eqz p0, :cond_0

    return-object p0

    .line 38
    :cond_0
    new-instance p0, Lcom/android/server/notification/NotificationHistoryDatabase;

    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationHistoryDatabase;-><init>(Landroid/os/Handler;Ljava/io/File;)V

    return-object p0
.end method
