.class public final Lcom/android/server/job/JobNotificationCoordinator$NotificationDetails;
.super Ljava/lang/Object;
.source "JobNotificationCoordinator.java"


# instance fields
.field public final appPid:I

.field public final appUid:I

.field public final jobEndNotificationPolicy:I

.field public final notificationChannel:Ljava/lang/String;

.field public final notificationId:I

.field public final userPackage:Landroid/content/pm/UserPackage;


# direct methods
.method public constructor <init>(Landroid/content/pm/UserPackage;IIILjava/lang/String;I)V
    .locals 0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p1, p0, Lcom/android/server/job/JobNotificationCoordinator$NotificationDetails;->userPackage:Landroid/content/pm/UserPackage;

    .line 99
    iput p4, p0, Lcom/android/server/job/JobNotificationCoordinator$NotificationDetails;->notificationId:I

    .line 100
    iput-object p5, p0, Lcom/android/server/job/JobNotificationCoordinator$NotificationDetails;->notificationChannel:Ljava/lang/String;

    .line 101
    iput p2, p0, Lcom/android/server/job/JobNotificationCoordinator$NotificationDetails;->appPid:I

    .line 102
    iput p3, p0, Lcom/android/server/job/JobNotificationCoordinator$NotificationDetails;->appUid:I

    .line 103
    iput p6, p0, Lcom/android/server/job/JobNotificationCoordinator$NotificationDetails;->jobEndNotificationPolicy:I

    return-void
.end method
