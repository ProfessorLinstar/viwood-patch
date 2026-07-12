.class public Lcom/android/server/notification/TimeToLiveHelper$1;
.super Landroid/content/BroadcastReceiver;
.source "TimeToLiveHelper.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/TimeToLiveHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/TimeToLiveHelper;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/android/server/notification/TimeToLiveHelper$1;->this$0:Lcom/android/server/notification/TimeToLiveHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 173
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_3

    .line 177
    :cond_0
    const-string v0, "com.android.server.notification.TimeToLiveHelper"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 179
    iget-object p1, p0, Lcom/android/server/notification/TimeToLiveHelper$1;->this$0:Lcom/android/server/notification/TimeToLiveHelper;

    iget-object p1, p1, Lcom/android/server/notification/TimeToLiveHelper;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 180
    :try_start_0
    iget-object v0, p0, Lcom/android/server/notification/TimeToLiveHelper$1;->this$0:Lcom/android/server/notification/TimeToLiveHelper;

    iget-object v0, v0, Lcom/android/server/notification/TimeToLiveHelper;->mKeys:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 181
    iget-object v0, p0, Lcom/android/server/notification/TimeToLiveHelper$1;->this$0:Lcom/android/server/notification/TimeToLiveHelper;

    iget-object v0, v0, Lcom/android/server/notification/TimeToLiveHelper;->mKeys:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 182
    const-string v1, "key"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 183
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 184
    invoke-static {}, Lcom/android/server/notification/TimeToLiveHelper;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Alarm triggered but wasn\'t the earliest we were tracking"

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 187
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/server/notification/TimeToLiveHelper$1;->this$0:Lcom/android/server/notification/TimeToLiveHelper;

    invoke-static {v1, p2}, Lcom/android/server/notification/TimeToLiveHelper;->-$$Nest$mremoveMatchingEntry(Lcom/android/server/notification/TimeToLiveHelper;Ljava/lang/String;)V

    .line 188
    iget-object p2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    .line 190
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_3

    .line 192
    iget-object p0, p0, Lcom/android/server/notification/TimeToLiveHelper$1;->this$0:Lcom/android/server/notification/TimeToLiveHelper;

    invoke-static {p0}, Lcom/android/server/notification/TimeToLiveHelper;->-$$Nest$fgetmNm(Lcom/android/server/notification/TimeToLiveHelper;)Lcom/android/server/notification/NotificationManagerPrivate;

    move-result-object p0

    invoke-interface {p0, p2}, Lcom/android/server/notification/NotificationManagerPrivate;->timeoutNotification(Ljava/lang/String;)V

    return-void

    .line 194
    :cond_3
    invoke-static {}, Lcom/android/server/notification/TimeToLiveHelper;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Alarm triggered but should have been cleaned up already"

    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 190
    :goto_2
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_4
    :goto_3
    return-void
.end method
