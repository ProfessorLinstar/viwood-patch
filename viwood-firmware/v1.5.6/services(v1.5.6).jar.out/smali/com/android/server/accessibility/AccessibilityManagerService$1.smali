.class public Lcom/android/server/accessibility/AccessibilityManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "AccessibilityManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/accessibility/AccessibilityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .locals 0

    .line 1058
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$1;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const/4 v0, 0x0

    .line 1061
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$1;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$fgetmTraceManager(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityTraceManager;

    move-result-object v1

    const-wide/32 v2, 0x10000

    invoke-virtual {v1, v2, v3}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1062
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$1;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$fgetmTraceManager(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityTraceManager;

    move-result-object v1

    const-string v4, "AccessibilityManagerService.BR.onReceive"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "context="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ";intent="

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v4, v2, v3, p1}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 1068
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 1069
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1071
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$1;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    const-string p1, "android.intent.extra.user_handle"

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->switchUser(I)V

    return-void

    .line 1073
    :cond_1
    const-string v1, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1074
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$1;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    const-string p1, "android.intent.extra.user_handle"

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$munlockUser(Lcom/android/server/accessibility/AccessibilityManagerService;I)V

    return-void

    .line 1075
    :cond_2
    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1076
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$1;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    const-string p1, "android.intent.extra.user_handle"

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$mremoveUser(Lcom/android/server/accessibility/AccessibilityManagerService;I)V

    return-void

    .line 1077
    :cond_3
    const-string v1, "android.os.action.SETTING_RESTORED"

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 1078
    const-string/jumbo p1, "setting_name"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_4

    goto/16 :goto_2

    .line 1082
    :cond_4
    const-string/jumbo v1, "previous_value"

    .line 1083
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1084
    const-string/jumbo v2, "new_value"

    .line 1085
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1086
    const-string/jumbo v3, "restored_from_sdk_int"

    .line 1087
    invoke-virtual {p2, v3, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 1090
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getSendingUserId()I

    move-result v3

    .line 1091
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    const/4 v4, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :goto_0
    move v0, v4

    goto :goto_1

    :sswitch_0
    const-string v0, "accessibility_display_magnification_navbar_enabled"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x4

    goto :goto_1

    :sswitch_1
    const-string v0, "accessibility_button_targets"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v0, 0x3

    goto :goto_1

    :sswitch_2
    const-string v0, "enabled_accessibility_services"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v0, 0x2

    goto :goto_1

    :sswitch_3
    const-string v0, "accessibility_qs_targets"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v0, 0x1

    goto :goto_1

    :sswitch_4
    const-string v5, "accessibility_shortcut_target_service"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    goto :goto_0

    :cond_9
    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 1099
    :pswitch_0
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$1;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$fgetmLock(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 1100
    :try_start_0
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$1;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p0, v2, p2, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$mrestoreLegacyDisplayMagnificationNavBarIfNeededLocked(Lcom/android/server/accessibility/AccessibilityManagerService;Ljava/lang/String;II)V

    .line 1102
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 1093
    :pswitch_1
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$1;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$fgetmLock(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1094
    :try_start_1
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$1;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {p0, v1, v2, p2, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->restoreEnabledAccessibilityServicesLocked(Ljava/lang/String;Ljava/lang/String;II)V

    .line 1096
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    .line 1111
    :pswitch_2
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$1;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 1112
    invoke-static {p1}, Lcom/android/internal/accessibility/util/ShortcutUtils;->convertToType(Ljava/lang/String;)I

    move-result p1

    .line 1111
    invoke-static {p0, v2, p1, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$mrestoreShortcutTargets(Lcom/android/server/accessibility/AccessibilityManagerService;Ljava/lang/String;II)V

    :cond_a
    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6f8248d1 -> :sswitch_4
        -0x3977748a -> :sswitch_3
        -0x2e36ad13 -> :sswitch_2
        -0x87f9bfa -> :sswitch_1
        0x7fe8893c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
