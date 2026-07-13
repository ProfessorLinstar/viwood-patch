.class public Lcom/android/server/power/batterysaver/BatterySaverStateMachine;
.super Ljava/lang/Object;
.source "BatterySaverStateMachine.java"


# static fields
.field public static final STICKY_DISABLED_NOTIFY_TIMEOUT_MS:J


# instance fields
.field public mBatteryLevel:I

.field public final mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

.field public final mBatterySaverStickyBehaviourDisabled:Z

.field public final mBatterySaverTurnedOffNotificationEnabled:Z

.field public mBatteryStatusSet:Z

.field public mBootCompleted:Z

.field public final mContext:Landroid/content/Context;

.field public final mDynamicPowerSavingsDefaultDisableThreshold:I

.field public mDynamicPowerSavingsDisableThreshold:I

.field public mDynamicPowerSavingsEnableBatterySaver:Z

.field public mIsBatteryLevelLow:Z

.field public mIsPowered:Z

.field public mLastAdaptiveBatterySaverChangedExternallyElapsed:J

.field public mLastChangedIntReason:I

.field public mLastChangedStrReason:Ljava/lang/String;

.field public final mLock:Ljava/lang/Object;

.field public mSettingAutomaticBatterySaver:I

.field public mSettingBatterySaverEnabled:Z

.field public mSettingBatterySaverEnabledSticky:Z

.field public mSettingBatterySaverStickyAutoDisableEnabled:Z

.field public mSettingBatterySaverStickyAutoDisableThreshold:I

.field public mSettingBatterySaverTriggerThreshold:I

.field public mSettingsLoaded:Z

.field public final mSettingsObserver:Landroid/database/ContentObserver;

.field public mState:I

