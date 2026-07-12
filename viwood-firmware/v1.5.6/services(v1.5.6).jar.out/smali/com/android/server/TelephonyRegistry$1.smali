.class public Lcom/android/server/TelephonyRegistry$1;
.super Landroid/os/Handler;
.source "TelephonyRegistry.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/TelephonyRegistry;


# direct methods
.method public constructor <init>(Lcom/android/server/TelephonyRegistry;)V
    .locals 0

    .line 605
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry$1;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    .line 608
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x7fffffff

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    goto/16 :goto_3

    .line 623
    :cond_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 624
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 635
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry$1;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-static {v3}, Lcom/android/server/TelephonyRegistry;->-$$Nest$fgetmRecords(Lcom/android/server/TelephonyRegistry;)Ljava/util/ArrayList;

    move-result-object v4

    monitor-enter v4

    .line 636
    :try_start_0
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry$1;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-static {v3}, Lcom/android/server/TelephonyRegistry;->-$$Nest$fgetmRecords(Lcom/android/server/TelephonyRegistry;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    :cond_1
    :goto_0
    if-ge v2, v5, :cond_2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v2, v2, 0x1

    check-cast v6, Lcom/android/server/TelephonyRegistry$Record;

    .line 637
    iget v7, v6, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    if-ne v7, v1, :cond_1

    .line 638
    iget-object v7, p0, Lcom/android/server/TelephonyRegistry$1;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-static {v7, v6, v0}, Lcom/android/server/TelephonyRegistry;->-$$Nest$mcheckPossibleMissNotify(Lcom/android/server/TelephonyRegistry;Lcom/android/server/TelephonyRegistry$Record;I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 641
    :cond_2
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry$1;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-static {v1}, Lcom/android/server/TelephonyRegistry;->-$$Nest$mhandleRemoveListLocked(Lcom/android/server/TelephonyRegistry;)V

    .line 642
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 643
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry$1;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-static {v1, p1}, Lcom/android/server/TelephonyRegistry;->-$$Nest$fputmDefaultSubId(Lcom/android/server/TelephonyRegistry;I)V

    .line 644
    iget-object p1, p0, Lcom/android/server/TelephonyRegistry$1;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-static {p1, v0}, Lcom/android/server/TelephonyRegistry;->-$$Nest$fputmDefaultPhoneId(Lcom/android/server/TelephonyRegistry;I)V

    .line 645
    iget-object p1, p0, Lcom/android/server/TelephonyRegistry$1;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-static {p1}, Lcom/android/server/TelephonyRegistry;->-$$Nest$fgetmLocalLog(Lcom/android/server/TelephonyRegistry;)Landroid/util/LocalLog;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Default subscription updated: mDefaultPhoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/TelephonyRegistry$1;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-static {v1}, Lcom/android/server/TelephonyRegistry;->-$$Nest$fgetmDefaultPhoneId(Lcom/android/server/TelephonyRegistry;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mDefaultSubId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/TelephonyRegistry$1;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-static {p0}, Lcom/android/server/TelephonyRegistry;->-$$Nest$fgetmDefaultSubId(Lcom/android/server/TelephonyRegistry;)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    return-void

    .line 642
    :goto_1
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 611
    :cond_3
    iget-object p1, p0, Lcom/android/server/TelephonyRegistry$1;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-static {p1}, Lcom/android/server/TelephonyRegistry;->-$$Nest$mgetTelephonyManager(Lcom/android/server/TelephonyRegistry;)Landroid/telephony/TelephonyManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result p1

    :goto_2
    if-ge v2, p1, :cond_5

    .line 613
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getSubscriptionId(I)I

    move-result v0

    .line 614
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v4

    if-nez v4, :cond_4

    move v0, v1

    .line 617
    :cond_4
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry$1;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-static {v4}, Lcom/android/server/TelephonyRegistry;->-$$Nest$fgetmCellIdentity(Lcom/android/server/TelephonyRegistry;)[Landroid/telephony/CellIdentity;

    move-result-object v5

    aget-object v5, v5, v2

    invoke-static {v4, v0, v5, v3}, Lcom/android/server/TelephonyRegistry;->-$$Nest$mnotifyCellLocationForSubscriber(Lcom/android/server/TelephonyRegistry;ILandroid/telephony/CellIdentity;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    return-void
.end method
