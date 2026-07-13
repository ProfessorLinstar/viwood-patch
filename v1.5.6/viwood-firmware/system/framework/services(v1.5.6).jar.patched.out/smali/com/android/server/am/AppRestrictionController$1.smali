.class public Lcom/android/server/am/AppRestrictionController$1;
.super Landroid/content/BroadcastReceiver;
.source "AppRestrictionController.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/AppRestrictionController;


# direct methods
.method public constructor <init>(Lcom/android/server/am/AppRestrictionController;)V
    .locals 0

    .line 372
    iput-object p1, p0, Lcom/android/server/am/AppRestrictionController$1;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const/4 p1, -0x1

    const/4 v0, 0x0

    .line 375
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 379
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    const-string v2, "android.intent.extra.REPLACING"

    const-string v3, "android.intent.extra.UID"

    const-string v4, "android.intent.extra.user_handle"

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :goto_0
    move v1, p1

    goto/16 :goto_1

    :sswitch_0
    const-string v5, "android.intent.action.PACKAGE_FULLY_REMOVED"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x7

    goto :goto_1

    :sswitch_1
    const-string v5, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x6

    goto :goto_1

    :sswitch_2
    const-string v5, "android.intent.action.USER_ADDED"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x5

    goto :goto_1

    :sswitch_3
    const-string v5, "android.telephony.action.MULTI_SIM_CONFIG_CHANGED"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x4

    goto :goto_1

    :sswitch_4
    const-string v5, "android.intent.action.USER_STOPPED"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x3

    goto :goto_1

    :sswitch_5
    const-string v5, "android.intent.action.USER_STARTED"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x2

    goto :goto_1

    :sswitch_6
    const-string v5, "android.intent.action.UID_REMOVED"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_0

    :cond_7
    const/4 v1, 0x1

    goto :goto_1

    :sswitch_7
    const-string v5, "android.intent.action.USER_REMOVED"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_0

    :cond_8
    move v1, v0

    :goto_1
    packed-switch v1, :pswitch_data_0

    goto/16 :goto_2

    .line 389
    :pswitch_0
    invoke-virtual {p2, v3, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 390
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    if-ltz p1, :cond_9

    if-eqz p2, :cond_9

    .line 393
    invoke-virtual {p2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_9

    .line 394
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$1;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {p0, p2, p1}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$monPackageRemoved(Lcom/android/server/am/AppRestrictionController;Ljava/lang/String;I)V

    return-void

    .line 381
    :pswitch_1
    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_9

    .line 382
    invoke-virtual {p2, v3, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-ltz p1, :cond_9

    .line 384
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$1;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {p0, p1}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$monUidAdded(Lcom/android/server/am/AppRestrictionController;I)V

    return-void

    .line 406
    :pswitch_2
    invoke-virtual {p2, v4, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-ltz p1, :cond_9

    .line 408
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$1;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {p0, p1}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$monUserAdded(Lcom/android/server/am/AppRestrictionController;I)V

    return-void

    .line 430
    :pswitch_3
    iget-object p1, p0, Lcom/android/server/am/AppRestrictionController$1;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {p1}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$munregisterCarrierPrivilegesCallbacks(Lcom/android/server/am/AppRestrictionController;)V

    .line 431
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$1;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {p0}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$mregisterCarrierPrivilegesCallbacks(Lcom/android/server/am/AppRestrictionController;)V

    return-void

    .line 418
    :pswitch_4
    invoke-virtual {p2, v4, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-ltz p1, :cond_9

    .line 420
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$1;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {p0, p1}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$monUserStopped(Lcom/android/server/am/AppRestrictionController;I)V

    return-void

    .line 412
    :pswitch_5
    invoke-virtual {p2, v4, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-ltz p1, :cond_9

    .line 414
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$1;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {p0, p1}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$monUserStarted(Lcom/android/server/am/AppRestrictionController;I)V

    return-void

    .line 398
    :pswitch_6
    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_9

    .line 399
    invoke-virtual {p2, v3, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-ltz p1, :cond_9

    .line 401
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$1;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {p0, p1}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$monUidRemoved(Lcom/android/server/am/AppRestrictionController;I)V

    return-void

    .line 424
    :pswitch_7
    invoke-virtual {p2, v4, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-ltz p1, :cond_9

    .line 426
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$1;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {p0, p1}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$monUserRemoved(Lcom/android/server/am/AppRestrictionController;I)V

    :cond_9
    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7ad942ef -> :sswitch_7
        -0x6849e2b4 -> :sswitch_6
        -0x2d021ace -> :sswitch_5
        -0x2c3dc982 -> :sswitch_4
        0x412a6228 -> :sswitch_3
        0x42dd01f1 -> :sswitch_2
        0x5c1076e2 -> :sswitch_1
        0x5e33a4ad -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
