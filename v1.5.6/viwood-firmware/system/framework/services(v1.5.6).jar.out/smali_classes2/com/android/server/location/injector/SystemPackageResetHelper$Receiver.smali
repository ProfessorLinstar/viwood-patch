.class public Lcom/android/server/location/injector/SystemPackageResetHelper$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "SystemPackageResetHelper.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/injector/SystemPackageResetHelper;


# direct methods
.method public static synthetic $r8$lambda$Zx70x59PQZk3MrOf_2AnvOmaJzM(Lcom/android/server/location/injector/SystemPackageResetHelper$Receiver;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/location/injector/SystemPackageResetHelper$Receiver;->lambda$onReceive$0(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nQjWM_LpqGA0LL_igYwAYJnsylE(Lcom/android/server/location/injector/SystemPackageResetHelper$Receiver;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/location/injector/SystemPackageResetHelper$Receiver;->lambda$onReceive$1(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/location/injector/SystemPackageResetHelper;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/android/server/location/injector/SystemPackageResetHelper$Receiver;->this$0:Lcom/android/server/location/injector/SystemPackageResetHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/location/injector/SystemPackageResetHelper;Lcom/android/server/location/injector/SystemPackageResetHelper-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/location/injector/SystemPackageResetHelper$Receiver;-><init>(Lcom/android/server/location/injector/SystemPackageResetHelper;)V

    return-void
.end method


# virtual methods
.method public final synthetic lambda$onReceive$0(Ljava/lang/String;)V
    .locals 0

    .line 126
    iget-object p0, p0, Lcom/android/server/location/injector/SystemPackageResetHelper$Receiver;->this$0:Lcom/android/server/location/injector/SystemPackageResetHelper;

    invoke-virtual {p0, p1}, Lcom/android/server/location/injector/PackageResetHelper;->notifyPackageReset(Ljava/lang/String;)V

    return-void
.end method

.method public final synthetic lambda$onReceive$1(Ljava/lang/String;)V
    .locals 0

    .line 137
    iget-object p0, p0, Lcom/android/server/location/injector/SystemPackageResetHelper$Receiver;->this$0:Lcom/android/server/location/injector/SystemPackageResetHelper;

    invoke-virtual {p0, p1}, Lcom/android/server/location/injector/PackageResetHelper;->notifyPackageReset(Ljava/lang/String;)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 74
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    goto/16 :goto_4

    .line 79
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    if-nez v4, :cond_1

    goto/16 :goto_4

    .line 84
    :cond_1
    invoke-virtual {v4}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    goto/16 :goto_4

    .line 89
    :cond_2
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :goto_0
    move v3, v0

    goto :goto_1

    :sswitch_0
    const-string v5, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x3

    goto :goto_1

    :sswitch_1
    const-string v5, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x2

    goto :goto_1

    :sswitch_2
    const-string v5, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_0

    :cond_5
    move v3, v2

    goto :goto_1

    :sswitch_3
    const-string v5, "android.intent.action.QUERY_PACKAGE_RESTART"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_0

    :cond_6
    move v3, v1

    :goto_1
    packed-switch v3, :pswitch_data_0

    goto :goto_4

    .line 107
    :pswitch_0
    const-string v0, "android.intent.extra.changed_component_name_list"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_9

    .line 110
    array-length v0, p2

    :goto_2
    if-ge v1, v0, :cond_9

    aget-object v3, p2, v1

    .line 111
    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 121
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-wide/16 v0, 0x0

    .line 122
    invoke-static {v0, v1}, Landroid/content/pm/PackageManager$ApplicationInfoFlags;->of(J)Landroid/content/pm/PackageManager$ApplicationInfoFlags;

    move-result-object p2

    .line 121
    invoke-virtual {p1, v4, p2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$ApplicationInfoFlags;)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    .line 123
    iget-boolean p1, p1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez p1, :cond_9

    .line 125
    invoke-static {}, Lcom/android/server/FgThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance p2, Lcom/android/server/location/injector/SystemPackageResetHelper$Receiver$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, v4}, Lcom/android/server/location/injector/SystemPackageResetHelper$Receiver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/injector/SystemPackageResetHelper$Receiver;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_7
    add-int/2addr v1, v2

    goto :goto_2

    .line 137
    :pswitch_1
    invoke-static {}, Lcom/android/server/FgThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance p2, Lcom/android/server/location/injector/SystemPackageResetHelper$Receiver$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0, v4}, Lcom/android/server/location/injector/SystemPackageResetHelper$Receiver$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/location/injector/SystemPackageResetHelper$Receiver;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 91
    :pswitch_2
    const-string p1, "android.intent.extra.PACKAGES"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 95
    array-length p2, p1

    :goto_3
    if-ge v1, p2, :cond_9

    aget-object v3, p1, v1

    .line 96
    iget-object v4, p0, Lcom/android/server/location/injector/SystemPackageResetHelper$Receiver;->this$0:Lcom/android/server/location/injector/SystemPackageResetHelper;

    invoke-virtual {v4, v3}, Lcom/android/server/location/injector/PackageResetHelper;->queryResetableForPackage(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 97
    invoke-virtual {p0, v0}, Landroid/content/BroadcastReceiver;->setResultCode(I)V

    return-void

    :cond_8
    add-int/2addr v1, v2

    goto :goto_3

    :catch_0
    :cond_9
    :goto_4
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3ff1ba66 -> :sswitch_3
        -0x2d2ad030 -> :sswitch_2
        0xa480416 -> :sswitch_1
        0x1f50b9c2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