.field public final mThresholdChangeLogger:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$G5XBnTUqhgNgX4CDatjiOTV7pEY(Lcom/android/server/power/batterysaver/BatterySaverStateMachine;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->lambda$onBootCompleted$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$I8OcKyyA70W0hqyFzhIOg7ThIJY(Lcom/android/server/power/batterysaver/BatterySaverStateMachine;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->lambda$triggerDynamicModeNotification$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$IDDbkPZLfeLEtebEzYCeBPC90hk(Lcom/android/server/power/batterysaver/BatterySaverStateMachine;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->lambda$triggerDynamicModeNotificationV2$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$UuEtbBfzMq2RZoXeRbI8bOOFC1k(Lcom/android/server/power/batterysaver/BatterySaverStateMachine;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->lambda$hideNotification$5(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$aJQwzie6uMxOY5RyJf9h4bHgK7E(Lcom/android/server/power/batterysaver/BatterySaverStateMachine;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->lambda$new$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$mZohpS7xMpod2MMEFOSikigUzao(Lcom/android/server/power/batterysaver/BatterySaverStateMachine;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->lambda$triggerStickyDisabledNotification$4()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/power/batterysaver/BatterySaverStateMachine;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mrefreshSettingsLocked(Lcom/android/server/power/batterysaver/BatterySaverStateMachine;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->refreshSettingsLocked()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0xc

    .line 115
    invoke-static {v0, v1}, Ljava/time/Duration;->ofHours(J)Ljava/time/Duration;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->STICKY_DISABLED_NOTIFY_TIMEOUT_MS:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Landroid/content/Context;Lcom/android/server/power/batterysaver/BatterySaverController;)V
    .locals 2

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 242
    new-instance v0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine$1;-><init>(Lcom/android/server/power/batterysaver/BatterySaverStateMachine;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 502
    new-instance v0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/power/batterysaver/BatterySaverStateMachine;)V

    iput-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mThresholdChangeLogger:Ljava/lang/Runnable;

    .line 253
    iput-object p1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mLock:Ljava/lang/Object;

    .line 254
    iput-object p2, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mContext:Landroid/content/Context;

    .line 255
    iput-object p3, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

    const/4 p1, 0x1

    .line 256
    iput p1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mState:I

    .line 258
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x1110045

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverStickyBehaviourDisabled:Z

    .line 260
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x1110047

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverTurnedOffNotificationEnabled:Z

    .line 262
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x10e0096

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mDynamicPowerSavingsDefaultDisableThreshold:I

    return-void
.end method


# virtual methods
.method public final buildNotification(Ljava/lang/String;IILjava/lang/String;JI)Landroid/app/Notification;
    .locals 4

    .line 933
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 934
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const p4, 0x10008000

    .line 935
    invoke-virtual {v1, p4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 936
    iget-object p4, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0xc000000

    invoke-static {p4, v2, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p4

    .line 939
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 940
    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 942
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object p0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 943
    invoke-virtual {v0, p7}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 944
    invoke-virtual {p0, p2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 945
    invoke-virtual {p0, p3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 946
    invoke-virtual {p0, p4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p0

    new-instance p1, Landroid/app/Notification$BigTextStyle;

    invoke-direct {p1}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 947
    invoke-virtual {p1, p3}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object p0

    const/4 p1, 0x1

    .line 948
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 949
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 950
    invoke-virtual {p0, p5, p6}, Landroid/app/Notification$Builder;->setTimeoutAfter(J)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 951
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    return-object p0
.end method

.method public final buildNotificationV2(Ljava/lang/String;IILjava/lang/String;JLandroid/os/Bundle;I)Landroid/app/Notification;
    .locals 8

    .line 957
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 958
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const p4, 0x10008000

    .line 959
    invoke-virtual {v1, p4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object p4

    const-string v1, ":settings:show_fragment_args"

    .line 960
    invoke-virtual {p4, v1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v4

    .line 962
    iget-object v2, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v3, 0x0

    const/high16 v5, 0xc000000

    invoke-static/range {v2 .. v7}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object p4

    .line 966
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 967
    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 969
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object p0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    move/from16 p0, p8

    .line 970
    invoke-virtual {v0, p0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 971
    invoke-virtual {p0, p2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 972
    invoke-virtual {p0, p3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 973
    invoke-virtual {p0, p4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p0

    new-instance p1, Landroid/app/Notification$BigTextStyle;

    invoke-direct {p1}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 974
    invoke-virtual {p1, p3}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object p0

    const/4 p1, 0x1

    .line 975
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 976
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 977
    invoke-virtual {p0, p5, p6}, Landroid/app/Notification$Builder;->setTimeoutAfter(J)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 978
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    return-object p0
.end method

.method public final doAutoBatterySaverLocked()V
    .locals 5

    .line 609
    iget-boolean v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBootCompleted:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingsLoaded:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatteryStatusSet:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 613
    invoke-virtual {p0, v0, v0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->updateStateLocked(ZZ)V

    .line 616
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mLastAdaptiveBatterySaverChangedExternallyElapsed:J

    sub-long/2addr v1, v3

    const-wide/32 v3, 0x5265c00

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    .line 618
    iget-object v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

    const/16 v2, 0xc

    invoke-virtual {v1, v0, v2}, Lcom/android/server/power/batterysaver/BatterySaverController;->setAdaptivePolicyEnabledLocked(ZI)Z

    .line 620
    iget-object p0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

    invoke-virtual {p0, v2}, Lcom/android/server/power/batterysaver/BatterySaverController;->resetAdaptivePolicyLocked(I)Z

    return-void

    .line 622
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mIsPowered:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatteryLevel:I

    const/16 v2, 0x50

    if-lt v1, v2, :cond_2

    .line 623
    iget-object p0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

    const/4 v1, 0x7

    invoke-virtual {p0, v0, v1}, Lcom/android/server/power/batterysaver/BatterySaverController;->setAdaptivePolicyEnabledLocked(ZI)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 3

    .line 1015
    new-instance v0, Landroid/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p1, v1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 1017
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1018
    const-string p1, "Battery saver state machine:"

    invoke-virtual {v0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1019
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1020
    iget-object p1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1021
    :try_start_0
    const-string v1, "Enabled="

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1022
    iget-object v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

    invoke-virtual {v1}, Lcom/android/server/power/batterysaver/BatterySaverController;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 1023
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1024
    const-string v1, "full="

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1025
    iget-object v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

    invoke-virtual {v1}, Lcom/android/server/power/batterysaver/BatterySaverController;->isFullEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 1026
    const-string v1, "adaptive="

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1027
    iget-object v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

    invoke-virtual {v1}, Lcom/android/server/power/batterysaver/BatterySaverController;->isAdaptiveEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(Z)V

    .line 1028
    iget-object v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

    invoke-virtual {v1}, Lcom/android/server/power/batterysaver/BatterySaverController;->isAdaptiveEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1029
    const-string v1, " (advertise="

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1030
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->getBatterySaverPolicy()Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->shouldAdvertiseIsEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(Z)V

    .line 1031
    const-string v1, ")"

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_1

    .line 1033
    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1034
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1035
    const-string v1, "mState="

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1036
    iget v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mState:I

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 1038
    const-string v1, "mLastChangedIntReason="

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1039
    iget v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mLastChangedIntReason:I

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 1040
    const-string v1, "mLastChangedStrReason="

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1041
    iget-object v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mLastChangedStrReason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1043
    const-string v1, "mBootCompleted="

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1044
    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBootCompleted:Z

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 1045
    const-string v1, "mSettingsLoaded="

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1046
    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingsLoaded:Z

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 1047
    const-string v1, "mBatteryStatusSet="

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1048
    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatteryStatusSet:Z

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 1050
    const-string v1, "mIsPowered="

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1051
    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mIsPowered:Z

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 1052
    const-string v1, "mBatteryLevel="

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1053
    iget v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatteryLevel:I

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 1054
    const-string v1, "mIsBatteryLevelLow="

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1055
    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mIsBatteryLevelLow:Z

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 1057
    const-string v1, "mSettingAutomaticBatterySaver="

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1058
    iget v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingAutomaticBatterySaver:I

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 1059
    const-string v1, "mSettingBatterySaverEnabled="

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1060
    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverEnabled:Z

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 1061
    const-string v1, "mSettingBatterySaverEnabledSticky="

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1062
    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverEnabledSticky:Z

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 1063
    const-string v1, "mSettingBatterySaverStickyAutoDisableEnabled="

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1064
    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverStickyAutoDisableEnabled:Z

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 1065
    const-string v1, "mSettingBatterySaverStickyAutoDisableThreshold="

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1066
    iget v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverStickyAutoDisableThreshold:I

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 1067
    const-string v1, "mSettingBatterySaverTriggerThreshold="

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1068
    iget v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverTriggerThreshold:I

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 1069
    const-string v1, "mBatterySaverStickyBehaviourDisabled="

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1070
    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverStickyBehaviourDisabled:Z

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 1071
    const-string v1, "mBatterySaverTurnedOffNotificationEnabled="

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1072
    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverTurnedOffNotificationEnabled:Z

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 1074
    const-string v1, "mDynamicPowerSavingsDefaultDisableThreshold="

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1075
    iget v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mDynamicPowerSavingsDefaultDisableThreshold:I

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 1076
    const-string v1, "mDynamicPowerSavingsDisableThreshold="

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1077
    iget v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mDynamicPowerSavingsDisableThreshold:I

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 1078
    const-string v1, "mDynamicPowerSavingsEnableBatterySaver="

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1079
    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mDynamicPowerSavingsEnableBatterySaver:Z

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 1081
    const-string v1, "mLastAdaptiveBatterySaverChangedExternallyElapsed="

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1082
    iget-wide v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mLastAdaptiveBatterySaverChangedExternallyElapsed:J

    invoke-virtual {v0, v1, v2}, Landroid/util/IndentingPrintWriter;->println(J)V

    .line 1083
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1084
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void

    .line 1083
    :goto_1
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public dumpProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 5

    .line 1088
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1089
    :try_start_0
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 1091
    iget-object v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

    .line 1092
    invoke-virtual {v1}, Lcom/android/server/power/batterysaver/BatterySaverController;->isEnabled()Z

    move-result v1

    const-wide v2, 0x10800000001L

    .line 1091
    invoke-virtual {p1, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1093
    iget v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mState:I

    const-wide v2, 0x10e00000012L

    invoke-virtual {p1, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1094
    iget-object v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

    .line 1095
    invoke-virtual {v1}, Lcom/android/server/power/batterysaver/BatterySaverController;->isFullEnabled()Z

    move-result v1

    const-wide v2, 0x1080000000eL

    .line 1094
    invoke-virtual {p1, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1096
    iget-object v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

    .line 1097
    invoke-virtual {v1}, Lcom/android/server/power/batterysaver/BatterySaverController;->isAdaptiveEnabled()Z

    move-result v1

    const-wide v2, 0x1080000000fL

    .line 1096
    invoke-virtual {p1, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1099
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->getBatterySaverPolicy()Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->shouldAdvertiseIsEnabled()Z

    move-result v1

    const-wide v2, 0x10800000010L

    .line 1098
    invoke-virtual {p1, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1101
    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBootCompleted:Z

    const-wide v2, 0x10800000002L

    invoke-virtual {p1, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1102
    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingsLoaded:Z

    const-wide v2, 0x10800000003L

    invoke-virtual {p1, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1103
    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatteryStatusSet:Z

    const-wide v2, 0x10800000004L

    invoke-virtual {p1, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1106
    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mIsPowered:Z

    const-wide v2, 0x10800000006L

    invoke-virtual {p1, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1107
    iget v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatteryLevel:I

    const-wide v2, 0x10500000007L

    invoke-virtual {p1, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1108
    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mIsBatteryLevelLow:Z

    const-wide v2, 0x10800000008L

    invoke-virtual {p1, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1110
    iget v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingAutomaticBatterySaver:I

    const-wide v2, 0x10e00000013L

    invoke-virtual {p1, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1112
    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverEnabled:Z

    const-wide v2, 0x10800000009L

    invoke-virtual {p1, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1114
    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverEnabledSticky:Z

    const-wide v2, 0x1080000000aL

    invoke-virtual {p1, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1116
    iget v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverTriggerThreshold:I

    const-wide v2, 0x1050000000bL

    invoke-virtual {p1, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1118
    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverStickyAutoDisableEnabled:Z

    const-wide v2, 0x1080000000cL

    invoke-virtual {p1, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1121
    iget v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverStickyAutoDisableThreshold:I

    const-wide v2, 0x1050000000dL

    invoke-virtual {p1, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1126
    iget v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mDynamicPowerSavingsDefaultDisableThreshold:I

    const-wide v2, 0x10500000014L

    invoke-virtual {p1, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1129
    iget v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mDynamicPowerSavingsDisableThreshold:I

    const-wide v2, 0x10500000015L

    invoke-virtual {p1, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1132
    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mDynamicPowerSavingsEnableBatterySaver:Z

    const-wide v2, 0x10800000016L

    invoke-virtual {p1, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1136
    iget-wide v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mLastAdaptiveBatterySaverChangedExternallyElapsed:J

    const-wide v3, 0x10300000011L

    invoke-virtual {p1, v3, v4, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1141
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1142
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final enableBatterySaverLocked(ZZI)V
    .locals 1

    .line 798
    invoke-static {p3}, Lcom/android/server/power/batterysaver/BatterySaverController;->reasonToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->enableBatterySaverLocked(ZZILjava/lang/String;)V

    return-void
.end method

.method public final enableBatterySaverLocked(ZZILjava/lang/String;)V
    .locals 1

    .line 812
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

    invoke-virtual {v0}, Lcom/android/server/power/batterysaver/BatterySaverController;->isFullEnabled()Z

    move-result v0

    if-ne v0, p1, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    .line 820
    iget-boolean v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mIsPowered:Z

    if-eqz v0, :cond_1

    goto :goto_1

    .line 824
    :cond_1
    iput p3, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mLastChangedIntReason:I

    .line 825
    iput-object p4, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mLastChangedStrReason:Ljava/lang/String;

    .line 827
    iput-boolean p1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverEnabled:Z

    .line 828
    const-string p4, "low_power"

    invoke-virtual {p0, p4, p1}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->putGlobalSetting(Ljava/lang/String;I)V

    if-eqz p2, :cond_3

    .line 831
    iget-boolean p2, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverStickyBehaviourDisabled:Z

    if-nez p2, :cond_2

    if-eqz p1, :cond_2

    const/4 p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p0, p2}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->setStickyActive(Z)V

    .line 833
    :cond_3
    iget-object p2, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

    invoke-virtual {p2, p1, p3}, Lcom/android/server/power/batterysaver/BatterySaverController;->enableBatterySaver(ZI)V

    const/16 p2, 0x9

    if-eq p3, p2, :cond_6

    if-nez p3, :cond_4

    goto :goto_2

    :cond_4
    if-nez p1, :cond_5

    .line 844
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->hideDynamicModeNotification()V

    :cond_5
    :goto_1
    return-void

    .line 839
    :cond_6
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->triggerDynamicModeNotificationV2()V

    return-void
.end method

.method public final ensureNotificationChannelExists(Landroid/app/NotificationManager;Ljava/lang/String;I)V
    .locals 1

    .line 924
    new-instance v0, Landroid/app/NotificationChannel;

    iget-object p0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mContext:Landroid/content/Context;

    .line 925
    invoke-virtual {p0, p3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    const/4 p3, 0x3

    invoke-direct {v0, p2, p0, p3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 p0, 0x0

    .line 926
    invoke-virtual {v0, p0, p0}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    const/4 p0, 0x1

    .line 927
    invoke-virtual {v0, p0}, Landroid/app/NotificationChannel;->setBlockable(Z)V

    .line 928
    invoke-virtual {p1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    return-void
.end method

.method public getBatterySaverController()Lcom/android/server/power/batterysaver/BatterySaverController;
    .locals 0

    .line 276
    iget-object p0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

    return-object p0
.end method

.method public getBatterySaverPolicy()Lcom/android/server/power/batterysaver/BatterySaverPolicy;
    .locals 0

    .line 281
    iget-object p0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverController;->getBatterySaverPolicy()Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    move-result-object p0

    return-object p0
.end method

.method public getFullBatterySaverPolicy()Landroid/os/BatterySaverPolicyConfig;
    .locals 2

    .line 543
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 544
    :try_start_0
    iget-object p0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/server/power/batterysaver/BatterySaverController;->getPolicyLocked(I)Landroid/os/BatterySaverPolicyConfig;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 545
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getGlobalSetting(Ljava/lang/String;I)I
    .locals 0

    .line 1011
    iget-object p0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getState()I
    .locals 1

    .line 774
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 775
    :try_start_0
    iget p0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mState:I

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 776
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final hideDynamicModeNotification()V
    .locals 1

    const/16 v0, 0x7c8

    .line 982
    invoke-virtual {p0, v0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->hideNotification(I)V

    return-void
.end method

.method public final hideNotification(I)V
    .locals 1

    .line 992
    new-instance v0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/power/batterysaver/BatterySaverStateMachine;I)V

    invoke-virtual {p0, v0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->runOnBgThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final hideStickyDisabledNotification()V
    .locals 1

    const/16 v0, 0x7c9

    .line 986
    invoke-virtual {p0, v0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->hideNotification(I)V

    return-void
.end method

.method public final isAutomaticModeActiveLocked()Z
    .locals 1

    .line 286
    iget v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingAutomaticBatterySaver:I

    if-nez v0, :cond_0

    iget p0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverTriggerThreshold:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isDynamicModeActiveLocked()Z
    .locals 2

    .line 302
    iget v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingAutomaticBatterySaver:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-boolean p0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mDynamicPowerSavingsEnableBatterySaver:Z

    if-eqz p0, :cond_0

    return v1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isInAutomaticLowZoneLocked()Z
    .locals 0

    .line 297
    iget-boolean p0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mIsBatteryLevelLow:Z

    return p0
.end method

.method public final isInDynamicLowZoneLocked()Z
    .locals 1

    .line 313
    iget v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatteryLevel:I

    iget p0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mDynamicPowerSavingsDisableThreshold:I

    if-gt v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic lambda$hideNotification$5(I)V
    .locals 2

    .line 993
    iget-object p0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mContext:Landroid/content/Context;

    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    .line 994
    const-string v0, "BatterySaverStateMachine"

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, p1, v1}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    return-void
.end method

.method public final synthetic lambda$new$1()V
    .locals 0

    .line 503
    iget p0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverTriggerThreshold:I

    invoke-static {p0}, Lcom/android/server/EventLogTags;->writeBatterySaverSetting(I)V

    return-void
.end method

.method public final synthetic lambda$onBootCompleted$0()V
    .locals 4

    .line 331
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 332
    const-string v1, "low_power"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingsObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 335
    const-string v1, "low_power_sticky"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 338
    const-string v1, "low_power_trigger_level"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 341
    const-string v1, "automatic_power_save_mode"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 344
    const-string v1, "dynamic_power_savings_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 347
    const-string v1, "dynamic_power_savings_disable_threshold"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 350
    const-string v1, "low_power_sticky_auto_disable_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 353
    const-string v1, "low_power_sticky_auto_disable_level"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 358
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 359
    :try_start_0
    const-string v1, "low_power_sticky"

    invoke-virtual {p0, v1, v3}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->getGlobalSetting(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    .line 363
    iput v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mState:I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v1, 0x1

    .line 366
    iput-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBootCompleted:Z

    .line 368
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->refreshSettingsLocked()V

    .line 370
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->doAutoBatterySaverLocked()V

    .line 371
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final synthetic lambda$triggerDynamicModeNotification$2()V
    .locals 11

    .line 859
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 860
    const-string v1, "dynamic_mode_notification"

    const v2, 0x104039a

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->ensureNotificationChannelExists(Landroid/app/NotificationManager;Ljava/lang/String;I)V

    const-wide/16 v8, 0x0

    const v10, 0x10805db

    .line 864
    const-string v4, "dynamic_mode_notification"

    const v5, 0x104039d

    const v6, 0x104039b

    const-string v7, "android.settings.BATTERY_SAVER_SETTINGS"

    move-object v3, p0

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->buildNotification(Ljava/lang/String;IILjava/lang/String;JI)Landroid/app/Notification;

    move-result-object p0

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 863
    const-string v2, "BatterySaverStateMachine"

    const/16 v3, 0x7c8

    invoke-virtual {v0, v2, v3, p0, v1}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    return-void
.end method

.method public final synthetic lambda$triggerDynamicModeNotificationV2$3()V
    .locals 12

    .line 878
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 879
    const-string v1, "dynamic_mode_notification"

    const v2, 0x104039a

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->ensureNotificationChannelExists(Landroid/app/NotificationManager;Ljava/lang/String;I)V

    .line 883
    new-instance v10, Landroid/os/Bundle;

    const/4 v1, 0x1

    invoke-direct {v10, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 884
    const-string v1, ":settings:fragment_args_key"

    const-string v2, "battery_saver_schedule"

    invoke-virtual {v10, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v8, 0x0

    const v11, 0x10805c9

    .line 888
    const-string v4, "dynamic_mode_notification"

    const v5, 0x104039e

    const v6, 0x104039c

    const-string v7, "android.settings.BATTERY_SAVER_SETTINGS"

    move-object v3, p0

    invoke-virtual/range {v3 .. v11}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->buildNotificationV2(Ljava/lang/String;IILjava/lang/String;JLandroid/os/Bundle;I)Landroid/app/Notification;

    move-result-object p0

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 887
    const-string v2, "BatterySaverStateMachine"

    const/16 v3, 0x7c8

    invoke-virtual {v0, v2, v3, p0, v1}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    return-void
.end method

.method public final synthetic lambda$triggerStickyDisabledNotification$4()V
    .locals 11

    .line 907
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 908
    const-string v1, "battery_saver_channel"

    const v2, 0x10401a2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->ensureNotificationChannelExists(Landroid/app/NotificationManager;Ljava/lang/String;I)V

    .line 911
    sget-wide v8, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->STICKY_DISABLED_NOTIFY_TIMEOUT_MS:J

    const v10, 0x10805db

    .line 912
    const-string v4, "battery_saver_channel"

    const v5, 0x10401a3

    const v6, 0x104019f

    const-string v7, "android.settings.BATTERY_SAVER_SETTINGS"

    move-object v3, p0

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->buildNotification(Ljava/lang/String;IILjava/lang/String;JI)Landroid/app/Notification;

    move-result-object p0

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 911
    const-string v2, "BatterySaverStateMachine"

    const/16 v3, 0x7c9

    invoke-virtual {v0, v2, v3, p0, v1}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    return-void
.end method

.method public onBootCompleted()V
    .locals 2

    .line 324
    const-string v0, "low_power"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->putGlobalSetting(Ljava/lang/String;I)V

    .line 329
    new-instance v0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/power/batterysaver/BatterySaverStateMachine;)V

    invoke-virtual {p0, v0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->runOnBgThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public putGlobalSetting(Ljava/lang/String;I)V
    .locals 0

    .line 1006
    iget-object p0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public final refreshSettingsLocked()V
    .locals 12

    .line 396
    const-string v0, "low_power"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->getGlobalSetting(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v1

    .line 398
    :goto_0
    const-string v0, "low_power_sticky"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->getGlobalSetting(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    move v5, v2

    goto :goto_1

    :cond_1
    move v5, v1

    .line 400
    :goto_1
    const-string v0, "dynamic_power_savings_enabled"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->getGlobalSetting(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    move v10, v2

    goto :goto_2

    :cond_2
    move v10, v1

    .line 402
    :goto_2
    const-string v0, "low_power_trigger_level"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->getGlobalSetting(Ljava/lang/String;I)I

    move-result v6

    .line 404
    const-string v0, "automatic_power_save_mode"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->getGlobalSetting(Ljava/lang/String;I)I

    move-result v9

    .line 407
    const-string v0, "dynamic_power_savings_disable_threshold"

    iget v3, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mDynamicPowerSavingsDefaultDisableThreshold:I

    invoke-virtual {p0, v0, v3}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->getGlobalSetting(Ljava/lang/String;I)I

    move-result v11

    .line 410
    const-string v0, "low_power_sticky_auto_disable_enabled"

    invoke-virtual {p0, v0, v2}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->getGlobalSetting(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_3

    move v7, v2

    goto :goto_3

    :cond_3
    move v7, v1

    .line 412
    :goto_3
    const-string v0, "low_power_sticky_auto_disable_level"

    const/16 v1, 0x5a

    invoke-virtual {p0, v0, v1}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->getGlobalSetting(Ljava/lang/String;I)I

    move-result v8

    move-object v3, p0

    .line 415
    invoke-virtual/range {v3 .. v11}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->setSettingsLocked(ZZIZIIZI)V

    return-void
.end method

.method public runOnBgThread(Ljava/lang/Runnable;)V
    .locals 0

    .line 380
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public runOnBgThreadLazy(Ljava/lang/Runnable;I)V
    .locals 2

    .line 389
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object p0

    .line 390
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    int-to-long v0, p2

    .line 391
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public setAdaptiveBatterySaverEnabled(Z)Z
    .locals 3

    .line 570
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 571
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mLastAdaptiveBatterySaverChangedExternallyElapsed:J

    .line 572
    iget-object p0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

    const/16 v1, 0xb

    invoke-virtual {p0, p1, v1}, Lcom/android/server/power/batterysaver/BatterySaverController;->setAdaptivePolicyEnabledLocked(ZI)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 574
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setAdaptiveBatterySaverPolicy(Landroid/os/BatterySaverPolicyConfig;)Z
    .locals 3

    .line 585
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 586
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mLastAdaptiveBatterySaverChangedExternallyElapsed:J

    .line 587
    iget-object p0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

    const/16 v1, 0xb

    invoke-virtual {p0, p1, v1}, Lcom/android/server/power/batterysaver/BatterySaverController;->setAdaptivePolicyLocked(Landroid/os/BatterySaverPolicyConfig;I)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 589
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setBatterySaverEnabledManually(Z)V
    .locals 2

    .line 789
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 790
    :try_start_0
    invoke-virtual {p0, v1, p1}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->updateStateLocked(ZZ)V

    .line 793
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setBatteryStatus(ZIZ)V
    .locals 6

    .line 516
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 517
    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatteryStatusSet:Z

    .line 519
    iget-boolean v2, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mIsPowered:Z

    const/4 v3, 0x0

    if-eq v2, p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v3

    .line 520
    :goto_0
    iget v4, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatteryLevel:I

    if-eq v4, p2, :cond_1

    move v4, v1

    goto :goto_1

    :cond_1
    move v4, v3

    .line 521
    :goto_1
    iget-boolean v5, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mIsBatteryLevelLow:Z

    if-eq v5, p3, :cond_2

    goto :goto_2

    :cond_2
    move v1, v3

    :goto_2
    if-nez v2, :cond_3

    if-nez v4, :cond_3

    if-nez v1, :cond_3

    .line 524
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_3

    .line 527
    :cond_3
    iput-boolean p1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mIsPowered:Z

    .line 528
    iput p2, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatteryLevel:I

    .line 529
    iput-boolean p3, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mIsBatteryLevelLow:Z

    .line 531
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->doAutoBatterySaverLocked()V

    .line 532
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setFullBatterySaverPolicy(Landroid/os/BatterySaverPolicyConfig;)Z
    .locals 2

    .line 556
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 557
    :try_start_0
    iget-object p0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

    const/16 v1, 0xd

    invoke-virtual {p0, p1, v1}, Lcom/android/server/power/batterysaver/BatterySaverController;->setFullPolicyLocked(Landroid/os/BatterySaverPolicyConfig;I)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 559
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setSettingsLocked(ZZIZIIZI)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    const/4 v8, 0x1

    .line 447
    iput-boolean v8, v0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingsLoaded:Z

    move/from16 v9, p5

    .line 450
    invoke-static {v9, v3}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 453
    iget-boolean v10, v0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverEnabled:Z

    if-eq v10, v1, :cond_0

    move v10, v8

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    .line 454
    :goto_0
    iget-boolean v12, v0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverEnabledSticky:Z

    if-eq v12, v2, :cond_1

    move v12, v8

    goto :goto_1

    :cond_1
    const/4 v12, 0x0

    .line 456
    :goto_1
    iget v13, v0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverTriggerThreshold:I

    if-eq v13, v3, :cond_2

    move v13, v8

    goto :goto_2

    :cond_2
    const/4 v13, 0x0

    .line 458
    :goto_2
    iget-boolean v14, v0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverStickyAutoDisableEnabled:Z

    if-eq v14, v4, :cond_3

    move v14, v8

    goto :goto_3

    :cond_3
    const/4 v14, 0x0

    .line 460
    :goto_3
    iget v15, v0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverStickyAutoDisableThreshold:I

    if-eq v15, v9, :cond_4

    move v15, v8

    goto :goto_4

    :cond_4
    const/4 v15, 0x0

    .line 462
    :goto_4
    iget v11, v0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingAutomaticBatterySaver:I

    if-eq v11, v5, :cond_5

    move v11, v8

    goto :goto_5

    :cond_5
    const/4 v11, 0x0

    .line 463
    :goto_5
    iget v8, v0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mDynamicPowerSavingsDisableThreshold:I

    if-eq v8, v7, :cond_6

    const/16 v16, 0x1

    goto :goto_6

    :cond_6
    const/16 v16, 0x0

    .line 465
    :goto_6
    iget-boolean v8, v0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mDynamicPowerSavingsEnableBatterySaver:Z

    if-eq v8, v6, :cond_7

    const/4 v8, 0x1

    goto :goto_7

    :cond_7
    const/4 v8, 0x0

    :goto_7
    if-nez v10, :cond_8

    if-nez v12, :cond_8

    if-nez v13, :cond_8

    if-nez v11, :cond_8

    if-nez v14, :cond_8

    if-nez v15, :cond_8

    if-nez v16, :cond_8

    if-nez v8, :cond_8

    return-void

    .line 474
    :cond_8
    iput-boolean v1, v0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverEnabled:Z

    .line 475
    iput-boolean v2, v0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverEnabledSticky:Z

    .line 476
    iput v3, v0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverTriggerThreshold:I

    .line 477
    iput-boolean v4, v0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverStickyAutoDisableEnabled:Z

    .line 478
    iput v9, v0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverStickyAutoDisableThreshold:I

    .line 479
    iput v5, v0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingAutomaticBatterySaver:I

    .line 480
    iput v7, v0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mDynamicPowerSavingsDisableThreshold:I

    .line 481
    iput-boolean v6, v0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mDynamicPowerSavingsEnableBatterySaver:Z

    if-eqz v13, :cond_9

    .line 485
    iget-object v2, v0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mThresholdChangeLogger:Ljava/lang/Runnable;

    const/16 v3, 0x7d0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->runOnBgThreadLazy(Ljava/lang/Runnable;I)V

    .line 488
    :cond_9
    iget-boolean v2, v0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverStickyAutoDisableEnabled:Z

    if-nez v2, :cond_a

    .line 489
    invoke-virtual {v0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->hideStickyDisabledNotification()V

    :cond_a
    if-eqz v10, :cond_c

    if-eqz v1, :cond_b

    .line 494
    const-string v2, "Global.low_power changed to 1"

    goto :goto_8

    :cond_b
    const-string v2, "Global.low_power changed to 0"

    :goto_8
    const/16 v3, 0x8

    const/4 v4, 0x1

    .line 495
    invoke-virtual {v0, v1, v4, v3, v2}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->enableBatterySaverLocked(ZZILjava/lang/String;)V

    return-void

    .line 498
    :cond_c
    invoke-virtual {v0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->doAutoBatterySaverLocked()V

    return-void
.end method

.method public final setStickyActive(Z)V
    .locals 1

    .line 999
    iput-boolean p1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverEnabledSticky:Z

    .line 1000
    const-string v0, "low_power_sticky"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->putGlobalSetting(Ljava/lang/String;I)V

    return-void
.end method

.method public systemReady()V
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

    invoke-virtual {v0}, Lcom/android/server/power/batterysaver/BatterySaverController;->systemReady()V

    .line 271
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->getBatterySaverPolicy()Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->systemReady()V

    return-void
.end method

.method public triggerDynamicModeNotification()V
    .locals 1

    .line 858
    new-instance v0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/power/batterysaver/BatterySaverStateMachine;)V

    invoke-virtual {p0, v0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->runOnBgThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public triggerDynamicModeNotificationV2()V
    .locals 1

    .line 877
    new-instance v0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/batterysaver/BatterySaverStateMachine;)V

    invoke-virtual {p0, v0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->runOnBgThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public triggerStickyDisabledNotification()V
    .locals 1

    .line 901
    iget-boolean v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverTurnedOffNotificationEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 906
    :cond_0
    new-instance v0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/power/batterysaver/BatterySaverStateMachine;)V

    invoke-virtual {p0, v0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->runOnBgThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final updateStateLocked(ZZ)V
    .locals 9

    if-nez p1, :cond_0

    .line 637
    iget-boolean v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBootCompleted:Z

    if-eqz v0, :cond_1b

    iget-boolean v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingsLoaded:Z

    if-eqz v0, :cond_1b

    iget-boolean v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatteryStatusSet:Z

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 641
    :cond_0
    iget v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mState:I

    const/4 v1, 0x3

    const-string v2, "BatterySaverStateMachine"

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v0, v5, :cond_17

    const/4 v6, 0x7

    const/4 v7, 0x5

    if-eq v0, v3, :cond_13

    const/4 v8, 0x4

    if-eq v0, v1, :cond_d

    if-eq v0, v8, :cond_7

    if-eq v0, v7, :cond_1

    .line 767
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unknown state: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mState:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    if-eqz p1, :cond_2

    .line 746
    const-string p0, "Tried to manually change BS state from PENDING_STICKY_ON"

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 749
    :cond_2
    iget-boolean p1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverStickyAutoDisableEnabled:Z

    if-eqz p1, :cond_3

    iget p1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatteryLevel:I

    iget p2, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverStickyAutoDisableThreshold:I

    if-lt p1, p2, :cond_3

    move p1, v5

    goto :goto_0

    :cond_3
    move p1, v4

    .line 751
    :goto_0
    iget-boolean p2, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverStickyBehaviourDisabled:Z

    if-nez p2, :cond_6

    iget-boolean p2, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverEnabledSticky:Z

    if-nez p2, :cond_4

    goto :goto_1

    :cond_4
    if-eqz p1, :cond_5

    goto :goto_1

    .line 757
    :cond_5
    iget-boolean p1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mIsPowered:Z

    if-nez p1, :cond_1b

    .line 759
    invoke-virtual {p0, v5, v5, v8}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->enableBatterySaverLocked(ZZI)V

    .line 761
    iput v3, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mState:I

    return-void

    .line 754
    :cond_6
    :goto_1
    iput v5, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mState:I

    .line 755
    invoke-virtual {p0, v4}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->setStickyActive(Z)V

    .line 756
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->triggerStickyDisabledNotification()V

    return-void

    :cond_7
    if-eqz p1, :cond_9

    if-nez p2, :cond_8

    .line 727
    const-string p0, "Tried to disable BS when it\'s already AUTO_SNOOZED"

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 730
    :cond_8
    invoke-virtual {p0, v5, v5, v3}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->enableBatterySaverLocked(ZZI)V

    .line 732
    iput v3, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mState:I

    return-void

    .line 733
    :cond_9
    iget-boolean p1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mIsPowered:Z

    if-nez p1, :cond_c

    .line 734
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->isAutomaticModeActiveLocked()Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->isInAutomaticLowZoneLocked()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 735
    :cond_a
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->isDynamicModeActiveLocked()Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->isInDynamicLowZoneLocked()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 736
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->isAutomaticModeActiveLocked()Z

    move-result p1

    if-nez p1, :cond_1b

    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->isDynamicModeActiveLocked()Z

    move-result p1

    if-nez p1, :cond_1b

    .line 737
    :cond_c
    iput v5, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mState:I

    return-void

    .line 691
    :cond_d
    iget-boolean v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mIsPowered:Z

    if-eqz v0, :cond_e

    .line 692
    invoke-virtual {p0, v4, v4, v6}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->enableBatterySaverLocked(ZZI)V

    .line 694
    iput v5, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mState:I

    return-void

    :cond_e
    if-eqz p1, :cond_10

    if-eqz p2, :cond_f

    .line 697
    const-string p0, "Tried to enable BS when it\'s already AUTO_ON"

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 700
    :cond_f
    invoke-virtual {p0, v4, v5, v1}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->enableBatterySaverLocked(ZZI)V

    .line 707
    iput v8, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mState:I

    return-void

    .line 708
    :cond_10
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->isAutomaticModeActiveLocked()Z

    move-result p1

    if-eqz p1, :cond_11

    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->isInAutomaticLowZoneLocked()Z

    move-result p1

    if-nez p1, :cond_11

    .line 709
    invoke-virtual {p0, v4, v4, v5}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->enableBatterySaverLocked(ZZI)V

    .line 711
    iput v5, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mState:I

    return-void

    .line 712
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->isDynamicModeActiveLocked()Z

    move-result p1

    if-eqz p1, :cond_12

    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->isInDynamicLowZoneLocked()Z

    move-result p1

    if-nez p1, :cond_12

    const/16 p1, 0xa

    .line 713
    invoke-virtual {p0, v4, v4, p1}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->enableBatterySaverLocked(ZZI)V

    .line 715
    iput v5, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mState:I

    return-void

    .line 716
    :cond_12
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->isAutomaticModeActiveLocked()Z

    move-result p1

    if-nez p1, :cond_1b

    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->isDynamicModeActiveLocked()Z

    move-result p1

    if-nez p1, :cond_1b

    const/16 p1, 0x8

    .line 717
    invoke-virtual {p0, v4, v4, p1}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->enableBatterySaverLocked(ZZI)V

    .line 719
    iput v5, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mState:I

    return-void

    :cond_13
    if-eqz p1, :cond_15

    if-eqz p2, :cond_14

    .line 671
    const-string p0, "Tried to enable BS when it\'s already MANUAL_ON"

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 674
    :cond_14
    invoke-virtual {p0, v4, v5, v1}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->enableBatterySaverLocked(ZZI)V

    .line 676
    iput v5, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mState:I

    return-void

    .line 677
    :cond_15
    iget-boolean p1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mIsPowered:Z

    if-eqz p1, :cond_1b

    .line 678
    invoke-virtual {p0, v4, v4, v6}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->enableBatterySaverLocked(ZZI)V

    .line 680
    iget-boolean p1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverEnabledSticky:Z

    if-eqz p1, :cond_16

    iget-boolean p1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverStickyBehaviourDisabled:Z

    if-nez p1, :cond_16

    .line 682
    iput v7, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mState:I

    return-void

    .line 684
    :cond_16
    iput v5, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mState:I

    return-void

    .line 643
    :cond_17
    iget-boolean v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mIsPowered:Z

    if-nez v0, :cond_1b

    if-eqz p1, :cond_19

    if-nez p2, :cond_18

    .line 646
    const-string p0, "Tried to disable BS when it\'s already OFF"

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 649
    :cond_18
    invoke-virtual {p0, v5, v5, v3}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->enableBatterySaverLocked(ZZI)V

    .line 651
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->hideStickyDisabledNotification()V

    .line 652
    iput v3, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mState:I

    return-void

    .line 653
    :cond_19
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->isAutomaticModeActiveLocked()Z

    move-result p1

    if-eqz p1, :cond_1a

    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->isInAutomaticLowZoneLocked()Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 654
    invoke-virtual {p0, v5, v4, v4}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->enableBatterySaverLocked(ZZI)V

    .line 656
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->hideStickyDisabledNotification()V

    .line 657
    iput v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mState:I

    return-void

    .line 658
    :cond_1a
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->isDynamicModeActiveLocked()Z

    move-result p1

    if-eqz p1, :cond_1b

    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->isInDynamicLowZoneLocked()Z

    move-result p1

    if-eqz p1, :cond_1b

    const/16 p1, 0x9

    .line 659
    invoke-virtual {p0, v5, v4, p1}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->enableBatterySaverLocked(ZZI)V

    .line 661
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->hideStickyDisabledNotification()V

    .line 662
    iput v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mState:I

    :cond_1b
    :goto_2
    return-void
.end method
