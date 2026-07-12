.class public Lcom/android/server/notification/NotificationManagerService$8;
.super Lcom/android/server/notification/ZenModeHelper$Callback;
.source "NotificationManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method public static synthetic $r8$lambda$B3qtJtCTKLYZ9L6VodmNyD2yFFs(Lcom/android/server/notification/NotificationManagerService$8;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$8;->lambda$onZenModeChanged$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$CkzNIVR8Syb_8K5SrgKEkyahm7A(Lcom/android/server/notification/NotificationManagerService$8;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/notification/NotificationManagerService$8;->lambda$onAutomaticRuleStatusChanged$3(Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public static synthetic $r8$lambda$JN40qwcAHvnSNa6DjudyrjjvMYY(Lcom/android/server/notification/NotificationManagerService$8;Landroid/app/NotificationManager$Policy;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService$8;->lambda$onConsolidatedPolicyChanged$2(Landroid/app/NotificationManager$Policy;)V

    return-void
.end method

.method public static synthetic $r8$lambda$g1YGMc-Sn6OF0jEQYrZuOAsZfYw(Lcom/android/server/notification/NotificationManagerService$8;Landroid/app/NotificationManager$Policy;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService$8;->lambda$onPolicyChanged$1(Landroid/app/NotificationManager$Policy;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0

    .line 2743
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$8;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic lambda$onAutomaticRuleStatusChanged$3(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 2

    .line 2788
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.action.AUTOMATIC_ZEN_RULE_STATUS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2789
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2790
    const-string p1, "android.app.extra.AUTOMATIC_ZEN_RULE_ID"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2791
    const-string p1, "android.app.extra.AUTOMATIC_ZEN_RULE_STATUS"

    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 p1, 0x4000000

    .line 2792
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2793
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$8;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public final synthetic lambda$onConsolidatedPolicyChanged$2(Landroid/app/NotificationManager$Policy;)V
    .locals 2

    .line 2777
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.action.CONSOLIDATED_NOTIFICATION_POLICY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2778
    const-string v1, "android.app.extra.NOTIFICATION_POLICY"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2779
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$8;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p1, v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$msendRegisteredOnlyBroadcast(Lcom/android/server/notification/NotificationManagerService;Landroid/content/Intent;)V

    .line 2781
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$8;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHandler:Lcom/android/server/notification/RankingHandler;

    invoke-interface {p0}, Lcom/android/server/notification/RankingHandler;->requestSort()V

    return-void
.end method

.method public final synthetic lambda$onPolicyChanged$1(Landroid/app/NotificationManager$Policy;)V
    .locals 2

    .line 2767
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.action.NOTIFICATION_POLICY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2768
    const-string v1, "android.app.extra.NOTIFICATION_POLICY"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2769
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$8;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p1, v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$msendRegisteredOnlyBroadcast(Lcom/android/server/notification/NotificationManagerService;Landroid/content/Intent;)V

    .line 2770
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$8;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHandler:Lcom/android/server/notification/RankingHandler;

    invoke-interface {p0}, Lcom/android/server/notification/RankingHandler;->requestSort()V

    return-void
.end method

.method public final synthetic lambda$onZenModeChanged$0()V
    .locals 4

    .line 2752
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$8;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const-string v1, "android.app.action.INTERRUPTION_FILTER_CHANGED"

    invoke-static {v0, v1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$msendRegisteredOnlyBroadcast(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    .line 2753
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$8;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.app.action.INTERRUPTION_FILTER_CHANGED_INTERNAL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x4000000

    .line 2755
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v3, "android.permission.MANAGE_NOTIFICATIONS"

    .line 2753
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 2757
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$8;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2758
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$8;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mupdateInterruptionFilterLocked(Lcom/android/server/notification/NotificationManagerService;)V

    .line 2759
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2760
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$8;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHandler:Lcom/android/server/notification/RankingHandler;

    invoke-interface {p0}, Lcom/android/server/notification/RankingHandler;->requestSort()V

    return-void

    :catchall_0
    move-exception p0

    .line 2759
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onAutomaticRuleStatusChanged(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 6

    .line 2787
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$8$$ExternalSyntheticLambda1;

    move-object v1, p0

    move v5, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/notification/NotificationManagerService$8$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/notification/NotificationManagerService$8;Ljava/lang/String;Ljava/lang/String;II)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public onConfigChanged()V
    .locals 0

    .line 2746
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$8;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    return-void
.end method

.method public onConsolidatedPolicyChanged(Landroid/app/NotificationManager$Policy;)V
    .locals 1

    .line 2776
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$8$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/server/notification/NotificationManagerService$8$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/notification/NotificationManagerService$8;Landroid/app/NotificationManager$Policy;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public onPolicyChanged(Landroid/app/NotificationManager$Policy;)V
    .locals 1

    .line 2766
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$8$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lcom/android/server/notification/NotificationManagerService$8$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/notification/NotificationManagerService$8;Landroid/app/NotificationManager$Policy;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public onZenModeChanged()V
    .locals 1

    .line 2751
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$8$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/android/server/notification/NotificationManagerService$8$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/notification/NotificationManagerService$8;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method
