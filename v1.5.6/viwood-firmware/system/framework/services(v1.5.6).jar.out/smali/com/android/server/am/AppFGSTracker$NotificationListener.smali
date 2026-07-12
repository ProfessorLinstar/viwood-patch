.class Lcom/android/server/am/AppFGSTracker$NotificationListener;
.super Landroid/service/notification/NotificationListenerService;
.source "AppFGSTracker.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/AppFGSTracker;


# direct methods
.method public constructor <init>(Lcom/android/server/am/AppFGSTracker;)V
    .locals 0

    .line 765
    iput-object p1, p0, Lcom/android/server/am/AppFGSTracker$NotificationListener;->this$0:Lcom/android/server/am/AppFGSTracker;

    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotificationPosted(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 2

    .line 771
    iget-object p0, p0, Lcom/android/server/am/AppFGSTracker$NotificationListener;->this$0:Lcom/android/server/am/AppFGSTracker;

    invoke-static {p0}, Lcom/android/server/am/AppFGSTracker;->-$$Nest$fgetmHandler(Lcom/android/server/am/AppFGSTracker;)Lcom/android/server/am/AppFGSTracker$MyHandler;

    move-result-object p0

    .line 772
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result p2

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v0

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x5

    .line 771
    invoke-virtual {p0, v1, p2, v0, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 772
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onNotificationRemoved(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;I)V
    .locals 1

    .line 781
    iget-object p0, p0, Lcom/android/server/am/AppFGSTracker$NotificationListener;->this$0:Lcom/android/server/am/AppFGSTracker;

    invoke-static {p0}, Lcom/android/server/am/AppFGSTracker;->-$$Nest$fgetmHandler(Lcom/android/server/am/AppFGSTracker;)Lcom/android/server/am/AppFGSTracker$MyHandler;

    move-result-object p0

    .line 782
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result p2

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result p3

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x6

    .line 781
    invoke-virtual {p0, v0, p2, p3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 782
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
