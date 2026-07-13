.class public Lcom/android/server/notification/ZenModeHelper;
.super Ljava/lang/Object;
.source "ZenModeHelper.java"


# static fields
.field public static final DEBUG:Z

.field public static final DELETED_RULE_KEPT_FOR:Ljava/time/Duration;

.field public static final IMPLICIT_RULE_KEPT_FOR:Ljava/time/Duration;


# instance fields
.field public final mAppOps:Landroid/app/AppOpsManager;

.field protected mAudioManager:Landroid/media/AudioManagerInternal;

.field public final mCallbacks:Ljava/util/ArrayList;

.field public final mClock:Ljava/time/Clock;

.field protected final mConditions:Lcom/android/server/notification/ZenModeConditions;

.field protected mConfig:Landroid/service/notification/ZenModeConfig;

.field public final mConfigLock:Ljava/lang/Object;

.field final mConfigs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/service/notification/ZenModeConfig;",
            ">;"
        }
    .end annotation
.end field

.field public mConsolidatedDeviceEffects:Landroid/service/notification/ZenDeviceEffects;

.field protected mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

.field public final mContext:Landroid/content/Context;

.field public final mDefaultConfig:Landroid/service/notification/ZenModeConfig;

.field public mDeviceEffectsApplier:Landroid/service/notification/DeviceEffectsApplier;

.field public final mFiltering:Lcom/android/server/notification/ZenModeFiltering;

.field public final mFlagResolver:Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$FlagResolver;

.field public final mHandler:Lcom/android/server/notification/ZenModeHelper$H;

.field protected mIsSystemServicesReady:Z

.field public final mMetrics:Lcom/android/server/notification/ZenModeHelper$Metrics;

.field public mPm:Landroid/content/pm/PackageManager;

.field public mPriorityOnlyDndExemptPackages:[Ljava/lang/String;

.field public final mRingerModeDelegate:Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;

.field protected final mRulesUidCache:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final mServiceConfig:Lcom/android/server/notification/ManagedServices$Config;

.field public final mSettingsObserver:Lcom/android/server/notification/ZenModeHelper$SettingsObserver;

.field public mSuppressedEffects:J

.field public mUser:I

.field protected mZenMode:I

.field public final mZenModeEventLogger:Lcom/android/server/notification/ZenModeEventLogger;


# direct methods
.method public static synthetic $r8$lambda$0g2TCyxqVWjORDguCddL_QuImw0(Lcom/android/server/notification/ZenModeHelper;Landroid/service/notification/ZenModeConfig$ZenRule;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->lambda$updateImplicitZenRuleNameAndDescription$0(Landroid/service/notification/ZenModeConfig$ZenRule;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmConfigLock(Lcom/android/server/notification/ZenModeHelper;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/notification/ZenModeHelper;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/notification/ZenModeHelper;)Lcom/android/server/notification/ZenModeHelper$H;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mHandler:Lcom/android/server/notification/ZenModeHelper$H;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMetrics(Lcom/android/server/notification/ZenModeHelper;)Lcom/android/server/notification/ZenModeHelper$Metrics;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mMetrics:Lcom/android/server/notification/ZenModeHelper$Metrics;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mapplyConsolidatedDeviceEffects(Lcom/android/server/notification/ZenModeHelper;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->applyConsolidatedDeviceEffects(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdispatchOnZenModeChanged(Lcom/android/server/notification/ZenModeHelper;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeHelper;->dispatchOnZenModeChanged()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetZenModeSetting(Lcom/android/server/notification/ZenModeHelper;)I
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeHelper;->getZenModeSetting()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$msetManualZenMode(Lcom/android/server/notification/ZenModeHelper;Landroid/os/UserHandle;ILandroid/net/Uri;ILjava/lang/String;Ljava/lang/String;ZI)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p8}, Lcom/android/server/notification/ZenModeHelper;->setManualZenMode(Landroid/os/UserHandle;ILandroid/net/Uri;ILjava/lang/String;Ljava/lang/String;ZI)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetPreviousRingerModeSetting(Lcom/android/server/notification/ZenModeHelper;Ljava/lang/Integer;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->setPreviousRingerModeSetting(Ljava/lang/Integer;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateRingerAndAudio(Lcom/android/server/notification/ZenModeHelper;Z)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->updateRingerAndAudio(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 151
    const-string v0, "ZenModeHelper"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    const-wide/16 v0, 0x1e

    .line 158
    invoke-static {v0, v1}, Ljava/time/Duration;->ofDays(J)Ljava/time/Duration;

    move-result-object v2

    sput-object v2, Lcom/android/server/notification/ZenModeHelper;->DELETED_RULE_KEPT_FOR:Ljava/time/Duration;

    .line 164
    invoke-static {v0, v1}, Ljava/time/Duration;->ofDays(J)Ljava/time/Duration;

    move-result-object v0

    sput-object v0, Lcom/android/server/notification/ZenModeHelper;->IMPLICIT_RULE_KEPT_FOR:Ljava/time/Duration;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Ljava/time/Clock;Lcom/android/server/notification/ConditionProviders;Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$FlagResolver;Lcom/android/server/notification/ZenModeEventLogger;)V
    .locals 6

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mRulesUidCache:Landroid/util/ArrayMap;

    .line 184
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mCallbacks:Ljava/util/ArrayList;

    .line 186
    new-instance v0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;

    invoke-direct {v0, p0}, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;-><init>(Lcom/android/server/notification/ZenModeHelper;)V

    iput-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mRingerModeDelegate:Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;

    .line 189
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    .line 191
    new-instance v1, Lcom/android/server/notification/ZenModeHelper$Metrics;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/notification/ZenModeHelper$Metrics;-><init>(Lcom/android/server/notification/ZenModeHelper;Lcom/android/server/notification/ZenModeHelper-IA;)V

    iput-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mMetrics:Lcom/android/server/notification/ZenModeHelper$Metrics;

    .line 198
    new-instance v3, Landroid/service/notification/ZenDeviceEffects$Builder;

    invoke-direct {v3}, Landroid/service/notification/ZenDeviceEffects$Builder;-><init>()V

    .line 199
    invoke-virtual {v3}, Landroid/service/notification/ZenDeviceEffects$Builder;->build()Landroid/service/notification/ZenDeviceEffects;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedDeviceEffects:Landroid/service/notification/ZenDeviceEffects;

    const/4 v3, 0x0

    .line 200
    iput v3, p0, Lcom/android/server/notification/ZenModeHelper;->mUser:I

    .line 202
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    .line 224
    iput-object p1, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    .line 225
    new-instance v5, Lcom/android/server/notification/ZenModeHelper$H;

    invoke-direct {v5, p0, p2, v2}, Lcom/android/server/notification/ZenModeHelper$H;-><init>(Lcom/android/server/notification/ZenModeHelper;Landroid/os/Looper;Lcom/android/server/notification/ZenModeHelper-IA;)V

    iput-object v5, p0, Lcom/android/server/notification/ZenModeHelper;->mHandler:Lcom/android/server/notification/ZenModeHelper$H;

    .line 226
    iput-object p3, p0, Lcom/android/server/notification/ZenModeHelper;->mClock:Ljava/time/Clock;

    .line 227
    invoke-virtual {p0, v1}, Lcom/android/server/notification/ZenModeHelper;->addCallback(Lcom/android/server/notification/ZenModeHelper$Callback;)V

    .line 228
    const-class p2, Landroid/app/AppOpsManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/AppOpsManager;

    iput-object p2, p0, Lcom/android/server/notification/ZenModeHelper;->mAppOps:Landroid/app/AppOpsManager;

    .line 231
    invoke-static {}, Landroid/service/notification/ZenModeConfig;->getDefaultConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object p2

    .line 232
    iput-object p2, p0, Lcom/android/server/notification/ZenModeHelper;->mDefaultConfig:Landroid/service/notification/ZenModeConfig;

    .line 233
    invoke-static {p1, p2}, Lcom/android/server/notification/ZenModeHelper;->updateDefaultConfig(Landroid/content/Context;Landroid/service/notification/ZenModeConfig;)V

    .line 235
    monitor-enter v4

    .line 236
    :try_start_0
    invoke-virtual {p2}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 237
    invoke-virtual {v0, v3, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 238
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    iget-object p2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {p2}, Landroid/service/notification/ZenModeConfig;->toNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    .line 241
    new-instance p2, Lcom/android/server/notification/ZenModeHelper$SettingsObserver;

    invoke-direct {p2, p0, v5}, Lcom/android/server/notification/ZenModeHelper$SettingsObserver;-><init>(Lcom/android/server/notification/ZenModeHelper;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/android/server/notification/ZenModeHelper;->mSettingsObserver:Lcom/android/server/notification/ZenModeHelper$SettingsObserver;

    .line 242
    invoke-virtual {p2}, Lcom/android/server/notification/ZenModeHelper$SettingsObserver;->observe()V

    .line 243
    new-instance p2, Lcom/android/server/notification/ZenModeFiltering;

    invoke-direct {p2, p1}, Lcom/android/server/notification/ZenModeFiltering;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/server/notification/ZenModeHelper;->mFiltering:Lcom/android/server/notification/ZenModeFiltering;

    .line 244
    new-instance p1, Lcom/android/server/notification/ZenModeConditions;

    invoke-direct {p1, p0, p4}, Lcom/android/server/notification/ZenModeConditions;-><init>(Lcom/android/server/notification/ZenModeHelper;Lcom/android/server/notification/ConditionProviders;)V

    iput-object p1, p0, Lcom/android/server/notification/ZenModeHelper;->mConditions:Lcom/android/server/notification/ZenModeConditions;

    .line 245
    invoke-virtual {p4}, Lcom/android/server/notification/ConditionProviders;->getConfig()Lcom/android/server/notification/ManagedServices$Config;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/notification/ZenModeHelper;->mServiceConfig:Lcom/android/server/notification/ManagedServices$Config;

    .line 246
    iput-object p5, p0, Lcom/android/server/notification/ZenModeHelper;->mFlagResolver:Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$FlagResolver;

    .line 247
    iput-object p6, p0, Lcom/android/server/notification/ZenModeHelper;->mZenModeEventLogger:Lcom/android/server/notification/ZenModeEventLogger;

    return-void

    :catchall_0
    move-exception p0

    .line 238
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static applyConditionAndReconsiderOverride(Landroid/service/notification/ZenModeConfig$ZenRule;Landroid/service/notification/Condition;I)V
    .locals 2

    .line 966
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->isImplicitRuleId(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 970
    iput-object p1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    .line 971
    invoke-virtual {p0}, Landroid/service/notification/ZenModeConfig$ZenRule;->resetConditionOverride()V

    return-void

    :cond_0
    const/4 v0, 0x3

    const/4 v1, 0x1

    if-ne p2, v0, :cond_3

    if-eqz p1, :cond_3

    .line 972
    iget v0, p1, Landroid/service/notification/Condition;->source:I

    if-ne v0, v1, :cond_3

    .line 980
    iget p1, p1, Landroid/service/notification/Condition;->state:I

    if-ne p1, v1, :cond_1

    .line 981
    invoke-virtual {p0}, Landroid/service/notification/ZenModeConfig$ZenRule;->resetConditionOverride()V

    .line 982
    invoke-virtual {p0}, Landroid/service/notification/ZenModeConfig$ZenRule;->isActive()Z

    move-result p1

    if-nez p1, :cond_2

    .line 983
    invoke-virtual {p0, v1}, Landroid/service/notification/ZenModeConfig$ZenRule;->setConditionOverride(I)V

    return-void

    :cond_1
    if-nez p1, :cond_2

    .line 986
    invoke-virtual {p0}, Landroid/service/notification/ZenModeConfig$ZenRule;->resetConditionOverride()V

    .line 987
    invoke-virtual {p0}, Landroid/service/notification/ZenModeConfig$ZenRule;->isActive()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x2

    .line 988
    invoke-virtual {p0, p1}, Landroid/service/notification/ZenModeConfig$ZenRule;->setConditionOverride(I)V

    :cond_2
    return-void

    :cond_3
    const/4 v0, 0x7

    if-ne p2, v0, :cond_4

    if-eqz p1, :cond_4

    .line 991
    iget p2, p1, Landroid/service/notification/Condition;->source:I

    if-ne p2, v1, :cond_4

    .line 996
    iput-object p1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    .line 997
    invoke-virtual {p0}, Landroid/service/notification/ZenModeConfig$ZenRule;->resetConditionOverride()V

    return-void

    .line 1001
    :cond_4
    iput-object p1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    .line 1002
    invoke-virtual {p0}, Landroid/service/notification/ZenModeConfig$ZenRule;->reconsiderConditionOverride()V

    return-void
.end method

.method public static checkManageRuleOrigin(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 2847
    :goto_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    .line 2843
    const-string p1, "Expected one of ORIGIN_APP, ORIGIN_SYSTEM, or ORIGIN_USER_IN_SYSTEMUI for %s, but received \'%s\'."

    invoke-static {v0, p1, p0}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static checkSetRuleStateOrigin(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x7

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 2859
    :goto_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    .line 2855
    const-string p1, "Expected one of ORIGIN_APP, ORIGIN_USER_IN_APP, ORIGIN_SYSTEM, or ORIGIN_USER_IN_SYSTEMUI for %s, but received \'%s\'."

    invoke-static {v0, p1, p0}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static doesOriginAlwaysUpdateValues(I)Z
    .locals 1

    .line 0
    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/service/notification/ZenModeConfig;)V
    .locals 0

    .line 1722
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 p1, 0x3d

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(C)V

    .line 1723
    invoke-virtual {p0, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return-void
.end method

.method public static findMatchingRules(Landroid/service/notification/ZenModeConfig;Landroid/net/Uri;Landroid/service/notification/Condition;)Ljava/util/List;
    .locals 3

    .line 1012
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1013
    iget-object v1, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-static {p1, p2, v1}, Lcom/android/server/notification/ZenModeHelper;->ruleMatches(Landroid/net/Uri;Landroid/service/notification/Condition;Landroid/service/notification/ZenModeConfig$ZenRule;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1014
    iget-object p0, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 1016
    :cond_0
    iget-object p0, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 1017
    invoke-static {p1, p2, v1}, Lcom/android/server/notification/ZenModeHelper;->ruleMatches(Landroid/net/Uri;Landroid/service/notification/Condition;Landroid/service/notification/ZenModeConfig$ZenRule;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1018
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static getNotificationPolicy(Landroid/service/notification/ZenModeConfig;)Landroid/app/NotificationManager$Policy;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1878
    :cond_0
    invoke-virtual {p0}, Landroid/service/notification/ZenModeConfig;->toNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object p0

    return-object p0
.end method

.method public static getPackageUserKey(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .line 2643
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "|"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static maybeReplaceDefaultRule(Landroid/service/notification/ZenModeConfig;Landroid/service/notification/ZenModeConfig$ZenRule;Landroid/app/AutomaticZenRule;)V
    .locals 2

    .line 535
    invoke-virtual {p2}, Landroid/app/AutomaticZenRule;->getType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    if-eqz p1, :cond_0

    iget p1, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->type:I

    .line 536
    invoke-virtual {p2}, Landroid/app/AutomaticZenRule;->getType()I

    move-result p2

    if-eq p1, p2, :cond_1

    .line 539
    :cond_0
    iget-object p1, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    const-string p2, "EVERY_NIGHT_DEFAULT_RULE"

    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/service/notification/ZenModeConfig$ZenRule;

    if-eqz p1, :cond_1

    .line 541
    iget-boolean v0, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    if-nez v0, :cond_1

    .line 543
    invoke-virtual {p1}, Landroid/service/notification/ZenModeConfig$ZenRule;->isUserModified()Z

    move-result p1

    if-nez p1, :cond_1

    .line 544
    iget-object p0, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public static ruleMatches(Landroid/net/Uri;Landroid/service/notification/Condition;Landroid/service/notification/ZenModeConfig$ZenRule;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-eqz p2, :cond_3

    .line 1026
    iget-object v1, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    if-nez v1, :cond_0

    goto :goto_0

    .line 1027
    :cond_0
    invoke-virtual {v1, p0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    return v0

    .line 1028
    :cond_1
    iget-object p0, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    invoke-static {p1, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    return v0
.end method

.method public static updateDefaultAutomaticRulePolicies(Landroid/service/notification/ZenModeConfig;)V
    .locals 4

    .line 2384
    invoke-virtual {p0}, Landroid/service/notification/ZenModeConfig;->getZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object v0

    .line 2385
    iget-object p0, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 2386
    invoke-static {}, Landroid/service/notification/ZenModeConfig;->getDefaultRuleIds()Ljava/util/List;

    move-result-object v2

    iget-object v3, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    if-nez v2, :cond_0

    .line 2387
    invoke-virtual {v0}, Landroid/service/notification/ZenPolicy;->copy()Landroid/service/notification/ZenPolicy;

    move-result-object v2

    iput-object v2, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static updateDefaultConfig(Landroid/content/Context;Landroid/service/notification/ZenModeConfig;)V
    .locals 0

    .line 2358
    invoke-static {p1}, Lcom/android/server/notification/ZenModeHelper;->updateDefaultAutomaticRulePolicies(Landroid/service/notification/ZenModeConfig;)V

    .line 2360
    invoke-static {p0, p1}, Landroid/service/notification/SystemZenRules;->maybeUpgradeRules(Landroid/content/Context;Landroid/service/notification/ZenModeConfig;)V

    .line 2362
    invoke-static {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->updateRuleStringsForCurrentLocale(Landroid/content/Context;Landroid/service/notification/ZenModeConfig;)V

    return-void
.end method

.method public static updateRuleStringsForCurrentLocale(Landroid/content/Context;Landroid/service/notification/ZenModeConfig;)V
    .locals 3

    .line 2367
    iget-object p1, p1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 2368
    iget-object v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    const-string v2, "EVENTS_DEFAULT_RULE"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2369
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040b06

    .line 2370
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    goto :goto_1

    .line 2371
    :cond_0
    const-string v1, "EVERY_NIGHT_DEFAULT_RULE"

    iget-object v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2372
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040b07

    .line 2373
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    .line 2376
    :cond_1
    :goto_1
    invoke-static {p0, v0}, Landroid/service/notification/SystemZenRules;->updateTriggerDescription(Landroid/content/Context;Landroid/service/notification/ZenModeConfig$ZenRule;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static updateZenDeviceEffects(Landroid/service/notification/ZenModeConfig$ZenRule;Landroid/service/notification/ZenDeviceEffects;ZZ)Z
    .locals 2

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1471
    :cond_0
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenDeviceEffects:Landroid/service/notification/ZenDeviceEffects;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 1473
    :cond_1
    new-instance v0, Landroid/service/notification/ZenDeviceEffects$Builder;

    invoke-direct {v0}, Landroid/service/notification/ZenDeviceEffects$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/service/notification/ZenDeviceEffects$Builder;->build()Landroid/service/notification/ZenDeviceEffects;

    move-result-object v0

    :goto_0
    if-eqz p2, :cond_2

    .line 1477
    new-instance p2, Landroid/service/notification/ZenDeviceEffects$Builder;

    invoke-direct {p2, p1}, Landroid/service/notification/ZenDeviceEffects$Builder;-><init>(Landroid/service/notification/ZenDeviceEffects;)V

    .line 1480
    invoke-virtual {v0}, Landroid/service/notification/ZenDeviceEffects;->shouldDisableAutoBrightness()Z

    move-result p1

    .line 1479
    invoke-virtual {p2, p1}, Landroid/service/notification/ZenDeviceEffects$Builder;->setShouldDisableAutoBrightness(Z)Landroid/service/notification/ZenDeviceEffects$Builder;

    move-result-object p1

    .line 1481
    invoke-virtual {v0}, Landroid/service/notification/ZenDeviceEffects;->shouldDisableTapToWake()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/service/notification/ZenDeviceEffects$Builder;->setShouldDisableTapToWake(Z)Landroid/service/notification/ZenDeviceEffects$Builder;

    move-result-object p1

    .line 1482
    invoke-virtual {v0}, Landroid/service/notification/ZenDeviceEffects;->shouldDisableTiltToWake()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/service/notification/ZenDeviceEffects$Builder;->setShouldDisableTiltToWake(Z)Landroid/service/notification/ZenDeviceEffects$Builder;

    move-result-object p1

    .line 1483
    invoke-virtual {v0}, Landroid/service/notification/ZenDeviceEffects;->shouldDisableTouch()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/service/notification/ZenDeviceEffects$Builder;->setShouldDisableTouch(Z)Landroid/service/notification/ZenDeviceEffects$Builder;

    move-result-object p1

    .line 1484
    invoke-virtual {v0}, Landroid/service/notification/ZenDeviceEffects;->shouldMinimizeRadioUsage()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/service/notification/ZenDeviceEffects$Builder;->setShouldMinimizeRadioUsage(Z)Landroid/service/notification/ZenDeviceEffects$Builder;

    move-result-object p1

    .line 1485
    invoke-virtual {v0}, Landroid/service/notification/ZenDeviceEffects;->shouldMaximizeDoze()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/service/notification/ZenDeviceEffects$Builder;->setShouldMaximizeDoze(Z)Landroid/service/notification/ZenDeviceEffects$Builder;

    move-result-object p1

    .line 1486
    invoke-virtual {v0}, Landroid/service/notification/ZenDeviceEffects;->shouldUseNightLight()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/service/notification/ZenDeviceEffects$Builder;->setShouldUseNightLight(Z)Landroid/service/notification/ZenDeviceEffects$Builder;

    move-result-object p1

    .line 1487
    invoke-virtual {v0}, Landroid/service/notification/ZenDeviceEffects;->getExtraEffects()Ljava/util/Set;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/service/notification/ZenDeviceEffects$Builder;->setExtraEffects(Ljava/util/Set;)Landroid/service/notification/ZenDeviceEffects$Builder;

    move-result-object p1

    .line 1488
    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects$Builder;->build()Landroid/service/notification/ZenDeviceEffects;

    move-result-object p1

    .line 1491
    :cond_2
    iput-object p1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenDeviceEffects:Landroid/service/notification/ZenDeviceEffects;

    if-eqz p3, :cond_f

    .line 1494
    iget p2, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenDeviceEffectsUserModifiedFields:I

    .line 1495
    invoke-virtual {v0}, Landroid/service/notification/ZenDeviceEffects;->shouldDisplayGrayscale()Z

    move-result p3

    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->shouldDisplayGrayscale()Z

    move-result v1

    if-eq p3, v1, :cond_3

    or-int/lit8 p2, p2, 0x1

    .line 1498
    :cond_3
    invoke-virtual {v0}, Landroid/service/notification/ZenDeviceEffects;->shouldSuppressAmbientDisplay()Z

    move-result p3

    .line 1499
    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->shouldSuppressAmbientDisplay()Z

    move-result v1

    if-eq p3, v1, :cond_4

    or-int/lit8 p2, p2, 0x2

    .line 1502
    :cond_4
    invoke-virtual {v0}, Landroid/service/notification/ZenDeviceEffects;->shouldDimWallpaper()Z

    move-result p3

    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->shouldDimWallpaper()Z

    move-result v1

    if-eq p3, v1, :cond_5

    or-int/lit8 p2, p2, 0x4

    .line 1505
    :cond_5
    invoke-virtual {v0}, Landroid/service/notification/ZenDeviceEffects;->shouldUseNightMode()Z

    move-result p3

    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->shouldUseNightMode()Z

    move-result v1

    if-eq p3, v1, :cond_6

    or-int/lit8 p2, p2, 0x8

    .line 1508
    :cond_6
    invoke-virtual {v0}, Landroid/service/notification/ZenDeviceEffects;->shouldDisableAutoBrightness()Z

    move-result p3

    .line 1509
    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->shouldDisableAutoBrightness()Z

    move-result v1

    if-eq p3, v1, :cond_7

    or-int/lit8 p2, p2, 0x10

    .line 1512
    :cond_7
    invoke-virtual {v0}, Landroid/service/notification/ZenDeviceEffects;->shouldDisableTapToWake()Z

    move-result p3

    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->shouldDisableTapToWake()Z

    move-result v1

    if-eq p3, v1, :cond_8

    or-int/lit8 p2, p2, 0x20

    .line 1515
    :cond_8
    invoke-virtual {v0}, Landroid/service/notification/ZenDeviceEffects;->shouldDisableTiltToWake()Z

    move-result p3

    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->shouldDisableTiltToWake()Z

    move-result v1

    if-eq p3, v1, :cond_9

    or-int/lit8 p2, p2, 0x40

    .line 1518
    :cond_9
    invoke-virtual {v0}, Landroid/service/notification/ZenDeviceEffects;->shouldDisableTouch()Z

    move-result p3

    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->shouldDisableTouch()Z

    move-result v1

    if-eq p3, v1, :cond_a

    or-int/lit16 p2, p2, 0x80

    .line 1521
    :cond_a
    invoke-virtual {v0}, Landroid/service/notification/ZenDeviceEffects;->shouldMinimizeRadioUsage()Z

    move-result p3

    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->shouldMinimizeRadioUsage()Z

    move-result v1

    if-eq p3, v1, :cond_b

    or-int/lit16 p2, p2, 0x100

    .line 1524
    :cond_b
    invoke-virtual {v0}, Landroid/service/notification/ZenDeviceEffects;->shouldMaximizeDoze()Z

    move-result p3

    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->shouldMaximizeDoze()Z

    move-result v1

    if-eq p3, v1, :cond_c

    or-int/lit16 p2, p2, 0x200

    .line 1527
    :cond_c
    invoke-virtual {v0}, Landroid/service/notification/ZenDeviceEffects;->shouldUseNightLight()Z

    move-result p3

    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->shouldUseNightLight()Z

    move-result v1

    if-eq p3, v1, :cond_d

    or-int/lit16 p2, p2, 0x800

    .line 1530
    :cond_d
    invoke-virtual {v0}, Landroid/service/notification/ZenDeviceEffects;->getExtraEffects()Ljava/util/Set;

    move-result-object p3

    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->getExtraEffects()Ljava/util/Set;

    move-result-object v1

    invoke-static {p3, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_e

    or-int/lit16 p2, p2, 0x400

    .line 1533
    :cond_e
    iput p2, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenDeviceEffectsUserModifiedFields:I

    .line 1536
    :cond_f
    invoke-virtual {p1, v0}, Landroid/service/notification/ZenDeviceEffects;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static zenSeverity(I)I
    .locals 2

    .line 0
    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v1

    :cond_1
    return v0
.end method


# virtual methods
.method public addAutomaticZenRule(Landroid/os/UserHandle;Ljava/lang/String;Landroid/app/AutomaticZenRule;ILjava/lang/String;I)Ljava/lang/String;
    .locals 9

    .line 437
    const-string v0, "addAutomaticZenRule"

    invoke-static {v0, p4}, Lcom/android/server/notification/ZenModeHelper;->checkManageRuleOrigin(Ljava/lang/String;I)V

    .line 438
    const-string v0, "android"

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 439
    invoke-virtual {p3}, Landroid/app/AutomaticZenRule;->getOwner()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/notification/ZenModeHelper;->getServiceInfo(Landroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 441
    invoke-virtual {p3}, Landroid/app/AutomaticZenRule;->getConfigurationActivity()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/notification/ZenModeHelper;->getActivityInfo(Landroid/content/ComponentName;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_3

    .line 447
    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    .line 448
    const-string v2, "android.service.zen.automatic.ruleInstanceLimit"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 451
    :cond_1
    invoke-virtual {p3}, Landroid/app/AutomaticZenRule;->getOwner()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/notification/ZenModeHelper;->getCurrentInstanceCount(Landroid/os/UserHandle;Landroid/content/ComponentName;)I

    move-result v0

    .line 452
    invoke-virtual {p3}, Landroid/app/AutomaticZenRule;->getConfigurationActivity()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/android/server/notification/ZenModeHelper;->getCurrentInstanceCount(Landroid/os/UserHandle;Landroid/content/ComponentName;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x1

    .line 454
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/notification/ZenModeHelper;->getPackageRuleCount(Landroid/os/UserHandle;Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    const/16 v3, 0x64

    if-gt v2, v3, :cond_2

    if-lez v1, :cond_4

    if-lt v1, v0, :cond_2

    goto :goto_0

    .line 457
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Rule instance limit exceeded"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 444
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Lacking enabled CPS or config activity"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 462
    :cond_4
    :goto_0
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    monitor-enter v1

    .line 463
    :try_start_0
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/notification/ZenModeHelper;->getConfigLocked(Landroid/os/UserHandle;)Landroid/service/notification/ZenModeConfig;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 467
    sget-boolean v0, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz v0, :cond_5

    .line 468
    const-string v0, "ZenModeHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addAutomaticZenRule rule= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_2

    .line 470
    :cond_5
    :goto_1
    invoke-virtual {p1}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v3

    .line 471
    new-instance v5, Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-direct {v5}, Landroid/service/notification/ZenModeConfig$ZenRule;-><init>()V

    const/4 v8, 0x1

    move-object v2, p0

    move-object v4, p3

    move v7, p4

    move-object v6, v5

    move-object v5, v3

    move-object v3, p2

    .line 472
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/notification/ZenModeHelper;->populateZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;Landroid/service/notification/ZenModeConfig;Landroid/service/notification/ZenModeConfig$ZenRule;IZ)Z

    move-object v3, v5

    move-object v4, p2

    move-object v5, v6

    move-object v6, p3

    .line 473
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/notification/ZenModeHelper;->maybeRestoreRemovedRule(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;Landroid/service/notification/ZenModeConfig$ZenRule;Landroid/app/AutomaticZenRule;I)Landroid/service/notification/ZenModeConfig$ZenRule;

    move-result-object p1

    .line 474
    iget-object p2, v3, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    iget-object v0, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    invoke-virtual {p2, v0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p2, 0x0

    .line 475
    invoke-static {v3, p2, p3}, Lcom/android/server/notification/ZenModeHelper;->maybeReplaceDefaultRule(Landroid/service/notification/ZenModeConfig;Landroid/service/notification/ZenModeConfig$ZenRule;Landroid/app/AutomaticZenRule;)V

    .line 477
    iget-object v6, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    const/4 v7, 0x1

    move-object v2, p0

    move v4, p4

    move-object v5, p5

    move v8, p6

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/notification/ZenModeHelper;->setConfigLocked(Landroid/service/notification/ZenModeConfig;ILjava/lang/String;Landroid/content/ComponentName;ZI)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 478
    iget-object p0, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    monitor-exit v1

    return-object p0

    .line 480
    :cond_6
    new-instance p0, Landroid/util/AndroidRuntimeException;

    const-string p1, "Could not create rule"

    invoke-direct {p0, p1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 465
    :cond_7
    new-instance p0, Landroid/util/AndroidRuntimeException;

    const-string p1, "Could not create rule"

    invoke-direct {p0, p1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 482
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public addCallback(Lcom/android/server/notification/ZenModeHelper$Callback;)V
    .locals 0

    .line 284
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final applyConsolidatedDeviceEffects(I)V
    .locals 2

    .line 2340
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2341
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mDeviceEffectsApplier:Landroid/service/notification/DeviceEffectsApplier;

    .line 2342
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedDeviceEffects:Landroid/service/notification/ZenDeviceEffects;

    .line 2343
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 2345
    invoke-interface {v1, p0, p1}, Landroid/service/notification/DeviceEffectsApplier;->apply(Landroid/service/notification/ZenDeviceEffects;I)V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    .line 2343
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final applyCustomPolicy(Landroid/service/notification/ZenModeConfig;Landroid/service/notification/ZenPolicy;Landroid/service/notification/ZenModeConfig$ZenRule;Z)V
    .locals 2

    .line 2232
    iget v0, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2234
    invoke-static {}, Landroid/service/notification/ZenPolicy;->getBasePolicyInterruptionFilterNone()Landroid/service/notification/ZenPolicy;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/service/notification/ZenPolicy;->apply(Landroid/service/notification/ZenPolicy;)V

    return-void

    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 2243
    invoke-static {}, Landroid/service/notification/ZenPolicy;->getBasePolicyInterruptionFilterAlarms()Landroid/service/notification/ZenPolicy;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/service/notification/ZenPolicy;->apply(Landroid/service/notification/ZenPolicy;)V

    return-void

    .line 2252
    :cond_1
    iget-object v0, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    if-eqz v0, :cond_2

    .line 2253
    invoke-virtual {p2, v0}, Landroid/service/notification/ZenPolicy;->apply(Landroid/service/notification/ZenPolicy;)V

    return-void

    :cond_2
    if-eqz p4, :cond_3

    .line 2257
    invoke-virtual {p1}, Landroid/service/notification/ZenModeConfig;->getZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/service/notification/ZenPolicy;->apply(Landroid/service/notification/ZenPolicy;)V

    return-void

    .line 2263
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "active automatic rule found with no specified policy: "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "ZenModeHelper"

    invoke-static {p3, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2265
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mDefaultConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {p0}, Landroid/service/notification/ZenModeConfig;->getZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object p0

    .line 2264
    invoke-virtual {p2, p0}, Landroid/service/notification/ZenPolicy;->apply(Landroid/service/notification/ZenPolicy;)V

    return-void
.end method

.method public applyGlobalPolicyAsImplicitZenRule(Landroid/os/UserHandle;Ljava/lang/String;ILandroid/app/NotificationManager$Policy;)V
    .locals 8

    .line 671
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    monitor-enter v1

    .line 672
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->getConfigLocked(Landroid/os/UserHandle;)Landroid/service/notification/ZenModeConfig;

    move-result-object p1

    if-nez p1, :cond_0

    .line 674
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_2

    .line 676
    :cond_0
    invoke-virtual {p1}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v3

    .line 678
    iget-object v0, v3, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-static {p2}, Landroid/service/notification/ZenModeConfig;->implicitRuleId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/notification/ZenModeConfig$ZenRule;

    if-nez v0, :cond_1

    .line 681
    invoke-virtual {p0, p2}, Lcom/android/server/notification/ZenModeHelper;->newImplicitZenRule(Ljava/lang/String;)Landroid/service/notification/ZenModeConfig$ZenRule;

    move-result-object v0

    const/4 p2, 0x1

    .line 682
    iput p2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    .line 683
    iget-object v2, v3, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    iget-object v4, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    invoke-virtual {v2, v4, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    move v7, p2

    move-object v4, v0

    goto :goto_1

    .line 686
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/server/notification/ZenModeHelper;->updateImplicitZenRuleNameAndDescription(Landroid/service/notification/ZenModeConfig$ZenRule;)V

    const/4 p2, 0x0

    goto :goto_0

    .line 692
    :goto_1
    iget p2, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicyUserModifiedFields:I

    if-nez p2, :cond_3

    .line 693
    invoke-static {p4}, Landroid/service/notification/ZenAdapters;->notificationPolicyToZenPolicy(Landroid/app/NotificationManager$Policy;)Landroid/service/notification/ZenPolicy;

    move-result-object p2

    if-eqz v7, :cond_2

    .line 700
    invoke-virtual {p1}, Landroid/service/notification/ZenModeConfig;->getZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/service/notification/ZenPolicy;->overwrittenWith(Landroid/service/notification/ZenPolicy;)Landroid/service/notification/ZenPolicy;

    move-result-object p2

    :cond_2
    move-object v5, p2

    const/4 v6, 0x0

    move-object v2, p0

    .line 702
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/notification/ZenModeHelper;->updatePolicy(Landroid/service/notification/ZenModeConfig;Landroid/service/notification/ZenModeConfig$ZenRule;Landroid/service/notification/ZenPolicy;ZZ)Z

    .line 709
    const-string v6, "applyGlobalPolicyAsImplicitZenRule"

    const/4 v4, 0x0

    const/4 v5, 0x4

    move v7, p3

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/notification/ZenModeHelper;->setConfigLocked(Landroid/service/notification/ZenModeConfig;Landroid/content/ComponentName;ILjava/lang/String;I)Z

    .line 712
    :cond_3
    monitor-exit v1

    return-void

    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public applyGlobalZenModeAsImplicitZenRule(Landroid/os/UserHandle;Ljava/lang/String;II)V
    .locals 9

    .line 606
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    monitor-enter v1

    .line 607
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->getConfigLocked(Landroid/os/UserHandle;)Landroid/service/notification/ZenModeConfig;

    move-result-object p1

    if-nez p1, :cond_0

    .line 609
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_2

    .line 611
    :cond_0
    invoke-virtual {p1}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v3

    .line 612
    iget-object v0, v3, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-static {p2}, Landroid/service/notification/ZenModeConfig;->implicitRuleId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/notification/ZenModeConfig$ZenRule;

    if-nez p4, :cond_1

    if-eqz v0, :cond_4

    .line 616
    new-instance v5, Landroid/service/notification/Condition;

    iget-object p1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    iget-object p4, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    const v2, 0x1040b17

    .line 617
    invoke-virtual {p4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    const/4 v2, 0x0

    invoke-direct {v5, p1, p4, v2}, Landroid/service/notification/Condition;-><init>(Landroid/net/Uri;Ljava/lang/String;I)V

    .line 619
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "applyGlobalZenModeAsImplicitZenRule: "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v6, 0x4

    move-object v2, p0

    move v8, p3

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/notification/ZenModeHelper;->setAutomaticZenRuleStateLocked(Landroid/service/notification/ZenModeConfig;Ljava/util/List;Landroid/service/notification/Condition;ILjava/lang/String;I)V

    goto :goto_1

    :cond_1
    move-object v2, p0

    move v7, p3

    if-nez v0, :cond_2

    .line 627
    invoke-virtual {v2, p2}, Lcom/android/server/notification/ZenModeHelper;->newImplicitZenRule(Ljava/lang/String;)Landroid/service/notification/ZenModeConfig$ZenRule;

    move-result-object v0

    .line 634
    invoke-virtual {p1}, Landroid/service/notification/ZenModeConfig;->getZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object p0

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->copy()Landroid/service/notification/ZenPolicy;

    move-result-object p0

    iput-object p0, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    .line 635
    iget-object p0, v3, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    iget-object p1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 638
    :cond_2
    invoke-virtual {v2, v0}, Lcom/android/server/notification/ZenModeHelper;->updateImplicitZenRuleNameAndDescription(Landroid/service/notification/ZenModeConfig$ZenRule;)V

    .line 644
    :goto_0
    iget p0, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->userModifiedFields:I

    and-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_3

    .line 645
    iput p4, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    .line 647
    :cond_3
    new-instance p0, Landroid/service/notification/Condition;

    iget-object p1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    iget-object p2, v2, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    const p3, 0x1040b16

    .line 648
    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x1

    invoke-direct {p0, p1, p2, p3}, Landroid/service/notification/Condition;-><init>(Landroid/net/Uri;Ljava/lang/String;I)V

    iput-object p0, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    .line 650
    invoke-virtual {v0}, Landroid/service/notification/ZenModeConfig$ZenRule;->resetConditionOverride()V

    .line 652
    const-string v6, "applyGlobalZenModeAsImplicitZenRule"

    const/4 v4, 0x0

    const/4 v5, 0x4

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/notification/ZenModeHelper;->setConfigLocked(Landroid/service/notification/ZenModeConfig;Landroid/content/ComponentName;ILjava/lang/String;I)Z

    .line 655
    :cond_4
    :goto_1
    monitor-exit v1

    return-void

    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public applyRestrictions()V
    .locals 20

    move-object/from16 v0, p0

    .line 2394
    iget v1, v0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    if-ne v1, v3, :cond_1

    move v5, v3

    goto :goto_1

    :cond_1
    move v5, v2

    :goto_1
    const/4 v6, 0x2

    if-ne v1, v6, :cond_2

    move v7, v3

    goto :goto_2

    :cond_2
    move v7, v2

    :goto_2
    const/4 v8, 0x3

    if-ne v1, v8, :cond_3

    move v1, v3

    goto :goto_3

    :cond_3
    move v1, v2

    .line 2398
    :goto_3
    iget-object v9, v0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v9}, Landroid/app/NotificationManager$Policy;->allowCalls()Z

    move-result v9

    if-eqz v9, :cond_4

    iget-object v9, v0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    .line 2399
    invoke-virtual {v9}, Landroid/app/NotificationManager$Policy;->allowCallsFrom()I

    move-result v9

    if-nez v9, :cond_4

    move v9, v3

    goto :goto_4

    :cond_4
    move v9, v2

    .line 2400
    :goto_4
    iget-object v10, v0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v10}, Landroid/app/NotificationManager$Policy;->allowRepeatCallers()Z

    move-result v10

    .line 2401
    iget-object v11, v0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v11}, Landroid/app/NotificationManager$Policy;->allowSystem()Z

    move-result v11

    .line 2402
    iget-object v12, v0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v12}, Landroid/app/NotificationManager$Policy;->allowMedia()Z

    move-result v12

    .line 2403
    iget-object v13, v0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v13}, Landroid/app/NotificationManager$Policy;->allowAlarms()Z

    move-result v13

    const-wide/16 v16, 0x0

    if-nez v4, :cond_6

    .line 2406
    iget-wide v14, v0, Lcom/android/server/notification/ZenModeHelper;->mSuppressedEffects:J

    const-wide/16 v18, 0x1

    and-long v14, v14, v18

    cmp-long v4, v14, v16

    if-eqz v4, :cond_5

    goto :goto_5

    :cond_5
    move v4, v2

    goto :goto_6

    :cond_6
    :goto_5
    move v4, v3

    :goto_6
    if-nez v1, :cond_9

    if-eqz v5, :cond_7

    if-eqz v9, :cond_9

    if-eqz v10, :cond_9

    .line 2409
    :cond_7
    iget-wide v9, v0, Lcom/android/server/notification/ZenModeHelper;->mSuppressedEffects:J

    const-wide/16 v14, 0x2

    and-long/2addr v9, v14

    cmp-long v9, v9, v16

    if-eqz v9, :cond_8

    goto :goto_7

    :cond_8
    move v9, v2

    goto :goto_8

    :cond_9
    :goto_7
    move v9, v3

    :goto_8
    if-eqz v5, :cond_a

    if-nez v13, :cond_a

    move v10, v3

    goto :goto_9

    :cond_a
    move v10, v2

    :goto_9
    if-eqz v5, :cond_b

    if-nez v12, :cond_b

    move v12, v3

    goto :goto_a

    :cond_b
    move v12, v2

    :goto_a
    if-nez v1, :cond_d

    if-eqz v5, :cond_c

    if-nez v11, :cond_c

    goto :goto_b

    :cond_c
    move v1, v2

    goto :goto_c

    :cond_d
    :goto_b
    move v1, v3

    :goto_c
    if-nez v7, :cond_f

    if-eqz v5, :cond_e

    .line 2419
    iget-object v7, v0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    .line 2420
    invoke-static {v7}, Landroid/service/notification/ZenModeConfig;->areAllZenBehaviorSoundsMuted(Landroid/app/NotificationManager$Policy;)Z

    move-result v7

    if-eqz v7, :cond_e

    goto :goto_d

    :cond_e
    move v7, v2

    goto :goto_e

    :cond_f
    :goto_d
    move v7, v3

    .line 2422
    :goto_e
    sget-object v11, Landroid/media/AudioAttributes;->SDK_USAGES:Landroid/util/IntArray;

    invoke-virtual {v11}, Landroid/util/IntArray;->toArray()[I

    move-result-object v11

    array-length v13, v11

    move v14, v2

    :goto_f
    if-ge v14, v13, :cond_23

    aget v15, v11, v14

    .line 2423
    sget-object v6, Landroid/media/AudioAttributes;->SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v15}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    if-ne v6, v8, :cond_10

    .line 2425
    invoke-virtual {v0, v5, v2, v15}, Lcom/android/server/notification/ZenModeHelper;->applyRestrictions(ZZI)V

    goto/16 :goto_1c

    :cond_10
    if-ne v6, v3, :cond_13

    if-nez v4, :cond_12

    if-eqz v7, :cond_11

    goto :goto_10

    :cond_11
    move v6, v2

    goto :goto_11

    :cond_12
    :goto_10
    move v6, v3

    .line 2427
    :goto_11
    invoke-virtual {v0, v5, v6, v15}, Lcom/android/server/notification/ZenModeHelper;->applyRestrictions(ZZI)V

    goto/16 :goto_1c

    :cond_13
    const/4 v3, 0x2

    if-ne v6, v3, :cond_16

    if-nez v9, :cond_15

    if-eqz v7, :cond_14

    goto :goto_12

    :cond_14
    move v6, v2

    goto :goto_13

    :cond_15
    :goto_12
    const/4 v6, 0x1

    .line 2429
    :goto_13
    invoke-virtual {v0, v5, v6, v15}, Lcom/android/server/notification/ZenModeHelper;->applyRestrictions(ZZI)V

    goto :goto_1c

    :cond_16
    const/4 v3, 0x4

    if-ne v6, v3, :cond_19

    if-nez v10, :cond_18

    if-eqz v7, :cond_17

    goto :goto_14

    :cond_17
    move v3, v2

    goto :goto_15

    :cond_18
    :goto_14
    const/4 v3, 0x1

    .line 2431
    :goto_15
    invoke-virtual {v0, v5, v3, v15}, Lcom/android/server/notification/ZenModeHelper;->applyRestrictions(ZZI)V

    goto :goto_1c

    :cond_19
    const/4 v3, 0x5

    if-ne v6, v3, :cond_1c

    if-nez v12, :cond_1b

    if-eqz v7, :cond_1a

    goto :goto_16

    :cond_1a
    move v3, v2

    goto :goto_17

    :cond_1b
    :goto_16
    const/4 v3, 0x1

    .line 2433
    :goto_17
    invoke-virtual {v0, v5, v3, v15}, Lcom/android/server/notification/ZenModeHelper;->applyRestrictions(ZZI)V

    goto :goto_1c

    :cond_1c
    const/4 v3, 0x6

    if-ne v6, v3, :cond_22

    const/16 v3, 0xd

    if-ne v15, v3, :cond_1f

    if-nez v1, :cond_1e

    if-eqz v7, :cond_1d

    goto :goto_18

    :cond_1d
    move v3, v2

    goto :goto_19

    :cond_1e
    :goto_18
    const/4 v3, 0x1

    :goto_19
    const/16 v6, 0x1c

    .line 2437
    invoke-virtual {v0, v5, v3, v15, v6}, Lcom/android/server/notification/ZenModeHelper;->applyRestrictions(ZZII)V

    .line 2439
    invoke-virtual {v0, v5, v2, v15, v8}, Lcom/android/server/notification/ZenModeHelper;->applyRestrictions(ZZII)V

    goto :goto_1c

    :cond_1f
    if-nez v1, :cond_21

    if-eqz v7, :cond_20

    goto :goto_1a

    :cond_20
    move v3, v2

    goto :goto_1b

    :cond_21
    :goto_1a
    const/4 v3, 0x1

    .line 2441
    :goto_1b
    invoke-virtual {v0, v5, v3, v15}, Lcom/android/server/notification/ZenModeHelper;->applyRestrictions(ZZI)V

    goto :goto_1c

    .line 2444
    :cond_22
    invoke-virtual {v0, v5, v7, v15}, Lcom/android/server/notification/ZenModeHelper;->applyRestrictions(ZZI)V

    :goto_1c
    add-int/lit8 v14, v14, 0x1

    const/4 v3, 0x1

    const/4 v6, 0x2

    goto :goto_f

    :cond_23
    return-void
.end method

.method public applyRestrictions(ZZI)V
    .locals 1

    const/4 v0, 0x3

    .line 2464
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/notification/ZenModeHelper;->applyRestrictions(ZZII)V

    const/16 v0, 0x1c

    .line 2465
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/notification/ZenModeHelper;->applyRestrictions(ZZII)V

    return-void
.end method

.method public applyRestrictions(ZZII)V
    .locals 3

    .line 2452
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2454
    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mAppOps:Landroid/app/AppOpsManager;

    if-eqz p1, :cond_0

    .line 2456
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mPriorityOnlyDndExemptPackages:[Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    .line 2454
    :goto_0
    invoke-virtual {v2, p4, p3, p2, p0}, Landroid/app/AppOpsManager;->setRestriction(III[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2458
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2459
    throw p0
.end method

.method public applyZenToRingerMode()V
    .locals 3

    .line 2471
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mAudioManager:Landroid/media/AudioManagerInternal;

    if-nez v0, :cond_0

    goto :goto_1

    .line 2473
    :cond_0
    invoke-virtual {v0}, Landroid/media/AudioManagerInternal;->getRingerModeInternal()I

    move-result v0

    .line 2475
    iget v1, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    if-eqz v1, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_3

    .line 2479
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/notification/ZenModeHelper;->setPreviousRingerModeSetting(Ljava/lang/Integer;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    if-nez v0, :cond_3

    .line 2488
    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeHelper;->getPreviousRingerModeSetting()I

    move-result v0

    const/4 v1, 0x0

    .line 2489
    invoke-virtual {p0, v1}, Lcom/android/server/notification/ZenModeHelper;->setPreviousRingerModeSetting(Ljava/lang/Integer;)V

    :cond_3
    :goto_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    .line 2494
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mAudioManager:Landroid/media/AudioManagerInternal;

    const-string v1, "ZenModeHelper"

    invoke-virtual {p0, v0, v1}, Landroid/media/AudioManagerInternal;->setRingerModeInternal(ILjava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public canManageAutomaticZenRule(Landroid/service/notification/ZenModeConfig$ZenRule;I)Z
    .locals 5

    const/4 v0, 0x1

    if-eqz p2, :cond_4

    const/16 v1, 0x3e8

    if-ne p2, v1, :cond_0

    goto :goto_1

    .line 1080
    :cond_0
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MANAGE_NOTIFICATIONS"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 1084
    :cond_1
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p0, p2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p0

    const/4 p2, 0x0

    if-eqz p0, :cond_3

    .line 1086
    array-length v1, p0

    move v2, p2

    :goto_0
    if-ge v2, v1, :cond_3

    .line 1088
    aget-object v3, p0, v2

    invoke-virtual {p1}, Landroid/service/notification/ZenModeConfig$ZenRule;->getPkg()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return p2

    :cond_4
    :goto_1
    return v0
.end method

.method public cleanUpCallersAfter(J)V
    .locals 0

    .line 274
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mFiltering:Lcom/android/server/notification/ZenModeFiltering;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/ZenModeFiltering;->cleanUpCallersAfter(J)V

    return-void
.end method

.method public final cleanUpZenRules()V
    .locals 9

    .line 1927
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->instant()Ljava/time/Instant;

    move-result-object v0

    sget-object v1, Lcom/android/server/notification/ZenModeHelper;->DELETED_RULE_KEPT_FOR:Ljava/time/Duration;

    invoke-virtual {v0, v1}, Ljava/time/Instant;->minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/Instant;

    move-result-object v0

    .line 1928
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1929
    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v2}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v4

    .line 1931
    iget-object v2, v4, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {p0, v2}, Lcom/android/server/notification/ZenModeHelper;->deleteRulesWithoutOwner(Landroid/util/ArrayMap;)V

    .line 1932
    iget-object v2, v4, Landroid/service/notification/ZenModeConfig;->deletedRules:Landroid/util/ArrayMap;

    invoke-virtual {p0, v2}, Lcom/android/server/notification/ZenModeHelper;->deleteRulesWithoutOwner(Landroid/util/ArrayMap;)V

    .line 1934
    iget-object v2, v4, Landroid/service/notification/ZenModeConfig;->deletedRules:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_2

    .line 1935
    iget-object v3, v4, Landroid/service/notification/ZenModeConfig;->deletedRules:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 1936
    iget-object v3, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->deletionInstant:Ljava/time/Instant;

    if-eqz v3, :cond_0

    .line 1937
    invoke-virtual {v3, v0}, Ljava/time/Instant;->isBefore(Ljava/time/Instant;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_2

    .line 1938
    :cond_0
    :goto_1
    iget-object v3, v4, Landroid/service/notification/ZenModeConfig;->deletedRules:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1943
    :cond_2
    iget-object v0, v4, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {p0, v0}, Lcom/android/server/notification/ZenModeHelper;->deleteUnusedImplicitRules(Landroid/util/ArrayMap;)V

    .line 1946
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v4, v0}, Landroid/service/notification/ZenModeConfig;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1947
    const-string v7, "cleanUpZenRules"

    const/16 v8, 0x3e8

    const/4 v5, 0x0

    const/4 v6, 0x5

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/notification/ZenModeHelper;->setConfigLocked(Landroid/service/notification/ZenModeConfig;Landroid/content/ComponentName;ILjava/lang/String;I)Z

    .line 1950
    :cond_3
    monitor-exit v1

    return-void

    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final computeZenMode()I
    .locals 5

    .line 2214
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2215
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 2216
    :cond_0
    invoke-virtual {v1}, Landroid/service/notification/ZenModeConfig;->isManualActive()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object p0, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget p0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    monitor-exit v0

    return p0

    .line 2218
    :cond_1
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object p0, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 2219
    invoke-virtual {v1}, Landroid/service/notification/ZenModeConfig$ZenRule;->isActive()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2220
    iget v3, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    invoke-static {v3}, Lcom/android/server/notification/ZenModeHelper;->zenSeverity(I)I

    move-result v3

    invoke-static {v2}, Lcom/android/server/notification/ZenModeHelper;->zenSeverity(I)I

    move-result v4

    if-le v3, v4, :cond_2

    .line 2221
    iget v1, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    move v2, v1

    goto :goto_0

    .line 2225
    :cond_3
    monitor-exit v0

    return v2

    .line 2226
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final deleteRulesWithoutOwner(Landroid/util/ArrayMap;)V
    .locals 8

    .line 1954
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    if-eqz p1, :cond_1

    .line 1956
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_1

    .line 1957
    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 1958
    iget-wide v4, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->creationTime:J

    sub-long v4, v0, v4

    const-wide/32 v6, 0xf731400

    cmp-long v4, v6, v4

    if-gez v4, :cond_0

    .line 1960
    :try_start_0
    invoke-virtual {v3}, Landroid/service/notification/ZenModeConfig$ZenRule;->getPkg()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1961
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3}, Landroid/service/notification/ZenModeConfig$ZenRule;->getPkg()Ljava/lang/String;

    move-result-object v3

    const/high16 v5, 0x400000

    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1964
    :catch_0
    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final deleteUnusedImplicitRules(Landroid/util/ArrayMap;)V
    .locals 4

    if-nez p1, :cond_0

    goto :goto_1

    .line 1975
    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->instant()Ljava/time/Instant;

    move-result-object v0

    sget-object v1, Lcom/android/server/notification/ZenModeHelper;->IMPLICIT_RULE_KEPT_FOR:Ljava/time/Duration;

    invoke-virtual {v0, v1}, Ljava/time/Instant;->minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/Instant;

    move-result-object v0

    .line 1977
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_3

    .line 1978
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 1979
    iget-object v3, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    invoke-static {v3}, Landroid/service/notification/ZenModeConfig;->isImplicitRuleId(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Landroid/service/notification/ZenModeConfig$ZenRule;->isUserModified()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1980
    iget-object v3, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->lastActivation:Ljava/time/Instant;

    if-nez v3, :cond_1

    .line 1984
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mClock:Ljava/time/Clock;

    invoke-virtual {v3}, Ljava/time/Clock;->instant()Ljava/time/Instant;

    move-result-object v3

    iput-object v3, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->lastActivation:Ljava/time/Instant;

    .line 1987
    :cond_1
    iget-object v2, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->lastActivation:Ljava/time/Instant;

    invoke-virtual {v2, v0}, Ljava/time/Instant;->isBefore(Ljava/time/Instant;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1988
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public final dispatchOnAutomaticRuleStatusChanged(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 3

    .line 2524
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lcom/android/server/notification/ZenModeHelper$Callback;

    .line 2525
    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/android/server/notification/ZenModeHelper$Callback;->onAutomaticRuleStatusChanged(ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final dispatchOnConfigChanged()V
    .locals 3

    .line 2499
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lcom/android/server/notification/ZenModeHelper$Callback;

    .line 2500
    invoke-virtual {v2}, Lcom/android/server/notification/ZenModeHelper$Callback;->onConfigChanged()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final dispatchOnConsolidatedPolicyChanged(Landroid/app/NotificationManager$Policy;)V
    .locals 3

    .line 2511
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lcom/android/server/notification/ZenModeHelper$Callback;

    .line 2512
    invoke-virtual {v2, p1}, Lcom/android/server/notification/ZenModeHelper$Callback;->onConsolidatedPolicyChanged(Landroid/app/NotificationManager$Policy;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final dispatchOnPolicyChanged(Landroid/app/NotificationManager$Policy;)V
    .locals 3

    .line 2505
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lcom/android/server/notification/ZenModeHelper$Callback;

    .line 2506
    invoke-virtual {v2, p1}, Lcom/android/server/notification/ZenModeHelper$Callback;->onPolicyChanged(Landroid/app/NotificationManager$Policy;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final dispatchOnZenModeChanged()V
    .locals 3

    .line 2517
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lcom/android/server/notification/ZenModeHelper$Callback;

    .line 2518
    invoke-virtual {v2}, Lcom/android/server/notification/ZenModeHelper$Callback;->onZenModeChanged()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final drawableResIdToResName(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5

    .line 2817
    const-string v0, "Resource name for ID="

    const-string v1, "ZenModeHelper"

    const/4 v2, 0x0

    if-nez p2, :cond_0

    return-object v2

    .line 2820
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2822
    :try_start_0
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p0

    .line 2823
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 2824
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x3e8

    if-le v3, v4, :cond_1

    .line 2825
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " in package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is too long ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2826
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "); ignoring it"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2825
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :cond_1
    return-object p0

    .line 2831
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " not found in package "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". Resource IDs may change when the application is upgraded, and the system may not be able to find the correct resource."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method public final drawableResNameToResId(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 2804
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2808
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p0

    const/4 p1, 0x0

    .line 2809
    invoke-virtual {p0, p2, p1, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 2811
    const-string p1, "ZenModeHelper"

    const-string p2, "cannot load rule icon for pkg"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public dump(Landroid/util/proto/ProtoOutputStream;)V
    .locals 6

    const-wide v0, 0x10e00000001L

    .line 1684
    iget v2, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1685
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1686
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v1}, Landroid/service/notification/ZenModeConfig;->isManualActive()Z

    move-result v1

    const-wide v2, 0x20b00000002L

    if-eqz v1, :cond_0

    .line 1687
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v1, v1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-virtual {v1, p1, v2, v3}, Landroid/service/notification/ZenModeConfig$ZenRule;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 1689
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v1, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 1690
    invoke-virtual {v4}, Landroid/service/notification/ZenModeConfig$ZenRule;->isActive()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1691
    invoke-virtual {v4, p1, v2, v3}, Landroid/service/notification/ZenModeConfig$ZenRule;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    goto :goto_1

    .line 1694
    :cond_2
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v1}, Landroid/service/notification/ZenModeConfig;->toNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v1

    const-wide v2, 0x10b00000005L

    invoke-virtual {v1, p1, v2, v3}, Landroid/app/NotificationManager$Policy;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1695
    iget-wide v1, p0, Lcom/android/server/notification/ZenModeHelper;->mSuppressedEffects:J

    const-wide v3, 0x10500000003L

    invoke-virtual {p1, v3, v4, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1696
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 5

    .line 1700
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1701
    const-string v0, "mZenMode="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1702
    iget v0, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    invoke-static {v0}, Landroid/provider/Settings$Global;->zenModeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1703
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1704
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mConsolidatedPolicy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v1}, Landroid/app/NotificationManager$Policy;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1705
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1706
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 1708
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mConfigs[u="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/notification/ZenModeConfig;

    invoke-static {p1, p2, v3, v4}, Lcom/android/server/notification/ZenModeHelper;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/service/notification/ZenModeConfig;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 1710
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1711
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mUser="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/notification/ZenModeHelper;->mUser:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1712
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1713
    :try_start_1
    const-string v0, "mConfig"

    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-static {p1, p2, v0, v2}, Lcom/android/server/notification/ZenModeHelper;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/service/notification/ZenModeConfig;)V

    .line 1714
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1716
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSuppressedEffects="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/notification/ZenModeHelper;->mSuppressedEffects:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 1717
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mFiltering:Lcom/android/server/notification/ZenModeFiltering;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/notification/ZenModeFiltering;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 1718
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mConditions:Lcom/android/server/notification/ZenModeConditions;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/ZenModeConditions;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void

    :catchall_1
    move-exception p0

    .line 1714
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    .line 1710
    :goto_1
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public evaluateZenModeLocked(ILjava/lang/String;Z)V
    .locals 4

    .line 2184
    sget-boolean v0, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ZenModeHelper"

    const-string v1, "evaluateZenMode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2185
    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    if-nez v0, :cond_1

    goto :goto_1

    .line 2186
    :cond_1
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    .line 2187
    :cond_2
    invoke-virtual {v0}, Landroid/app/NotificationManager$Policy;->hashCode()I

    move-result v0

    .line 2188
    :goto_0
    iget v2, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    .line 2189
    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeHelper;->computeZenMode()I

    move-result v3

    .line 2190
    invoke-static {v3, p2}, Lcom/android/server/notification/ZenLog;->traceSetZenMode(ILjava/lang/String;)V

    .line 2191
    iput v3, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    .line 2192
    invoke-virtual {p0, v3}, Lcom/android/server/notification/ZenModeHelper;->setZenModeSetting(I)V

    .line 2193
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/ZenModeHelper;->updateAndApplyConsolidatedPolicyAndDeviceEffects(ILjava/lang/String;)V

    if-eqz p3, :cond_4

    const/4 p1, 0x1

    if-ne v3, v2, :cond_3

    if-ne v3, p1, :cond_4

    .line 2194
    iget-object p2, p0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    .line 2196
    invoke-virtual {p2}, Landroid/app/NotificationManager$Policy;->hashCode()I

    move-result p2

    if-eq v0, p2, :cond_4

    :cond_3
    move v1, p1

    .line 2197
    :cond_4
    iget-object p1, p0, Lcom/android/server/notification/ZenModeHelper;->mHandler:Lcom/android/server/notification/ZenModeHelper$H;

    invoke-static {p1, v1}, Lcom/android/server/notification/ZenModeHelper$H;->-$$Nest$mpostUpdateRingerAndAudio(Lcom/android/server/notification/ZenModeHelper$H;Z)V

    if-eq v3, v2, :cond_5

    .line 2199
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mHandler:Lcom/android/server/notification/ZenModeHelper$H;

    invoke-static {p0}, Lcom/android/server/notification/ZenModeHelper$H;->-$$Nest$mpostDispatchOnZenModeChanged(Lcom/android/server/notification/ZenModeHelper$H;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public final getActivityInfo(Landroid/content/ComponentName;)Landroid/content/pm/ActivityInfo;
    .locals 2

    .line 1158
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1159
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1160
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mPm:Landroid/content/pm/PackageManager;

    const/16 p1, 0x81

    .line 1163
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 1160
    invoke-virtual {p0, v0, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1165
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x0

    .line 1166
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ResolveInfo;

    .line 1167
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getAutomaticZenRule(Landroid/os/UserHandle;Ljava/lang/String;I)Landroid/app/AutomaticZenRule;
    .locals 2

    .line 422
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    monitor-enter v0

    .line 423
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->getConfigLocked(Landroid/os/UserHandle;)Landroid/service/notification/ZenModeConfig;

    move-result-object p1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 424
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 425
    :cond_0
    iget-object p1, p1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 426
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_1

    return-object v1

    .line 428
    :cond_1
    invoke-virtual {p0, p1, p3}, Lcom/android/server/notification/ZenModeHelper;->canManageAutomaticZenRule(Landroid/service/notification/ZenModeConfig$ZenRule;I)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 429
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->zenRuleToAutomaticZenRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Landroid/app/AutomaticZenRule;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v1

    .line 426
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public getAutomaticZenRuleState(Landroid/os/UserHandle;Ljava/lang/String;I)I
    .locals 2

    .line 890
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    monitor-enter v0

    .line 891
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->getConfigLocked(Landroid/os/UserHandle;)Landroid/service/notification/ZenModeConfig;

    move-result-object p1

    const/4 v1, 0x2

    if-nez p1, :cond_0

    .line 893
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 895
    :cond_0
    iget-object p1, p1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/service/notification/ZenModeConfig$ZenRule;

    if-eqz p1, :cond_2

    .line 896
    invoke-virtual {p0, p1, p3}, Lcom/android/server/notification/ZenModeHelper;->canManageAutomaticZenRule(Landroid/service/notification/ZenModeConfig$ZenRule;I)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    .line 900
    :cond_1
    invoke-virtual {p1}, Landroid/service/notification/ZenModeConfig$ZenRule;->isActive()Z

    move-result p0

    monitor-exit v0

    return p0

    .line 897
    :cond_2
    :goto_0
    monitor-exit v0

    return v1

    .line 905
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getAutomaticZenRules(Landroid/os/UserHandle;I)Ljava/util/Map;
    .locals 4

    .line 406
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 407
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    monitor-enter v1

    .line 408
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->getConfigLocked(Landroid/os/UserHandle;)Landroid/service/notification/ZenModeConfig;

    move-result-object p1

    if-nez p1, :cond_0

    .line 409
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 411
    :cond_0
    iget-object p1, p1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 412
    invoke-virtual {p0, v2, p2}, Lcom/android/server/notification/ZenModeHelper;->canManageAutomaticZenRule(Landroid/service/notification/ZenModeConfig$ZenRule;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 413
    iget-object v3, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/server/notification/ZenModeHelper;->zenRuleToAutomaticZenRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Landroid/app/AutomaticZenRule;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 416
    :cond_2
    monitor-exit v1

    return-object v0

    .line 417
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getCallbacks()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/notification/ZenModeHelper$Callback;",
            ">;"
        }
    .end annotation

    .line 293
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mCallbacks:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getConfig()Landroid/service/notification/ZenModeConfig;
    .locals 1

    .line 1998
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1999
    :try_start_0
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {p0}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 2000
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getConfigLocked(Landroid/os/UserHandle;)Landroid/service/notification/ZenModeConfig;
    .locals 2

    .line 2029
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    const/4 v1, -0x2

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    iget v1, p0, Lcom/android/server/notification/ZenModeHelper;->mUser:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2032
    :cond_0
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/service/notification/ZenModeConfig;

    return-object p0

    .line 2030
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    return-object p0
.end method

.method public getConsolidatedNotificationPolicy()Landroid/app/NotificationManager$Policy;
    .locals 0

    .line 2007
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {p0}, Landroid/app/NotificationManager$Policy;->copy()Landroid/app/NotificationManager$Policy;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentInstanceCount(Landroid/os/UserHandle;Landroid/content/ComponentName;)I
    .locals 3

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 1037
    :cond_0
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1038
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->getConfigLocked(Landroid/os/UserHandle;)Landroid/service/notification/ZenModeConfig;

    move-result-object p0

    if-nez p0, :cond_1

    .line 1039
    monitor-exit v1

    return v0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 1041
    :cond_1
    iget-object p0, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 1042
    iget-object v2, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    invoke-virtual {p2, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object p1, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->configurationActivity:Landroid/content/ComponentName;

    invoke-virtual {p2, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1046
    :cond_4
    monitor-exit v1

    return v0

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getDefaultZenPolicy()Landroid/service/notification/ZenPolicy;
    .locals 0

    .line 2015
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mDefaultConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {p0}, Landroid/service/notification/ZenModeConfig;->getZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object p0

    return-object p0
.end method

.method public getNotificationPolicy(Landroid/os/UserHandle;)Landroid/app/NotificationManager$Policy;
    .locals 1

    .line 1861
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1866
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->getConfigLocked(Landroid/os/UserHandle;)Landroid/service/notification/ZenModeConfig;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1868
    invoke-static {p1}, Lcom/android/server/notification/ZenModeHelper;->getNotificationPolicy(Landroid/service/notification/ZenModeConfig;)Landroid/app/NotificationManager$Policy;

    move-result-object p0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 1869
    :cond_0
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mDefaultConfig:Landroid/service/notification/ZenModeConfig;

    invoke-static {p0}, Lcom/android/server/notification/ZenModeHelper;->getNotificationPolicy(Landroid/service/notification/ZenModeConfig;)Landroid/app/NotificationManager$Policy;

    move-result-object p0

    :goto_0
    monitor-exit v0

    return-object p0

    .line 1873
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getNotificationPolicyFromImplicitZenRule(Landroid/os/UserHandle;Ljava/lang/String;)Landroid/app/NotificationManager$Policy;
    .locals 3

    .line 727
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    monitor-enter v0

    .line 728
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->getConfigLocked(Landroid/os/UserHandle;)Landroid/service/notification/ZenModeConfig;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    .line 730
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 732
    :cond_0
    iget-object v2, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-static {p2}, Landroid/service/notification/ZenModeConfig;->implicitRuleId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/service/notification/ZenModeConfig$ZenRule;

    if-eqz p2, :cond_1

    .line 733
    iget-object p2, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    if-eqz p2, :cond_1

    .line 739
    invoke-virtual {v1, p2}, Landroid/service/notification/ZenModeConfig;->toNotificationPolicy(Landroid/service/notification/ZenPolicy;)Landroid/app/NotificationManager$Policy;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 741
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->getNotificationPolicy(Landroid/os/UserHandle;)Landroid/app/NotificationManager$Policy;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 743
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getPackageRuleCount(Landroid/os/UserHandle;Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 1057
    :cond_0
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1058
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->getConfigLocked(Landroid/os/UserHandle;)Landroid/service/notification/ZenModeConfig;

    move-result-object p0

    if-nez p0, :cond_1

    .line 1059
    monitor-exit v1

    return v0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 1061
    :cond_1
    iget-object p0, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 1062
    invoke-virtual {p1}, Landroid/service/notification/ZenModeConfig$ZenRule;->getPkg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1066
    :cond_3
    monitor-exit v1

    return v0

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getPackageUid(Ljava/lang/String;I)I
    .locals 3

    .line 2629
    const-string v0, "android"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p0, 0x3e8

    return p0

    .line 2632
    :cond_0
    invoke-static {p1, p2}, Lcom/android/server/notification/ZenModeHelper;->getPackageUserKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 2633
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mRulesUidCache:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 2635
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mRulesUidCache:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, p1, p2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2639
    :catch_0
    :cond_1
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mRulesUidCache:Landroid/util/ArrayMap;

    const/4 p1, -0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public final getPreviousRingerModeSetting()I
    .locals 2

    .line 2170
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "zen_mode_ringer_level"

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public final getServiceInfo(Landroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;
    .locals 5

    .line 1139
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1140
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1141
    iget-object p1, p0, Lcom/android/server/notification/ZenModeHelper;->mPm:Landroid/content/pm/PackageManager;

    const/16 v1, 0x84

    .line 1144
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 1141
    invoke-virtual {p1, v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1146
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 1147
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 1148
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 1149
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mServiceConfig:Lcom/android/server/notification/ManagedServices$Config;

    iget-object v3, v3, Lcom/android/server/notification/ManagedServices$Config;->bindPermission:Ljava/lang/String;

    iget-object v4, v2, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSuppressedEffects()J
    .locals 2

    .line 393
    iget-wide v0, p0, Lcom/android/server/notification/ZenModeHelper;->mSuppressedEffects:J

    return-wide v0
.end method

.method public getZenMode()I
    .locals 0

    .line 397
    iget p0, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    return p0
.end method

.method public getZenModeListenerInterruptionFilter()I
    .locals 0

    .line 383
    iget p0, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    invoke-static {p0}, Landroid/app/NotificationManager;->zenModeToInterruptionFilter(I)I

    move-result p0

    return p0
.end method

.method public final getZenModeSetting()I
    .locals 2

    .line 2159
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "zen_mode"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public hasDeviceEffectsApplier()Z
    .locals 1

    .line 323
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    monitor-enter v0

    .line 324
    :try_start_0
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mDeviceEffectsApplier:Landroid/service/notification/DeviceEffectsApplier;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 325
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public initZenMode()V
    .locals 8

    .line 297
    sget-boolean v0, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ZenModeHelper"

    const-string v1, "initZenMode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :cond_0
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    monitor-enter v1

    .line 302
    :try_start_0
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    const-string v5, "init"

    const/4 v6, 0x1

    const/16 v7, 0x3e8

    const/4 v4, 0x1

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/notification/ZenModeHelper;->updateConfigAndZenModeLocked(Landroid/service/notification/ZenModeConfig;ILjava/lang/String;ZI)V

    .line 304
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isCall(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 0

    .line 266
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mFiltering:Lcom/android/server/notification/ZenModeFiltering;

    invoke-virtual {p0, p1}, Lcom/android/server/notification/ZenModeFiltering;->isCall(Lcom/android/server/notification/NotificationRecord;)Z

    move-result p0

    return p0
.end method

.method public final synthetic lambda$updateImplicitZenRuleNameAndDescription$0(Landroid/service/notification/ZenModeConfig$ZenRule;)Ljava/lang/String;
    .locals 2

    .line 776
    :try_start_0
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mPm:Landroid/content/pm/PackageManager;

    iget-object p1, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    .line 777
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, p0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 781
    const-string p1, "ZenModeHelper"

    const-string v0, "Package not found when updating implicit zen rule name"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public final loadConfigForUser(ILjava/lang/String;)V
    .locals 9

    .line 361
    iget v0, p0, Lcom/android/server/notification/ZenModeHelper;->mUser:I

    if-eq v0, p1, :cond_5

    if-gez p1, :cond_0

    goto/16 :goto_2

    .line 362
    :cond_0
    iput p1, p0, Lcom/android/server/notification/ZenModeHelper;->mUser:I

    .line 363
    sget-boolean v0, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v1, "ZenModeHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " u="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    :cond_1
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    monitor-enter v1

    .line 366
    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 367
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v2}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v2

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 369
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_4

    if-eqz v0, :cond_3

    .line 371
    const-string v0, "ZenModeHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " generating default config for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    :cond_3
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mDefaultConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v0}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v2

    .line 373
    iput p1, v2, Landroid/service/notification/ZenModeConfig;->user:I

    :cond_4
    move-object v4, v2

    .line 375
    iget-object p1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    monitor-enter p1

    const/4 v6, 0x2

    const/16 v8, 0x3e8

    const/4 v5, 0x0

    move-object v3, p0

    move-object v7, p2

    .line 376
    :try_start_1
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/notification/ZenModeHelper;->setConfigLocked(Landroid/service/notification/ZenModeConfig;Landroid/content/ComponentName;ILjava/lang/String;I)Z

    .line 378
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 379
    invoke-virtual {v3}, Lcom/android/server/notification/ZenModeHelper;->cleanUpZenRules()V

    return-void

    :catchall_1
    move-exception v0

    move-object p0, v0

    .line 378
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    .line 369
    :goto_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    :cond_5
    :goto_2
    return-void
.end method

.method public matchesCallFilter(Landroid/os/UserHandle;Landroid/os/Bundle;Lcom/android/server/notification/ValidateNotificationPeople;IFI)Z
    .locals 11

    .line 258
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    monitor-enter v1

    .line 259
    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    invoke-static/range {v2 .. v10}, Lcom/android/server/notification/ZenModeFiltering;->matchesCallFilter(Landroid/content/Context;ILandroid/app/NotificationManager$Policy;Landroid/os/UserHandle;Landroid/os/Bundle;Lcom/android/server/notification/ValidateNotificationPeople;IFI)Z

    move-result p0

    monitor-exit v1

    return p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 262
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final maybePreserveRemovedRule(Landroid/service/notification/ZenModeConfig;Landroid/service/notification/ZenModeConfig$ZenRule;I)V
    .locals 1

    const/4 v0, 0x4

    if-ne p3, v0, :cond_0

    .line 873
    invoke-virtual {p2}, Landroid/service/notification/ZenModeConfig$ZenRule;->isUserModified()Z

    move-result p3

    if-eqz p3, :cond_0

    const-string p3, "android"

    iget-object v0, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    .line 874
    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 875
    invoke-static {p2}, Landroid/service/notification/ZenModeConfig;->deletedRuleKey(Landroid/service/notification/ZenModeConfig$ZenRule;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 877
    invoke-virtual {p2}, Landroid/service/notification/ZenModeConfig$ZenRule;->copy()Landroid/service/notification/ZenModeConfig$ZenRule;

    move-result-object p2

    .line 878
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mClock:Ljava/time/Clock;

    invoke-static {p0}, Ljava/time/Instant;->now(Ljava/time/Clock;)Ljava/time/Instant;

    move-result-object p0

    iput-object p0, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->deletionInstant:Ljava/time/Instant;

    const/4 p0, 0x0

    .line 880
    iput-object p0, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    .line 881
    invoke-virtual {p2}, Landroid/service/notification/ZenModeConfig$ZenRule;->resetConditionOverride()V

    .line 883
    iget-object p0, p1, Landroid/service/notification/ZenModeConfig;->deletedRules:Landroid/util/ArrayMap;

    invoke-virtual {p0, p3, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final maybeRestoreRemovedRule(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;Landroid/service/notification/ZenModeConfig$ZenRule;Landroid/app/AutomaticZenRule;I)Landroid/service/notification/ZenModeConfig$ZenRule;
    .locals 9

    .line 488
    invoke-static {p3}, Landroid/service/notification/ZenModeConfig;->deletedRuleKey(Landroid/service/notification/ZenModeConfig$ZenRule;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 494
    :cond_0
    iget-object v1, p1, Landroid/service/notification/ZenModeConfig;->deletedRules:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/service/notification/ZenModeConfig$ZenRule;

    if-nez v6, :cond_1

    goto :goto_0

    .line 501
    :cond_1
    iget-object v1, p1, Landroid/service/notification/ZenModeConfig;->deletedRules:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 502
    iput-object v0, v6, Landroid/service/notification/ZenModeConfig$ZenRule;->deletionInstant:Ljava/time/Instant;

    const/4 v0, 0x4

    if-eq p5, v0, :cond_2

    goto :goto_0

    .line 508
    :cond_2
    iget-object v0, v6, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    invoke-static {v0, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, v6, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    .line 509
    invoke-virtual {p4}, Landroid/app/AutomaticZenRule;->getOwner()Landroid/content/ComponentName;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v8, 0x0

    move-object v2, p0

    move-object v5, p1

    move-object v3, p2

    move-object v4, p4

    move v7, p5

    .line 518
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/notification/ZenModeHelper;->populateZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;Landroid/service/notification/ZenModeConfig;Landroid/service/notification/ZenModeConfig$ZenRule;IZ)Z

    return-object v6

    :cond_4
    :goto_0
    return-object p3
.end method

.method public final newImplicitZenRule(Ljava/lang/String;)Landroid/service/notification/ZenModeConfig$ZenRule;
    .locals 3

    .line 751
    new-instance v0, Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-direct {v0}, Landroid/service/notification/ZenModeConfig$ZenRule;-><init>()V

    .line 752
    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->implicitRuleId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    .line 753
    iput-object p1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    .line 754
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mClock:Ljava/time/Clock;

    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->creationTime:J

    .line 755
    invoke-virtual {p0, v0}, Lcom/android/server/notification/ZenModeHelper;->updateImplicitZenRuleNameAndDescription(Landroid/service/notification/ZenModeConfig$ZenRule;)V

    const/4 p0, 0x0

    .line 756
    iput p0, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->type:I

    const/4 p0, 0x0

    .line 757
    iput-object p0, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    .line 758
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    const-string v2, "condition"

    .line 759
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "android"

    .line 760
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "implicit"

    .line 761
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 762
    invoke-virtual {v1, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 763
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    iput-object p1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    const/4 p1, 0x1

    .line 764
    iput-boolean p1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    .line 765
    iput-object p0, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    .line 766
    iput-object p0, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->configurationActivity:Landroid/content/ComponentName;

    return-object v0
.end method

.method public onSystemReady()V
    .locals 2

    .line 308
    sget-boolean v0, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ZenModeHelper"

    const-string/jumbo v1, "onSystemReady"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    :cond_0
    const-class v0, Landroid/media/AudioManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManagerInternal;

    iput-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mAudioManager:Landroid/media/AudioManagerInternal;

    if-eqz v0, :cond_1

    .line 311
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mRingerModeDelegate:Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;

    invoke-virtual {v0, v1}, Landroid/media/AudioManagerInternal;->setRingerModeDelegate(Landroid/media/AudioManagerInternal$RingerModeDelegate;)V

    .line 313
    :cond_1
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mPm:Landroid/content/pm/PackageManager;

    .line 314
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mHandler:Lcom/android/server/notification/ZenModeHelper$H;

    invoke-static {v0}, Lcom/android/server/notification/ZenModeHelper$H;->-$$Nest$mpostMetricsTimer(Lcom/android/server/notification/ZenModeHelper$H;)V

    .line 315
    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeHelper;->cleanUpZenRules()V

    const/4 v0, 0x1

    .line 316
    iput-boolean v0, p0, Lcom/android/server/notification/ZenModeHelper;->mIsSystemServicesReady:Z

    return-void
.end method

.method public onUserRemoved(I)V
    .locals 3

    if-gez p1, :cond_0

    return-void

    .line 350
    :cond_0
    sget-boolean v0, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "ZenModeHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUserRemoved u="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    :cond_1
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    monitor-enter v0

    .line 352
    :try_start_0
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 353
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onUserSwitched(I)V
    .locals 1

    .line 345
    const-string/jumbo v0, "onUserSwitched"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/notification/ZenModeHelper;->loadConfigForUser(ILjava/lang/String;)V

    return-void
.end method

.method public final populateZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;Landroid/service/notification/ZenModeConfig;Landroid/service/notification/ZenModeConfig$ZenRule;IZ)Z
    .locals 11

    move/from16 v6, p5

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz p6, :cond_0

    .line 1198
    invoke-static {}, Landroid/service/notification/ZenModeConfig;->newRuleId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p4, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    .line 1199
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mClock:Ljava/time/Clock;

    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v3

    iput-wide v3, p4, Landroid/service/notification/ZenModeConfig$ZenRule;->creationTime:J

    .line 1200
    invoke-virtual {p2}, Landroid/app/AutomaticZenRule;->getOwner()Landroid/content/ComponentName;

    move-result-object v1

    iput-object v1, p4, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    .line 1201
    iput-object p1, p4, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    move v1, v7

    goto :goto_0

    :cond_0
    move v1, v8

    :goto_0
    const/4 v3, 0x5

    const/4 v4, 0x3

    if-eq v6, v3, :cond_1

    if-ne v6, v4, :cond_2

    .line 1206
    :cond_1
    iget-object v3, p4, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    const-string v5, "android"

    .line 1208
    invoke-static {v3, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p4, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    .line 1209
    invoke-virtual {p2}, Landroid/app/AutomaticZenRule;->getOwner()Landroid/content/ComponentName;

    move-result-object v5

    invoke-static {v3, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1210
    invoke-virtual {p2}, Landroid/app/AutomaticZenRule;->getOwner()Landroid/content/ComponentName;

    move-result-object v1

    iput-object v1, p4, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    move v1, v7

    .line 1215
    :cond_2
    invoke-virtual {p2}, Landroid/app/AutomaticZenRule;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_4

    if-nez p6, :cond_3

    iget-boolean v3, p4, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    if-eqz v3, :cond_4

    .line 1218
    :cond_3
    iput v6, p4, Landroid/service/notification/ZenModeConfig$ZenRule;->disabledOrigin:I

    goto :goto_1

    .line 1219
    :cond_4
    invoke-virtual {p2}, Landroid/app/AutomaticZenRule;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1221
    iput v8, p4, Landroid/service/notification/ZenModeConfig$ZenRule;->disabledOrigin:I

    .line 1225
    :cond_5
    :goto_1
    iget-object v3, p4, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-virtual {p2}, Landroid/app/AutomaticZenRule;->getConditionId()Landroid/net/Uri;

    move-result-object v5

    invoke-static {v3, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 1226
    invoke-virtual {p2}, Landroid/app/AutomaticZenRule;->getConditionId()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p4, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    move v1, v7

    .line 1230
    :cond_6
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    .line 1231
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v5, "android.hardware.type.watch"

    invoke-virtual {v3, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    if-nez p6, :cond_7

    if-ne v6, v4, :cond_7

    .line 1233
    iget-boolean v3, p4, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    .line 1236
    invoke-virtual {p2}, Landroid/app/AutomaticZenRule;->isEnabled()Z

    move-result v5

    if-ne v3, v5, :cond_7

    iget-object v3, p4, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    if-eqz v3, :cond_7

    iget-object v5, p4, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    if-eqz v5, :cond_7

    iget-object v5, v5, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    .line 1239
    invoke-virtual {v3, v5}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_2

    :cond_7
    const/4 v3, 0x0

    .line 1242
    iput-object v3, p4, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    .line 1245
    :goto_2
    iget-boolean v3, p4, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    invoke-virtual {p2}, Landroid/app/AutomaticZenRule;->isEnabled()Z

    move-result v5

    if-eq v3, v5, :cond_8

    .line 1246
    invoke-virtual {p2}, Landroid/app/AutomaticZenRule;->isEnabled()Z

    move-result v1

    iput-boolean v1, p4, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    .line 1247
    invoke-virtual {p4}, Landroid/service/notification/ZenModeConfig$ZenRule;->resetConditionOverride()V

    move v1, v7

    .line 1250
    :cond_8
    iget-object v3, p4, Landroid/service/notification/ZenModeConfig$ZenRule;->configurationActivity:Landroid/content/ComponentName;

    invoke-virtual {p2}, Landroid/app/AutomaticZenRule;->getConfigurationActivity()Landroid/content/ComponentName;

    move-result-object v5

    invoke-static {v3, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 1251
    invoke-virtual {p2}, Landroid/app/AutomaticZenRule;->getConfigurationActivity()Landroid/content/ComponentName;

    move-result-object v1

    iput-object v1, p4, Landroid/service/notification/ZenModeConfig$ZenRule;->configurationActivity:Landroid/content/ComponentName;

    move v1, v7

    .line 1254
    :cond_9
    iget-boolean v3, p4, Landroid/service/notification/ZenModeConfig$ZenRule;->allowManualInvocation:Z

    invoke-virtual {p2}, Landroid/app/AutomaticZenRule;->isManualInvocationAllowed()Z

    move-result v5

    if-eq v3, v5, :cond_a

    .line 1255
    invoke-virtual {p2}, Landroid/app/AutomaticZenRule;->isManualInvocationAllowed()Z

    move-result v1

    iput-boolean v1, p4, Landroid/service/notification/ZenModeConfig$ZenRule;->allowManualInvocation:Z

    move v1, v7

    .line 1265
    :cond_a
    iget-object v3, p4, Landroid/service/notification/ZenModeConfig$ZenRule;->triggerDescription:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/app/AutomaticZenRule;->getTriggerDescription()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 1266
    invoke-virtual {p2}, Landroid/app/AutomaticZenRule;->getTriggerDescription()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p4, Landroid/service/notification/ZenModeConfig$ZenRule;->triggerDescription:Ljava/lang/String;

    move v1, v7

    .line 1269
    :cond_b
    iget v3, p4, Landroid/service/notification/ZenModeConfig$ZenRule;->type:I

    invoke-virtual {p2}, Landroid/app/AutomaticZenRule;->getType()I

    move-result v5

    if-eq v3, v5, :cond_c

    .line 1270
    invoke-virtual {p2}, Landroid/app/AutomaticZenRule;->getType()I

    move-result v1

    iput v1, p4, Landroid/service/notification/ZenModeConfig$ZenRule;->type:I

    move v1, v7

    .line 1279
    :cond_c
    iget-object v3, p4, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    if-nez p6, :cond_d

    .line 1280
    invoke-static {v6}, Lcom/android/server/notification/ZenModeHelper;->doesOriginAlwaysUpdateValues(I)Z

    move-result v5

    if-nez v5, :cond_d

    iget v5, p4, Landroid/service/notification/ZenModeConfig$ZenRule;->userModifiedFields:I

    and-int/2addr v5, v7

    if-nez v5, :cond_e

    .line 1282
    :cond_d
    invoke-virtual {p2}, Landroid/app/AutomaticZenRule;->getName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p4, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    .line 1283
    invoke-static {v5, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    xor-int/2addr v5, v7

    or-int/2addr v1, v5

    :cond_e
    if-nez p6, :cond_10

    .line 1290
    invoke-static {v6}, Lcom/android/server/notification/ZenModeHelper;->doesOriginAlwaysUpdateValues(I)Z

    move-result v5

    if-nez v5, :cond_10

    .line 1291
    invoke-virtual {p4}, Landroid/service/notification/ZenModeConfig$ZenRule;->isUserModified()Z

    move-result v5

    if-nez v5, :cond_f

    goto :goto_3

    :cond_f
    return v1

    :cond_10
    :goto_3
    if-ne v6, v4, :cond_11

    move v4, v7

    goto :goto_4

    :cond_11
    move v4, v8

    :goto_4
    if-eqz v4, :cond_12

    .line 1301
    invoke-virtual {p2}, Landroid/app/AutomaticZenRule;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 1302
    iget v3, p4, Landroid/service/notification/ZenModeConfig$ZenRule;->userModifiedFields:I

    or-int/2addr v3, v7

    iput v3, p4, Landroid/service/notification/ZenModeConfig$ZenRule;->userModifiedFields:I

    .line 1305
    :cond_12
    invoke-virtual {p2}, Landroid/app/AutomaticZenRule;->getInterruptionFilter()I

    move-result v3

    .line 1304
    invoke-static {v3, v8}, Landroid/app/NotificationManager;->zenModeFromInterruptionFilter(II)I

    move-result v3

    .line 1306
    iget v5, p4, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    if-eq v5, v3, :cond_14

    .line 1307
    iput v3, p4, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    if-eqz v4, :cond_13

    .line 1309
    iget v1, p4, Landroid/service/notification/ZenModeConfig$ZenRule;->userModifiedFields:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p4, Landroid/service/notification/ZenModeConfig$ZenRule;->userModifiedFields:I

    :cond_13
    move v1, v7

    .line 1315
    :cond_14
    iget-object v3, p4, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/app/AutomaticZenRule;->getIconResId()I

    move-result v5

    invoke-virtual {p0, v3, v5}, Lcom/android/server/notification/ZenModeHelper;->drawableResIdToResName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 1316
    iget-object v5, p4, Landroid/service/notification/ZenModeConfig$ZenRule;->iconResName:Ljava/lang/String;

    invoke-static {v5, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    const/4 v9, 0x4

    if-nez v5, :cond_16

    .line 1317
    iput-object v3, p4, Landroid/service/notification/ZenModeConfig$ZenRule;->iconResName:Ljava/lang/String;

    if-eqz v4, :cond_15

    .line 1319
    iget v1, p4, Landroid/service/notification/ZenModeConfig$ZenRule;->userModifiedFields:I

    or-int/2addr v1, v9

    iput v1, p4, Landroid/service/notification/ZenModeConfig$ZenRule;->userModifiedFields:I

    :cond_15
    move v10, v7

    goto :goto_5

    :cond_16
    move v10, v1

    .line 1326
    :goto_5
    invoke-virtual {p2}, Landroid/app/AutomaticZenRule;->getZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object v3

    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    move/from16 v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/notification/ZenModeHelper;->updatePolicy(Landroid/service/notification/ZenModeConfig;Landroid/service/notification/ZenModeConfig$ZenRule;Landroid/service/notification/ZenPolicy;ZZ)Z

    move-result v0

    or-int/2addr v0, v10

    .line 1329
    invoke-virtual {p2}, Landroid/app/AutomaticZenRule;->getDeviceEffects()Landroid/service/notification/ZenDeviceEffects;

    move-result-object v1

    if-ne v6, v9, :cond_17

    goto :goto_6

    :cond_17
    move v7, v8

    :goto_6
    invoke-static {p4, v1, v7, v4}, Lcom/android/server/notification/ZenModeHelper;->updateZenDeviceEffects(Landroid/service/notification/ZenModeConfig$ZenRule;Landroid/service/notification/ZenDeviceEffects;ZZ)Z

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public pullRules(Ljava/util/List;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 2560
    iget-object v2, v0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2561
    :try_start_0
    iget-object v3, v0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_2

    .line 2563
    iget-object v6, v0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    .line 2564
    iget-object v6, v0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/service/notification/ZenModeConfig;

    .line 2567
    invoke-virtual {v6}, Landroid/service/notification/ZenModeConfig;->isManualActive()Z

    move-result v9

    iget-boolean v10, v6, Landroid/service/notification/ZenModeConfig;->hasPriorityChannels:Z

    const-string v12, ""

    .line 2572
    invoke-virtual {v6}, Landroid/service/notification/ZenModeConfig;->getZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object v7

    invoke-virtual {v7}, Landroid/service/notification/ZenPolicy;->toProto()[B

    move-result-object v14

    const/16 v17, 0x0

    const/16 v18, -0x1

    const/16 v7, 0x2764

    const/4 v11, -0x1

    const/16 v13, 0x3e8

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 2565
    invoke-static/range {v7 .. v18}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIZZILjava/lang/String;I[BIIII)Landroid/util/StatsEvent;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2577
    invoke-virtual {v6}, Landroid/service/notification/ZenModeConfig;->isManualActive()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2578
    iget-object v7, v6, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    const/4 v9, 0x1

    invoke-virtual {v0, v8, v7, v9, v1}, Lcom/android/server/notification/ZenModeHelper;->ruleToProtoLocked(ILandroid/service/notification/ZenModeConfig$ZenRule;ZLjava/util/List;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_3

    .line 2580
    :cond_0
    :goto_1
    iget-object v6, v6, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 2581
    invoke-virtual {v0, v8, v7, v4, v1}, Lcom/android/server/notification/ZenModeHelper;->ruleToProtoLocked(ILandroid/service/notification/ZenModeConfig$ZenRule;ZLjava/util/List;)V

    goto :goto_2

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2584
    :cond_2
    monitor-exit v2

    return-void

    :goto_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public readXml(Lcom/android/modules/utils/TypedXmlPullParser;ZILandroid/app/backup/BackupRestoreEventLogger;)Z
    .locals 9

    .line 1728
    invoke-static {p1, p4}, Landroid/service/notification/ZenModeConfig;->readXml(Lcom/android/modules/utils/TypedXmlPullParser;Landroid/app/backup/BackupRestoreEventLogger;)Landroid/service/notification/ZenModeConfig;

    move-result-object v1

    .line 1729
    const-string/jumbo p1, "readXml"

    if-eqz v1, :cond_e

    const/4 p4, 0x0

    if-eqz p2, :cond_0

    .line 1732
    iput p3, v1, Landroid/service/notification/ZenModeConfig;->user:I

    .line 1734
    iget-object p3, v1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    if-eqz p3, :cond_0

    .line 1735
    iput-object p4, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    .line 1744
    :cond_0
    iget-object p3, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    .line 1745
    invoke-static {}, Landroid/service/notification/ZenModeConfig;->getDefaultRuleIds()Ljava/util/List;

    move-result-object v0

    .line 1744
    invoke-virtual {p3, v0}, Landroid/util/ArrayMap;->containsAll(Ljava/util/Collection;)Z

    move-result p3

    .line 1747
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v2

    .line 1748
    iget-object v0, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    const/4 v4, 0x1

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 1749
    iget-object v0, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v5, v4

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/service/notification/ZenModeConfig$ZenRule;

    if-eqz p2, :cond_2

    .line 1752
    iput-object p4, v6, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    .line 1753
    invoke-virtual {v6}, Landroid/service/notification/ZenModeConfig$ZenRule;->resetConditionOverride()V

    .line 1754
    iput-wide v2, v6, Landroid/service/notification/ZenModeConfig$ZenRule;->creationTime:J

    .line 1757
    :cond_2
    iget-boolean v7, v6, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    xor-int/2addr v7, v4

    and-int/2addr v5, v7

    .line 1761
    iget v7, v1, Landroid/service/notification/ZenModeConfig;->version:I

    const/16 v8, 0xb

    if-ge v7, v8, :cond_4

    .line 1763
    invoke-virtual {v1}, Landroid/service/notification/ZenModeConfig;->getZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object v7

    .line 1764
    iget-object v8, v6, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    if-nez v8, :cond_3

    .line 1765
    iput-object v7, v6, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    goto :goto_1

    .line 1771
    :cond_3
    invoke-virtual {v7, v8}, Landroid/service/notification/ZenPolicy;->overwrittenWith(Landroid/service/notification/ZenPolicy;)Landroid/service/notification/ZenPolicy;

    move-result-object v7

    iput-object v7, v6, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    .line 1775
    :cond_4
    :goto_1
    iget v7, v1, Landroid/service/notification/ZenModeConfig;->version:I

    const/16 v8, 0xc

    if-ge v7, v8, :cond_1

    .line 1778
    iget-object v7, v6, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    invoke-static {v7}, Landroid/service/notification/ZenModeConfig;->isImplicitRuleId(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1779
    iput-object p4, v6, Landroid/service/notification/ZenModeConfig$ZenRule;->iconResName:Ljava/lang/String;

    goto :goto_0

    :cond_5
    move v5, v4

    :cond_6
    if-nez p3, :cond_9

    if-eqz v5, :cond_9

    if-nez p2, :cond_7

    .line 1785
    iget p3, v1, Landroid/service/notification/ZenModeConfig;->version:I

    const/16 p4, 0x8

    if-ge p3, p4, :cond_9

    .line 1794
    :cond_7
    new-instance p3, Landroid/util/ArrayMap;

    invoke-direct {p3}, Landroid/util/ArrayMap;-><init>()V

    iput-object p3, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    .line 1795
    iget-object p3, p0, Lcom/android/server/notification/ZenModeHelper;->mDefaultConfig:Landroid/service/notification/ZenModeConfig;

    iget-object p3, p3, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {p3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_8

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 1796
    iget-object v0, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    iget-object v2, p4, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    invoke-virtual {p4}, Landroid/service/notification/ZenModeConfig$ZenRule;->copy()Landroid/service/notification/ZenModeConfig$ZenRule;

    move-result-object p4

    invoke-virtual {v0, v2, p4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1798
    :cond_8
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", reset to default rules"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1802
    :cond_9
    iget-object p3, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-static {p3, v1}, Landroid/service/notification/SystemZenRules;->maybeUpgradeRules(Landroid/content/Context;Landroid/service/notification/ZenModeConfig;)V

    if-eqz p2, :cond_a

    .line 1807
    iget-object p3, v1, Landroid/service/notification/ZenModeConfig;->deletedRules:Landroid/util/ArrayMap;

    invoke-virtual {p3}, Landroid/util/ArrayMap;->clear()V

    .line 1810
    :cond_a
    iget-object p3, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    if-eqz p3, :cond_b

    .line 1811
    const-string p4, "EVENTS_DEFAULT_RULE"

    invoke-virtual {p3, p4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/service/notification/ZenModeConfig$ZenRule;

    if-eqz p3, :cond_b

    .line 1813
    iget-boolean p3, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    if-nez p3, :cond_b

    .line 1814
    iget-object p3, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    const-string p4, "EVENTS_DEFAULT_RULE"

    invoke-virtual {p3, p4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1818
    :cond_b
    sget-boolean p3, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz p3, :cond_c

    const-string p3, "ZenModeHelper"

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1819
    :cond_c
    iget-object p3, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    monitor-enter p3

    if-eqz p2, :cond_d

    const/4 v4, 0x6

    :cond_d
    move v3, v4

    const/16 v5, 0x3e8

    const/4 v2, 0x0

    move-object v0, p0

    move-object v4, p1

    .line 1820
    :try_start_0
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/notification/ZenModeHelper;->setConfigLocked(Landroid/service/notification/ZenModeConfig;Landroid/content/ComponentName;ILjava/lang/String;I)Z

    move-result p0

    monitor-exit p3

    return p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 1823
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public recordCaller(Lcom/android/server/notification/NotificationRecord;)V
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mFiltering:Lcom/android/server/notification/ZenModeFiltering;

    invoke-virtual {p0, p1}, Lcom/android/server/notification/ZenModeFiltering;->recordCall(Lcom/android/server/notification/NotificationRecord;)V

    return-void
.end method

.method public removeAutomaticZenRule(Landroid/os/UserHandle;Ljava/lang/String;ILjava/lang/String;I)Z
    .locals 9

    .line 804
    const-string/jumbo v0, "removeAutomaticZenRule"

    invoke-static {v0, p3}, Lcom/android/server/notification/ZenModeHelper;->checkManageRuleOrigin(Ljava/lang/String;I)V

    .line 806
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    monitor-enter v1

    .line 807
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->getConfigLocked(Landroid/os/UserHandle;)Landroid/service/notification/ZenModeConfig;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 808
    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_0

    .line 809
    :cond_0
    invoke-virtual {p1}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v3

    .line 810
    iget-object v2, v3, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/notification/ZenModeConfig$ZenRule;

    if-nez v2, :cond_1

    .line 811
    monitor-exit v1

    return v0

    .line 812
    :cond_1
    invoke-virtual {p0, v2, p5}, Lcom/android/server/notification/ZenModeHelper;->canManageAutomaticZenRule(Landroid/service/notification/ZenModeConfig$ZenRule;I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 813
    iget-object v0, v3, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 814
    invoke-virtual {p0, v3, v2, p3}, Lcom/android/server/notification/ZenModeHelper;->maybePreserveRemovedRule(Landroid/service/notification/ZenModeConfig;Landroid/service/notification/ZenModeConfig$ZenRule;I)V

    .line 815
    invoke-virtual {v2}, Landroid/service/notification/ZenModeConfig$ZenRule;->getPkg()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v0, "android"

    .line 816
    invoke-virtual {v2}, Landroid/service/notification/ZenModeConfig$ZenRule;->getPkg()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 817
    iget-object v0, v3, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 818
    invoke-virtual {v4}, Landroid/service/notification/ZenModeConfig$ZenRule;->getPkg()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 819
    invoke-virtual {v4}, Landroid/service/notification/ZenModeConfig$ZenRule;->getPkg()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Landroid/service/notification/ZenModeConfig$ZenRule;->getPkg()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 823
    :cond_3
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mRulesUidCache:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/service/notification/ZenModeConfig$ZenRule;->getPkg()Ljava/lang/String;

    move-result-object v4

    iget v5, v3, Landroid/service/notification/ZenModeConfig;->user:I

    invoke-static {v4, v5}, Lcom/android/server/notification/ZenModeHelper;->getPackageUserKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 825
    :cond_4
    sget-boolean v0, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz v0, :cond_5

    const-string v0, "ZenModeHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "removeZenRule zenRule="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " reason="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    :cond_5
    iget p1, p1, Landroid/service/notification/ZenModeConfig;->user:I

    .line 831
    invoke-virtual {v2}, Landroid/service/notification/ZenModeConfig$ZenRule;->getPkg()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x3

    .line 830
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/android/server/notification/ZenModeHelper;->dispatchOnAutomaticRuleStatusChanged(ILjava/lang/String;Ljava/lang/String;I)V

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v2, p0

    move v4, p3

    move-object v5, p4

    move v8, p5

    .line 832
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/notification/ZenModeHelper;->setConfigLocked(Landroid/service/notification/ZenModeConfig;ILjava/lang/String;Landroid/content/ComponentName;ZI)Z

    move-result p0

    monitor-exit v1

    return p0

    .line 827
    :cond_6
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Cannot delete rules not owned by your condition provider"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 833
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public removeAutomaticZenRules(Landroid/os/UserHandle;Ljava/lang/String;ILjava/lang/String;I)Z
    .locals 9

    .line 838
    const-string/jumbo v0, "removeAutomaticZenRules"

    invoke-static {v0, p3}, Lcom/android/server/notification/ZenModeHelper;->checkManageRuleOrigin(Ljava/lang/String;I)V

    .line 840
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    monitor-enter v1

    .line 841
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->getConfigLocked(Landroid/os/UserHandle;)Landroid/service/notification/ZenModeConfig;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    .line 842
    monitor-exit v1

    return p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_2

    .line 843
    :cond_0
    invoke-virtual {p1}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v3

    .line 844
    iget-object p1, v3, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_2

    .line 845
    iget-object v0, v3, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 846
    invoke-virtual {v0}, Landroid/service/notification/ZenModeConfig$ZenRule;->getPkg()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 847
    invoke-virtual {p0, v0, p5}, Lcom/android/server/notification/ZenModeHelper;->canManageAutomaticZenRule(Landroid/service/notification/ZenModeConfig$ZenRule;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 848
    iget-object v2, v3, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 849
    invoke-virtual {p0, v3, v0, p3}, Lcom/android/server/notification/ZenModeHelper;->maybePreserveRemovedRule(Landroid/service/notification/ZenModeConfig;Landroid/service/notification/ZenModeConfig$ZenRule;I)V

    :cond_1
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x5

    if-ne p3, p1, :cond_4

    .line 855
    iget-object p1, v3, Landroid/service/notification/ZenModeConfig;->deletedRules:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_1
    if-ltz p1, :cond_4

    .line 856
    iget-object v0, v3, Landroid/service/notification/ZenModeConfig;->deletedRules:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 857
    invoke-virtual {v0}, Landroid/service/notification/ZenModeConfig$ZenRule;->getPkg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 858
    iget-object v0, v3, Landroid/service/notification/ZenModeConfig;->deletedRules:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    :cond_3
    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_4
    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v2, p0

    move v4, p3

    move-object v5, p4

    move v8, p5

    .line 862
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/notification/ZenModeHelper;->setConfigLocked(Landroid/service/notification/ZenModeConfig;ILjava/lang/String;Landroid/content/ComponentName;ZI)Z

    move-result p0

    monitor-exit v1

    return p0

    .line 863
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final ruleToProtoLocked(ILandroid/service/notification/ZenModeConfig$ZenRule;ZLjava/util/List;)V
    .locals 16

    move-object/from16 v0, p2

    .line 2591
    iget-object v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    const-string v2, ""

    if-nez v1, :cond_0

    move-object v1, v2

    .line 2592
    :cond_0
    invoke-static {}, Landroid/service/notification/ZenModeConfig;->getDefaultRuleIds()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    move-object v1, v2

    .line 2597
    :cond_1
    invoke-virtual {v0}, Landroid/service/notification/ZenModeConfig$ZenRule;->getPkg()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/service/notification/ZenModeConfig$ZenRule;->getPkg()Ljava/lang/String;

    move-result-object v2

    .line 2598
    :goto_0
    iget-object v3, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabler:Ljava/lang/String;

    if-eqz v3, :cond_3

    move-object v2, v3

    .line 2602
    :cond_3
    iget v3, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->type:I

    if-eqz p3, :cond_4

    .line 2605
    const-string v1, "MANUAL_RULE"

    const/16 v3, 0x3e7

    :cond_4
    move-object v9, v1

    move v15, v3

    const/4 v1, 0x0

    .line 2609
    new-array v1, v1, [B

    .line 2610
    iget-object v3, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    if-eqz v3, :cond_5

    .line 2611
    invoke-virtual {v3}, Landroid/service/notification/ZenPolicy;->toProto()[B

    move-result-object v1

    :cond_5
    move-object v11, v1

    .line 2613
    iget-boolean v6, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    iget v8, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    move-object/from16 v1, p0

    move/from16 v5, p1

    .line 2619
    invoke-virtual {v1, v2, v5}, Lcom/android/server/notification/ZenModeHelper;->getPackageUid(Ljava/lang/String;I)I

    move-result v10

    iget v12, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->userModifiedFields:I

    iget v13, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicyUserModifiedFields:I

    iget v14, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenDeviceEffectsUserModifiedFields:I

    const/16 v4, 0x2764

    const/4 v7, 0x0

    .line 2613
    invoke-static/range {v4 .. v15}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIZZILjava/lang/String;I[BIIII)Landroid/util/StatsEvent;

    move-result-object v0

    move-object/from16 v1, p4

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public scheduleActivationBroadcast(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 3

    const-wide/32 v0, 0x1265fc51

    .line 1586
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    .line 1585
    invoke-static {v0, v1, p1, v2}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p4, :cond_0

    const/4 p4, 0x4

    goto :goto_0

    :cond_0
    const/4 p4, 0x5

    .line 1587
    :goto_0
    invoke-virtual {p0, p2, p1, p3, p4}, Lcom/android/server/notification/ZenModeHelper;->dispatchOnAutomaticRuleStatusChanged(ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    :cond_1
    const/4 p4, -0x1

    .line 1591
    invoke-virtual {p0, p2, p1, p3, p4}, Lcom/android/server/notification/ZenModeHelper;->dispatchOnAutomaticRuleStatusChanged(ILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public scheduleEnabledBroadcast(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 0

    if-eqz p4, :cond_0

    const/4 p4, 0x1

    goto :goto_0

    :cond_0
    const/4 p4, 0x2

    .line 1598
    :goto_0
    invoke-virtual {p0, p2, p1, p3, p4}, Lcom/android/server/notification/ZenModeHelper;->dispatchOnAutomaticRuleStatusChanged(ILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public setAutomaticZenRuleState(Landroid/os/UserHandle;Ljava/lang/String;Landroid/service/notification/Condition;II)V
    .locals 9

    .line 910
    const-string/jumbo v0, "setAutomaticZenRuleState(String id)"

    invoke-static {v0, p4}, Lcom/android/server/notification/ZenModeHelper;->checkSetRuleStateOrigin(Ljava/lang/String;I)V

    .line 912
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    monitor-enter v1

    .line 913
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->getConfigLocked(Landroid/os/UserHandle;)Landroid/service/notification/ZenModeConfig;

    move-result-object p1

    if-nez p1, :cond_0

    .line 914
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_0

    .line 916
    :cond_0
    invoke-virtual {p1}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v3

    .line 917
    iget-object p1, v3, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/service/notification/ZenModeConfig$ZenRule;

    if-eqz p1, :cond_1

    .line 918
    invoke-virtual {p0, p1, p5}, Lcom/android/server/notification/ZenModeHelper;->canManageAutomaticZenRule(Landroid/service/notification/ZenModeConfig$ZenRule;I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 919
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setAzrState: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v2, p0

    move-object v5, p3

    move v6, p4

    move v8, p5

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/notification/ZenModeHelper;->setAutomaticZenRuleStateLocked(Landroid/service/notification/ZenModeConfig;Ljava/util/List;Landroid/service/notification/Condition;ILjava/lang/String;I)V

    .line 922
    :cond_1
    monitor-exit v1

    return-void

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setAutomaticZenRuleStateFromConditionProvider(Landroid/os/UserHandle;Landroid/net/Uri;Landroid/service/notification/Condition;II)V
    .locals 9

    .line 927
    const-string/jumbo v0, "setAutomaticZenRuleStateFromConditionProvider"

    invoke-static {v0, p4}, Lcom/android/server/notification/ZenModeHelper;->checkSetRuleStateOrigin(Ljava/lang/String;I)V

    .line 929
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    monitor-enter v1

    .line 930
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->getConfigLocked(Landroid/os/UserHandle;)Landroid/service/notification/ZenModeConfig;

    move-result-object p1

    if-nez p1, :cond_0

    .line 931
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    .line 932
    :cond_0
    invoke-virtual {p1}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v3

    .line 934
    invoke-static {v3, p2, p3}, Lcom/android/server/notification/ZenModeHelper;->findMatchingRules(Landroid/service/notification/ZenModeConfig;Landroid/net/Uri;Landroid/service/notification/Condition;)Ljava/util/List;

    move-result-object v4

    .line 935
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_2

    .line 936
    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-virtual {p0, v0, p5}, Lcom/android/server/notification/ZenModeHelper;->canManageAutomaticZenRule(Landroid/service/notification/ZenModeConfig$ZenRule;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 937
    invoke-interface {v4, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_1
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 941
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setAzrStateFromCps: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v2, p0

    move-object v5, p3

    move v6, p4

    move v8, p5

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/notification/ZenModeHelper;->setAutomaticZenRuleStateLocked(Landroid/service/notification/ZenModeConfig;Ljava/util/List;Landroid/service/notification/Condition;ILjava/lang/String;I)V

    .line 943
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final setAutomaticZenRuleStateLocked(Landroid/service/notification/ZenModeConfig;Ljava/util/List;Landroid/service/notification/Condition;ILjava/lang/String;I)V
    .locals 7

    if-eqz p2, :cond_1

    .line 949
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 957
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 958
    invoke-static {v0, p3, p4}, Lcom/android/server/notification/ZenModeHelper;->applyConditionAndReconsiderOverride(Landroid/service/notification/ZenModeConfig$ZenRule;Landroid/service/notification/Condition;I)V

    .line 959
    iget-object v3, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    move-object v1, p0

    move-object v2, p1

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/notification/ZenModeHelper;->setConfigLocked(Landroid/service/notification/ZenModeConfig;Landroid/content/ComponentName;ILjava/lang/String;I)Z

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public setConfig(Landroid/service/notification/ZenModeConfig;Landroid/content/ComponentName;ILjava/lang/String;I)V
    .locals 2

    .line 2049
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2050
    :try_start_0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/notification/ZenModeHelper;->setConfigLocked(Landroid/service/notification/ZenModeConfig;Landroid/content/ComponentName;ILjava/lang/String;I)Z

    .line 2051
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final setConfigLocked(Landroid/service/notification/ZenModeConfig;ILjava/lang/String;Landroid/content/ComponentName;ZI)Z
    .locals 11

    .line 2058
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    const/4 v9, 0x0

    if-eqz p1, :cond_5

    .line 2060
    :try_start_0
    invoke-virtual {p1}, Landroid/service/notification/ZenModeConfig;->isValid()Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_1

    .line 2064
    :cond_0
    iget v2, p1, Landroid/service/notification/ZenModeConfig;->user:I

    iget v3, p0, Lcom/android/server/notification/ZenModeHelper;->mUser:I

    const/4 v10, 0x1

    if-eq v2, v3, :cond_2

    .line 2066
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2067
    :try_start_1
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    iget v3, p1, Landroid/service/notification/ZenModeConfig;->user:I

    invoke-virtual {v0, v3, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2068
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2069
    :try_start_2
    sget-boolean v0, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "ZenModeHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setConfigLocked: store config for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/service/notification/ZenModeConfig;->user:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_3

    :catch_0
    move-exception v0

    goto/16 :goto_2

    .line 2094
    :cond_1
    :goto_0
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v10

    :catchall_1
    move-exception v0

    .line 2068
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0

    .line 2073
    :cond_2
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConditions:Lcom/android/server/notification/ZenModeConditions;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3, v9}, Lcom/android/server/notification/ZenModeConditions;->evaluateConfig(Landroid/service/notification/ZenModeConfig;Landroid/content/ComponentName;Z)V

    .line 2075
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2076
    :try_start_5
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    iget v4, p1, Landroid/service/notification/ZenModeConfig;->user:I

    invoke-virtual {v3, v4, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2077
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 2078
    :try_start_6
    sget-boolean v2, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz v2, :cond_3

    const-string v2, "ZenModeHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setConfigLocked reason="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2, v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2079
    :cond_3
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    move-object v5, p1

    move v1, p2

    move-object v2, p3

    move-object v3, p4

    move/from16 v6, p6

    invoke-static/range {v1 .. v6}, Lcom/android/server/notification/ZenLog;->traceConfig(ILjava/lang/String;Landroid/content/ComponentName;Landroid/service/notification/ZenModeConfig;Landroid/service/notification/ZenModeConfig;I)V

    .line 2082
    invoke-static {p1}, Lcom/android/server/notification/ZenModeHelper;->getNotificationPolicy(Landroid/service/notification/ZenModeConfig;)Landroid/app/NotificationManager$Policy;

    move-result-object v1

    .line 2083
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-static {v2}, Lcom/android/server/notification/ZenModeHelper;->getNotificationPolicy(Landroid/service/notification/ZenModeConfig;)Landroid/app/NotificationManager$Policy;

    move-result-object v2

    invoke-static {v2, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 2085
    invoke-virtual {p0, v1}, Lcom/android/server/notification/ZenModeHelper;->dispatchOnPolicyChanged(Landroid/app/NotificationManager$Policy;)V

    :cond_4
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move/from16 v4, p5

    move/from16 v5, p6

    .line 2087
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/notification/ZenModeHelper;->updateConfigAndZenModeLocked(Landroid/service/notification/ZenModeConfig;ILjava/lang/String;ZI)V

    .line 2088
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConditions:Lcom/android/server/notification/ZenModeConditions;

    invoke-virtual {v0, p1, p4, v10}, Lcom/android/server/notification/ZenModeConditions;->evaluateConfig(Landroid/service/notification/ZenModeConfig;Landroid/content/ComponentName;Z)V
    :try_end_6
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2094
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v10

    :catchall_2
    move-exception v0

    .line 2077
    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw v0

    .line 2061
    :cond_5
    :goto_1
    const-string v0, "ZenModeHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid config in setConfigLocked; "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 2094
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v9

    .line 2091
    :goto_2
    :try_start_9
    const-string v1, "ZenModeHelper"

    const-string v2, "Invalid rule in config"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 2094
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v9

    :goto_3
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2095
    throw v0
.end method

.method public final setConfigLocked(Landroid/service/notification/ZenModeConfig;Landroid/content/ComponentName;ILjava/lang/String;I)Z
    .locals 7

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v2, p3

    move-object v3, p4

    move v6, p5

    .line 2043
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/notification/ZenModeHelper;->setConfigLocked(Landroid/service/notification/ZenModeConfig;ILjava/lang/String;Landroid/content/ComponentName;ZI)Z

    move-result p0

    return p0
.end method

.method public setDeviceEffectsApplier(Landroid/service/notification/DeviceEffectsApplier;)V
    .locals 2

    .line 335
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    monitor-enter v0

    .line 336
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mDeviceEffectsApplier:Landroid/service/notification/DeviceEffectsApplier;

    if-nez v1, :cond_0

    .line 339
    iput-object p1, p0, Lcom/android/server/notification/ZenModeHelper;->mDeviceEffectsApplier:Landroid/service/notification/DeviceEffectsApplier;

    .line 340
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 341
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->applyConsolidatedDeviceEffects(I)V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 337
    :cond_0
    :try_start_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Already set up a DeviceEffectsApplier!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 340
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public setManualZenMode(Landroid/os/UserHandle;ILandroid/net/Uri;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 9

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move/from16 v8, p7

    .line 1605
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/notification/ZenModeHelper;->setManualZenMode(Landroid/os/UserHandle;ILandroid/net/Uri;ILjava/lang/String;Ljava/lang/String;ZI)V

    return-void
.end method

.method public final setManualZenMode(Landroid/os/UserHandle;ILandroid/net/Uri;ILjava/lang/String;Ljava/lang/String;ZI)V
    .locals 7

    .line 1613
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1614
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->getConfigLocked(Landroid/os/UserHandle;)Landroid/service/notification/ZenModeConfig;

    move-result-object p1

    if-nez p1, :cond_0

    .line 1615
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_4

    .line 1617
    :cond_0
    invoke-static {p2}, Landroid/provider/Settings$Global;->isValidZenMode(I)Z

    move-result v0

    if-nez v0, :cond_1

    monitor-exit v1

    return-void

    .line 1618
    :cond_1
    sget-boolean v0, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "ZenModeHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setManualZenMode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/provider/Settings$Global;->zenModeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " conditionId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " setRingerMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1621
    :cond_2
    invoke-virtual {p1}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object p1

    .line 1623
    iget-object v0, p1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iput-object p6, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabler:Ljava/lang/String;

    if-eqz p3, :cond_3

    goto :goto_0

    .line 1624
    :cond_3
    sget-object p3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    :goto_0
    iput-object p3, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    .line 1625
    const-string p3, "android"

    iput-object p3, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    .line 1626
    iput p2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    .line 1627
    new-instance p3, Landroid/service/notification/Condition;

    iget-object p6, p1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object p6, p6, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    const-string v2, ""

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez p2, :cond_4

    move v5, v4

    goto :goto_1

    :cond_4
    move v5, v3

    :goto_1
    const/4 v6, 0x3

    if-ne p4, v6, :cond_5

    goto :goto_2

    :cond_5
    move v3, v4

    .line 1629
    :goto_2
    invoke-direct {p3, p6, v2, v5, v3}, Landroid/service/notification/Condition;-><init>(Landroid/net/Uri;Ljava/lang/String;II)V

    iput-object p3, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    if-nez p2, :cond_7

    if-eq p4, v6, :cond_7

    .line 1633
    iget-object p2, p1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_6
    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 1634
    invoke-virtual {p3}, Landroid/service/notification/ZenModeConfig$ZenRule;->isActive()Z

    move-result p6

    if-eqz p6, :cond_6

    const/4 p6, 0x2

    .line 1635
    invoke-virtual {p3, p6}, Landroid/service/notification/ZenModeConfig$ZenRule;->setConditionOverride(I)V

    goto :goto_3

    :cond_7
    move p3, p4

    move-object p4, p5

    const/4 p5, 0x0

    move-object p2, p1

    move p6, p7

    move p7, p8

    move-object p1, p0

    .line 1658
    invoke-virtual/range {p1 .. p7}, Lcom/android/server/notification/ZenModeHelper;->setConfigLocked(Landroid/service/notification/ZenModeConfig;ILjava/lang/String;Landroid/content/ComponentName;ZI)Z

    .line 1659
    monitor-exit v1

    return-void

    :goto_4
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setManualZenRuleDeviceEffects(Landroid/os/UserHandle;Landroid/service/notification/ZenDeviceEffects;ILjava/lang/String;I)V
    .locals 9

    .line 1668
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1669
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->getConfigLocked(Landroid/os/UserHandle;)Landroid/service/notification/ZenModeConfig;

    move-result-object p1

    if-nez p1, :cond_0

    .line 1670
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_0

    .line 1672
    :cond_0
    sget-boolean v0, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "ZenModeHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateManualRule "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " callingUid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1675
    :cond_1
    invoke-virtual {p1}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v3

    .line 1677
    iget-object p1, v3, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    const-string v0, "android"

    iput-object v0, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    .line 1678
    iput-object p2, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->zenDeviceEffects:Landroid/service/notification/ZenDeviceEffects;

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v2, p0

    move v4, p3

    move-object v5, p4

    move v8, p5

    .line 1679
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/notification/ZenModeHelper;->setConfigLocked(Landroid/service/notification/ZenModeConfig;ILjava/lang/String;Landroid/content/ComponentName;ZI)Z

    .line 1680
    monitor-exit v1

    return-void

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setNotificationPolicy(Landroid/os/UserHandle;Landroid/app/NotificationManager$Policy;II)V
    .locals 8

    .line 1886
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    monitor-enter v1

    if-nez p2, :cond_0

    .line 1887
    :try_start_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_0

    .line 1888
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->getConfigLocked(Landroid/os/UserHandle;)Landroid/service/notification/ZenModeConfig;

    move-result-object p1

    if-nez p1, :cond_1

    .line 1889
    monitor-exit v1

    return-void

    .line 1891
    :cond_1
    invoke-virtual {p1}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v3

    .line 1912
    invoke-virtual {v3, p2}, Landroid/service/notification/ZenModeConfig;->applyNotificationPolicy(Landroid/app/NotificationManager$Policy;)V

    .line 1914
    const-string/jumbo v6, "setNotificationPolicy"

    const/4 v4, 0x0

    move-object v2, p0

    move v5, p3

    move v7, p4

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/notification/ZenModeHelper;->setConfigLocked(Landroid/service/notification/ZenModeConfig;Landroid/content/ComponentName;ILjava/lang/String;I)Z

    .line 1915
    monitor-exit v1

    return-void

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final setPreviousRingerModeSetting(Ljava/lang/Integer;)V
    .locals 1

    .line 2175
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    .line 2176
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2177
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    .line 2175
    :goto_0
    const-string/jumbo v0, "zen_mode_ringer_level"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public setPriorityOnlyDndExemptPackages([Ljava/lang/String;)V
    .locals 0

    .line 357
    iput-object p1, p0, Lcom/android/server/notification/ZenModeHelper;->mPriorityOnlyDndExemptPackages:[Ljava/lang/String;

    return-void
.end method

.method public setSuppressedEffects(J)V
    .locals 2

    .line 387
    iget-wide v0, p0, Lcom/android/server/notification/ZenModeHelper;->mSuppressedEffects:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    return-void

    .line 388
    :cond_0
    iput-wide p1, p0, Lcom/android/server/notification/ZenModeHelper;->mSuppressedEffects:J

    .line 389
    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeHelper;->applyRestrictions()V

    return-void
.end method

.method public setZenModeSetting(I)V
    .locals 2

    .line 2164
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "zen_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2165
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p1, -0x1

    invoke-static {p0, v1, p1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const-string/jumbo p1, "updated setting"

    invoke-static {p0, p1}, Lcom/android/server/notification/ZenLog;->traceSetZenMode(ILjava/lang/String;)V

    return-void
.end method

.method public shouldIntercept(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 3

    .line 278
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    monitor-enter v0

    .line 279
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mFiltering:Lcom/android/server/notification/ZenModeFiltering;

    iget v2, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v1, v2, p0, p1}, Lcom/android/server/notification/ZenModeFiltering;->shouldIntercept(ILandroid/app/NotificationManager$Policy;Lcom/android/server/notification/NotificationRecord;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 280
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 252
    const-string p0, "ZenModeHelper"

    return-object p0
.end method

.method public final updateAndApplyConsolidatedPolicyAndDeviceEffects(ILjava/lang/String;)V
    .locals 8

    .line 2273
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2274
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    .line 2275
    :cond_0
    new-instance v1, Landroid/service/notification/ZenPolicy;

    invoke-direct {v1}, Landroid/service/notification/ZenPolicy;-><init>()V

    .line 2276
    new-instance v2, Landroid/service/notification/ZenDeviceEffects$Builder;

    invoke-direct {v2}, Landroid/service/notification/ZenDeviceEffects$Builder;-><init>()V

    .line 2277
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v3}, Landroid/service/notification/ZenModeConfig;->isManualActive()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    .line 2278
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v5, v3, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-virtual {p0, v3, v1, v5, v4}, Lcom/android/server/notification/ZenModeHelper;->applyCustomPolicy(Landroid/service/notification/ZenModeConfig;Landroid/service/notification/ZenPolicy;Landroid/service/notification/ZenModeConfig$ZenRule;Z)V

    .line 2279
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v3, v3, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v3, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->zenDeviceEffects:Landroid/service/notification/ZenDeviceEffects;

    invoke-virtual {v2, v3}, Landroid/service/notification/ZenDeviceEffects$Builder;->add(Landroid/service/notification/ZenDeviceEffects;)Landroid/service/notification/ZenDeviceEffects$Builder;

    .line 2282
    :cond_1
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v3, v3, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 2283
    invoke-virtual {v5}, Landroid/service/notification/ZenModeConfig$ZenRule;->isActive()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2287
    iget v7, v5, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    if-eqz v7, :cond_3

    .line 2288
    iget-object v7, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {p0, v7, v1, v5, v6}, Lcom/android/server/notification/ZenModeHelper;->applyCustomPolicy(Landroid/service/notification/ZenModeConfig;Landroid/service/notification/ZenPolicy;Landroid/service/notification/ZenModeConfig$ZenRule;Z)V

    .line 2290
    :cond_3
    iget-object v5, v5, Landroid/service/notification/ZenModeConfig$ZenRule;->zenDeviceEffects:Landroid/service/notification/ZenDeviceEffects;

    invoke-virtual {v2, v5}, Landroid/service/notification/ZenDeviceEffects$Builder;->add(Landroid/service/notification/ZenDeviceEffects;)Landroid/service/notification/ZenDeviceEffects$Builder;

    goto :goto_0

    .line 2302
    :cond_4
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v3, v1}, Landroid/service/notification/ZenModeConfig;->toNotificationPolicy(Landroid/service/notification/ZenPolicy;)Landroid/app/NotificationManager$Policy;

    move-result-object v1

    .line 2303
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    invoke-static {v3, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 2304
    iput-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    .line 2305
    invoke-virtual {p0, v1}, Lcom/android/server/notification/ZenModeHelper;->dispatchOnConsolidatedPolicyChanged(Landroid/app/NotificationManager$Policy;)V

    .line 2306
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    invoke-static {v1, p2}, Lcom/android/server/notification/ZenLog;->traceSetConsolidatedZenPolicy(Landroid/app/NotificationManager$Policy;Ljava/lang/String;)V

    .line 2314
    :cond_5
    iget-object p2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object p2, p2, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move v1, v6

    :cond_6
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 2315
    invoke-virtual {v3}, Landroid/service/notification/ZenModeConfig$ZenRule;->isActive()Z

    move-result v5

    if-eqz v5, :cond_6

    iget v5, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->type:I

    const/4 v7, 0x4

    if-ne v5, v7, :cond_6

    .line 2317
    iget-object v1, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->zenDeviceEffects:Landroid/service/notification/ZenDeviceEffects;

    if-eqz v1, :cond_7

    .line 2318
    invoke-virtual {v1}, Landroid/service/notification/ZenDeviceEffects;->shouldDisplayGrayscale()Z

    move-result v1

    if-eqz v1, :cond_7

    move p2, v4

    goto :goto_2

    :cond_7
    move v1, v4

    goto :goto_1

    :cond_8
    move v4, v1

    move p2, v6

    :goto_2
    if-eqz v4, :cond_9

    if-nez p2, :cond_9

    .line 2325
    invoke-virtual {v2, v6}, Landroid/service/notification/ZenDeviceEffects$Builder;->setShouldDisplayGrayscale(Z)Landroid/service/notification/ZenDeviceEffects$Builder;

    .line 2329
    :cond_9
    invoke-virtual {v2}, Landroid/service/notification/ZenDeviceEffects$Builder;->build()Landroid/service/notification/ZenDeviceEffects;

    move-result-object p2

    .line 2330
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedDeviceEffects:Landroid/service/notification/ZenDeviceEffects;

    invoke-virtual {p2, v1}, Landroid/service/notification/ZenDeviceEffects;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 2331
    iput-object p2, p0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedDeviceEffects:Landroid/service/notification/ZenDeviceEffects;

    .line 2332
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mHandler:Lcom/android/server/notification/ZenModeHelper$H;

    invoke-static {p0, p1}, Lcom/android/server/notification/ZenModeHelper$H;->-$$Nest$mpostApplyDeviceEffects(Lcom/android/server/notification/ZenModeHelper$H;I)V

    .line 2334
    :cond_a
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public updateAutomaticZenRule(Landroid/os/UserHandle;Ljava/lang/String;Landroid/app/AutomaticZenRule;ILjava/lang/String;I)Z
    .locals 11

    .line 552
    const-string/jumbo v3, "updateAutomaticZenRule"

    invoke-static {v3, p4}, Lcom/android/server/notification/ZenModeHelper;->checkManageRuleOrigin(Ljava/lang/String;I)V

    if-eqz p2, :cond_4

    .line 556
    iget-object v7, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    monitor-enter v7

    .line 557
    :try_start_0
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/notification/ZenModeHelper;->getConfigLocked(Landroid/os/UserHandle;)Landroid/service/notification/ZenModeConfig;

    move-result-object v3

    if-nez v3, :cond_0

    const/4 v0, 0x0

    .line 558
    monitor-exit v7

    return v0

    :catchall_0
    move-exception v0

    goto/16 :goto_1

    .line 559
    :cond_0
    sget-boolean v4, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz v4, :cond_1

    .line 560
    const-string v4, "ZenModeHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateAutomaticZenRule zenRule="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " reason="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v8, p5

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    move-object/from16 v8, p5

    .line 563
    :goto_0
    iget-object v4, v3, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v4, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v9, v4

    check-cast v9, Landroid/service/notification/ZenModeConfig$ZenRule;

    if-eqz v9, :cond_3

    move/from16 v10, p6

    .line 564
    invoke-virtual {p0, v9, v10}, Lcom/android/server/notification/ZenModeHelper;->canManageAutomaticZenRule(Landroid/service/notification/ZenModeConfig$ZenRule;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 568
    invoke-virtual {v3}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v3

    .line 569
    iget-object v4, v3, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v4, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 571
    iget-object v1, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p3

    move v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/notification/ZenModeHelper;->populateZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;Landroid/service/notification/ZenModeConfig;Landroid/service/notification/ZenModeConfig$ZenRule;IZ)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v0, 0x1

    .line 576
    monitor-exit v7

    return v0

    .line 580
    :cond_2
    invoke-static {v3, v9, p3}, Lcom/android/server/notification/ZenModeHelper;->maybeReplaceDefaultRule(Landroid/service/notification/ZenModeConfig;Landroid/service/notification/ZenModeConfig$ZenRule;Landroid/app/AutomaticZenRule;)V

    .line 582
    iget-object v4, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    const/4 v5, 0x1

    move-object v0, p0

    move v2, p4

    move-object v1, v3

    move-object v3, v8

    move v6, v10

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/notification/ZenModeHelper;->setConfigLocked(Landroid/service/notification/ZenModeConfig;ILjava/lang/String;Landroid/content/ComponentName;ZI)Z

    move-result v0

    monitor-exit v7

    return v0

    .line 565
    :cond_3
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Cannot update rules not owned by your condition provider"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 584
    :goto_1
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 554
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "ruleId cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final updateConfigAndZenModeLocked(Landroid/service/notification/ZenModeConfig;ILjava/lang/String;ZI)V
    .locals 9

    .line 2105
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mFlagResolver:Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$FlagResolver;

    sget-object v1, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$NotificationFlags;->LOG_DND_STATE_EVENTS:Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;

    invoke-interface {v0, v1}, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$FlagResolver;->isEnabled(Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;)Z

    move-result v0

    .line 2108
    new-instance v1, Lcom/android/server/notification/ZenModeEventLogger$ZenModeInfo;

    iget v2, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/notification/ZenModeEventLogger$ZenModeInfo;-><init>(ILandroid/service/notification/ZenModeConfig;Landroid/app/NotificationManager$Policy;)V

    .line 2110
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {p1, v2}, Landroid/service/notification/ZenModeConfig;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const/4 v2, 0x1

    if-eq p2, v2, :cond_2

    .line 2113
    iget-object v2, p1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 2114
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v4, v4, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    iget-object v5, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/notification/ZenModeConfig$ZenRule;

    if-eqz v4, :cond_0

    .line 2116
    iget-boolean v5, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    iget-boolean v6, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    if-eq v5, v6, :cond_1

    .line 2118
    invoke-virtual {v3}, Landroid/service/notification/ZenModeConfig$ZenRule;->getPkg()Ljava/lang/String;

    move-result-object v5

    iget v6, p1, Landroid/service/notification/ZenModeConfig;->user:I

    iget-object v7, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    iget-boolean v8, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    .line 2117
    invoke-virtual {p0, v5, v6, v7, v8}, Lcom/android/server/notification/ZenModeHelper;->scheduleEnabledBroadcast(Ljava/lang/String;ILjava/lang/String;Z)V

    .line 2120
    :cond_1
    invoke-virtual {v4}, Landroid/service/notification/ZenModeConfig$ZenRule;->isActive()Z

    move-result v4

    invoke-virtual {v3}, Landroid/service/notification/ZenModeConfig$ZenRule;->isActive()Z

    move-result v5

    if-eq v4, v5, :cond_0

    .line 2122
    invoke-virtual {v3}, Landroid/service/notification/ZenModeConfig$ZenRule;->getPkg()Ljava/lang/String;

    move-result-object v4

    iget v5, p1, Landroid/service/notification/ZenModeConfig;->user:I

    iget-object v6, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    invoke-virtual {v3}, Landroid/service/notification/ZenModeConfig$ZenRule;->isActive()Z

    move-result v3

    .line 2121
    invoke-virtual {p0, v4, v5, v6, v3}, Lcom/android/server/notification/ZenModeHelper;->scheduleActivationBroadcast(Ljava/lang/String;ILjava/lang/String;Z)V

    goto :goto_0

    .line 2130
    :cond_2
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mClock:Ljava/time/Clock;

    invoke-virtual {v2}, Ljava/time/Clock;->instant()Ljava/time/Instant;

    move-result-object v2

    .line 2131
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v3}, Landroid/service/notification/ZenModeConfig;->isManualActive()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p1}, Landroid/service/notification/ZenModeConfig;->isManualActive()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2132
    iget-object v3, p1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iput-object v2, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->lastActivation:Ljava/time/Instant;

    .line 2134
    :cond_3
    iget-object v3, p1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 2135
    iget-object v5, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v5, v5, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    iget-object v6, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 2136
    invoke-virtual {v4}, Landroid/service/notification/ZenModeConfig$ZenRule;->isActive()Z

    move-result v6

    if-eqz v6, :cond_4

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Landroid/service/notification/ZenModeConfig$ZenRule;->isActive()Z

    move-result v5

    if-nez v5, :cond_4

    .line 2137
    :cond_5
    iput-object v2, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->lastActivation:Ljava/time/Instant;

    goto :goto_1

    .line 2142
    :cond_6
    iput-object p1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 2143
    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeHelper;->dispatchOnConfigChanged()V

    .line 2144
    invoke-virtual {p0, p2, p3}, Lcom/android/server/notification/ZenModeHelper;->updateAndApplyConsolidatedPolicyAndDeviceEffects(ILjava/lang/String;)V

    .line 2146
    :cond_7
    invoke-virtual {p1}, Landroid/service/notification/ZenModeConfig;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    .line 2147
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "zen_mode_config_etag"

    invoke-static {v2, v3, p1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2148
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/notification/ZenModeHelper;->evaluateZenModeLocked(ILjava/lang/String;Z)V

    if-eqz v0, :cond_8

    .line 2151
    new-instance p1, Lcom/android/server/notification/ZenModeEventLogger$ZenModeInfo;

    iget p3, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    iget-object p4, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    invoke-direct {p1, p3, p4, v0}, Lcom/android/server/notification/ZenModeEventLogger$ZenModeInfo;-><init>(ILandroid/service/notification/ZenModeConfig;Landroid/app/NotificationManager$Policy;)V

    .line 2153
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mZenModeEventLogger:Lcom/android/server/notification/ZenModeEventLogger;

    invoke-virtual {p0, v1, p1, p5, p2}, Lcom/android/server/notification/ZenModeEventLogger;->maybeLogZenChange(Lcom/android/server/notification/ZenModeEventLogger$ZenModeInfo;Lcom/android/server/notification/ZenModeEventLogger$ZenModeInfo;II)V

    :cond_8
    return-void
.end method

.method public updateHasPriorityChannels(Landroid/os/UserHandle;Z)V
    .locals 8

    .line 1564
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1565
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->getConfigLocked(Landroid/os/UserHandle;)Landroid/service/notification/ZenModeConfig;

    move-result-object p1

    if-nez p1, :cond_0

    .line 1566
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_0

    .line 1569
    :cond_0
    iget-boolean v0, p1, Landroid/service/notification/ZenModeConfig;->hasPriorityChannels:Z

    if-ne v0, p2, :cond_1

    .line 1570
    monitor-exit v1

    return-void

    .line 1573
    :cond_1
    invoke-virtual {p1}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v3

    .line 1574
    iput-boolean p2, v3, Landroid/service/notification/ZenModeConfig;->hasPriorityChannels:Z

    .line 1577
    const-string/jumbo v6, "updateHasPriorityChannels"

    const/16 v7, 0x3e8

    const/4 v4, 0x0

    const/4 v5, 0x5

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/notification/ZenModeHelper;->setConfigLocked(Landroid/service/notification/ZenModeConfig;Landroid/content/ComponentName;ILjava/lang/String;I)Z

    .line 1579
    monitor-exit v1

    return-void

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final updateImplicitZenRuleNameAndDescription(Landroid/service/notification/ZenModeConfig$ZenRule;)V
    .locals 4

    .line 771
    iget-object v0, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->isImplicitRuleId(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 772
    iget-object v0, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 774
    new-instance v0, Lcom/android/server/notification/ZenModeHelper$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/server/notification/ZenModeHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/notification/ZenModeHelper;Landroid/service/notification/ZenModeConfig$ZenRule;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 787
    iget v1, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->userModifiedFields:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_0

    .line 789
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    const v2, 0x1040b18

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    .line 794
    :cond_0
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    const v1, 0x1040b19

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->triggerDescription:Ljava/lang/String;

    return-void

    .line 796
    :cond_1
    iget-object p0, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    if-nez p0, :cond_2

    .line 798
    const-string p0, "Unknown"

    iput-object p0, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    :cond_2
    return-void
.end method

.method public final updatePolicy(Landroid/service/notification/ZenModeConfig;Landroid/service/notification/ZenModeConfig$ZenRule;Landroid/service/notification/ZenPolicy;ZZ)Z
    .locals 1

    const/4 p1, 0x1

    if-nez p3, :cond_1

    if-eqz p5, :cond_0

    .line 1361
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mDefaultConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {p0}, Landroid/service/notification/ZenModeConfig;->getZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object p0

    .line 1362
    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->copy()Landroid/service/notification/ZenPolicy;

    move-result-object p0

    iput-object p0, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    return p1

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 1371
    :cond_1
    iget-object p5, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    if-eqz p5, :cond_2

    goto :goto_0

    .line 1373
    :cond_2
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mDefaultConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {p0}, Landroid/service/notification/ZenModeConfig;->getZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object p5

    .line 1384
    :goto_0
    invoke-virtual {p5, p3}, Landroid/service/notification/ZenPolicy;->overwrittenWith(Landroid/service/notification/ZenPolicy;)Landroid/service/notification/ZenPolicy;

    move-result-object p0

    .line 1385
    iput-object p0, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    if-eqz p4, :cond_14

    .line 1388
    iget p3, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicyUserModifiedFields:I

    .line 1389
    invoke-virtual {p5}, Landroid/service/notification/ZenPolicy;->getPriorityMessageSenders()I

    move-result p4

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityMessageSenders()I

    move-result v0

    if-eq p4, v0, :cond_3

    or-int/lit8 p3, p3, 0x1

    .line 1392
    :cond_3
    invoke-virtual {p5}, Landroid/service/notification/ZenPolicy;->getPriorityCallSenders()I

    move-result p4

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityCallSenders()I

    move-result v0

    if-eq p4, v0, :cond_4

    or-int/lit8 p3, p3, 0x2

    .line 1395
    :cond_4
    invoke-virtual {p5}, Landroid/service/notification/ZenPolicy;->getPriorityConversationSenders()I

    move-result p4

    .line 1396
    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityConversationSenders()I

    move-result v0

    if-eq p4, v0, :cond_5

    or-int/lit8 p3, p3, 0x4

    .line 1399
    :cond_5
    invoke-virtual {p5}, Landroid/service/notification/ZenPolicy;->getPriorityChannelsAllowed()I

    move-result p4

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityChannelsAllowed()I

    move-result v0

    if-eq p4, v0, :cond_6

    or-int/lit8 p3, p3, 0x8

    .line 1402
    :cond_6
    invoke-virtual {p5}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryReminders()I

    move-result p4

    .line 1403
    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryReminders()I

    move-result v0

    if-eq p4, v0, :cond_7

    or-int/lit8 p3, p3, 0x10

    .line 1406
    :cond_7
    invoke-virtual {p5}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryEvents()I

    move-result p4

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryEvents()I

    move-result v0

    if-eq p4, v0, :cond_8

    or-int/lit8 p3, p3, 0x20

    .line 1409
    :cond_8
    invoke-virtual {p5}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryRepeatCallers()I

    move-result p4

    .line 1410
    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryRepeatCallers()I

    move-result v0

    if-eq p4, v0, :cond_9

    or-int/lit8 p3, p3, 0x40

    .line 1413
    :cond_9
    invoke-virtual {p5}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryAlarms()I

    move-result p4

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryAlarms()I

    move-result v0

    if-eq p4, v0, :cond_a

    or-int/lit16 p3, p3, 0x80

    .line 1416
    :cond_a
    invoke-virtual {p5}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryMedia()I

    move-result p4

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryMedia()I

    move-result v0

    if-eq p4, v0, :cond_b

    or-int/lit16 p3, p3, 0x100

    .line 1419
    :cond_b
    invoke-virtual {p5}, Landroid/service/notification/ZenPolicy;->getPriorityCategorySystem()I

    move-result p4

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityCategorySystem()I

    move-result v0

    if-eq p4, v0, :cond_c

    or-int/lit16 p3, p3, 0x200

    .line 1423
    :cond_c
    invoke-virtual {p5}, Landroid/service/notification/ZenPolicy;->getVisualEffectFullScreenIntent()I

    move-result p4

    .line 1424
    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getVisualEffectFullScreenIntent()I

    move-result v0

    if-eq p4, v0, :cond_d

    or-int/lit16 p3, p3, 0x400

    .line 1427
    :cond_d
    invoke-virtual {p5}, Landroid/service/notification/ZenPolicy;->getVisualEffectLights()I

    move-result p4

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getVisualEffectLights()I

    move-result v0

    if-eq p4, v0, :cond_e

    or-int/lit16 p3, p3, 0x800

    .line 1430
    :cond_e
    invoke-virtual {p5}, Landroid/service/notification/ZenPolicy;->getVisualEffectPeek()I

    move-result p4

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getVisualEffectPeek()I

    move-result v0

    if-eq p4, v0, :cond_f

    or-int/lit16 p3, p3, 0x1000

    .line 1433
    :cond_f
    invoke-virtual {p5}, Landroid/service/notification/ZenPolicy;->getVisualEffectStatusBar()I

    move-result p4

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getVisualEffectStatusBar()I

    move-result v0

    if-eq p4, v0, :cond_10

    or-int/lit16 p3, p3, 0x2000

    .line 1436
    :cond_10
    invoke-virtual {p5}, Landroid/service/notification/ZenPolicy;->getVisualEffectBadge()I

    move-result p4

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getVisualEffectBadge()I

    move-result v0

    if-eq p4, v0, :cond_11

    or-int/lit16 p3, p3, 0x4000

    .line 1439
    :cond_11
    invoke-virtual {p5}, Landroid/service/notification/ZenPolicy;->getVisualEffectAmbient()I

    move-result p4

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getVisualEffectAmbient()I

    move-result v0

    if-eq p4, v0, :cond_12

    const p4, 0x8000

    or-int/2addr p3, p4

    .line 1442
    :cond_12
    invoke-virtual {p5}, Landroid/service/notification/ZenPolicy;->getVisualEffectNotificationList()I

    move-result p4

    .line 1443
    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getVisualEffectNotificationList()I

    move-result v0

    if-eq p4, v0, :cond_13

    const/high16 p4, 0x10000

    or-int/2addr p3, p4

    .line 1446
    :cond_13
    iput p3, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicyUserModifiedFields:I

    .line 1449
    :cond_14
    invoke-virtual {p0, p5}, Landroid/service/notification/ZenPolicy;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p0, p1

    return p0
.end method

.method public final updateRingerAndAudio(Z)V
    .locals 1

    .line 2204
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mAudioManager:Landroid/media/AudioManagerInternal;

    if-eqz v0, :cond_0

    .line 2205
    invoke-virtual {v0}, Landroid/media/AudioManagerInternal;->updateRingerModeAffectedStreamsInternal()V

    :cond_0
    if-eqz p1, :cond_1

    .line 2208
    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeHelper;->applyZenToRingerMode()V

    .line 2210
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeHelper;->applyRestrictions()V

    return-void
.end method

.method public updateZenRulesOnLocaleChange()V
    .locals 9

    .line 1098
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mDefaultConfig:Landroid/service/notification/ZenModeConfig;

    invoke-static {v0, v1}, Lcom/android/server/notification/ZenModeHelper;->updateRuleStringsForCurrentLocale(Landroid/content/Context;Landroid/service/notification/ZenModeConfig;)V

    .line 1099
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1100
    :try_start_0
    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v0}, Lcom/android/server/notification/ZenModeHelper;->getConfigLocked(Landroid/os/UserHandle;)Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1102
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_2

    .line 1105
    :cond_0
    invoke-virtual {v0}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v3

    .line 1107
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mDefaultConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v0, v0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 1108
    iget-object v5, v3, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    iget-object v6, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/service/notification/ZenModeConfig$ZenRule;

    if-eqz v5, :cond_1

    .line 1111
    iget v6, v5, Landroid/service/notification/ZenModeConfig$ZenRule;->userModifiedFields:I

    const/4 v7, 0x1

    and-int/2addr v6, v7

    if-nez v6, :cond_1

    iget-object v6, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    iget-object v8, v5, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    .line 1113
    invoke-virtual {v6, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1114
    sget-boolean v2, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 1115
    const-string v2, "ZenModeHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Locale change - updating default zen rule name from "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v5, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " to "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    :cond_2
    iget-object v2, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    iput-object v2, v5, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    move v2, v7

    goto :goto_0

    .line 1123
    :cond_3
    iget-object v0, v3, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 1124
    invoke-static {v4}, Landroid/service/notification/SystemZenRules;->isSystemOwnedRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1125
    iget-object v5, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-static {v5, v4}, Landroid/service/notification/SystemZenRules;->updateTriggerDescription(Landroid/content/Context;Landroid/service/notification/ZenModeConfig$ZenRule;)Z

    move-result v4

    or-int/2addr v2, v4

    goto :goto_1

    .line 1126
    :cond_5
    iget-object v5, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    invoke-static {v5}, Landroid/service/notification/ZenModeConfig;->isImplicitRuleId(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1127
    invoke-virtual {p0, v4}, Lcom/android/server/notification/ZenModeHelper;->updateImplicitZenRuleNameAndDescription(Landroid/service/notification/ZenModeConfig$ZenRule;)V

    goto :goto_1

    :cond_6
    if-eqz v2, :cond_7

    .line 1132
    const-string/jumbo v6, "updateZenRulesOnLocaleChange"

    const/16 v7, 0x3e8

    const/4 v4, 0x0

    const/4 v5, 0x5

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/notification/ZenModeHelper;->setConfigLocked(Landroid/service/notification/ZenModeConfig;Landroid/content/ComponentName;ILjava/lang/String;I)Z

    .line 1135
    :cond_7
    monitor-exit v1

    return-void

    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public writeXml(Lcom/android/modules/utils/TypedXmlSerializer;ZLjava/lang/Integer;ILandroid/app/backup/BackupRestoreEventLogger;)V
    .locals 8

    .line 1830
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1833
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v2, v1, :cond_1

    if-eqz p2, :cond_0

    .line 1835
    iget-object v5, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v5, p4, :cond_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 1839
    :cond_0
    :try_start_1
    iget-object v5, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v5, p1, p3, p2, p5}, Landroid/service/notification/ZenModeConfig;->writeXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/Integer;ZLandroid/app/backup/BackupRestoreEventLogger;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catch_0
    move-exception v5

    .line 1842
    :try_start_2
    const-string v6, "ZenModeHelper"

    const-string v7, "failed to write config"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    add-int/lit8 v4, v4, 0x1

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-eqz p5, :cond_2

    .line 1847
    const-string/jumbo p0, "notifications:zen_config"

    invoke-virtual {p5, p0, v3}, Landroid/app/backup/BackupRestoreEventLogger;->logItemsBackedUp(Ljava/lang/String;I)V

    if-lez v4, :cond_2

    .line 1849
    const-string/jumbo p0, "notifications:zen_config"

    const-string/jumbo p1, "notifications:invalid_xml_parsing"

    invoke-virtual {p5, p0, v4, p1}, Landroid/app/backup/BackupRestoreEventLogger;->logItemsBackupFailed(Ljava/lang/String;ILjava/lang/String;)V

    .line 1853
    :cond_2
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final zenRuleToAutomaticZenRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Landroid/app/AutomaticZenRule;
    .locals 3

    .line 1540
    new-instance v0, Landroid/app/AutomaticZenRule$Builder;

    iget-object v1, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    iget-object v2, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/app/AutomaticZenRule$Builder;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-boolean v1, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->allowManualInvocation:Z

    .line 1541
    invoke-virtual {v0, v1}, Landroid/app/AutomaticZenRule$Builder;->setManualInvocationAllowed(Z)Landroid/app/AutomaticZenRule$Builder;

    move-result-object v0

    iget-object v1, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    .line 1542
    invoke-virtual {v0, v1}, Landroid/app/AutomaticZenRule$Builder;->setPackage(Ljava/lang/String;)Landroid/app/AutomaticZenRule$Builder;

    move-result-object v0

    iget-wide v1, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->creationTime:J

    .line 1543
    invoke-virtual {v0, v1, v2}, Landroid/app/AutomaticZenRule$Builder;->setCreationTime(J)Landroid/app/AutomaticZenRule$Builder;

    move-result-object v0

    iget-object v1, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    iget-object v2, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->iconResName:Ljava/lang/String;

    .line 1544
    invoke-virtual {p0, v1, v2}, Lcom/android/server/notification/ZenModeHelper;->drawableResNameToResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/app/AutomaticZenRule$Builder;->setIconResId(I)Landroid/app/AutomaticZenRule$Builder;

    move-result-object p0

    iget v0, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->type:I

    .line 1545
    invoke-virtual {p0, v0}, Landroid/app/AutomaticZenRule$Builder;->setType(I)Landroid/app/AutomaticZenRule$Builder;

    move-result-object p0

    iget-object v0, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    .line 1546
    invoke-virtual {p0, v0}, Landroid/app/AutomaticZenRule$Builder;->setZenPolicy(Landroid/service/notification/ZenPolicy;)Landroid/app/AutomaticZenRule$Builder;

    move-result-object p0

    iget-object v0, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->zenDeviceEffects:Landroid/service/notification/ZenDeviceEffects;

    .line 1547
    invoke-virtual {p0, v0}, Landroid/app/AutomaticZenRule$Builder;->setDeviceEffects(Landroid/service/notification/ZenDeviceEffects;)Landroid/app/AutomaticZenRule$Builder;

    move-result-object p0

    iget-boolean v0, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    .line 1548
    invoke-virtual {p0, v0}, Landroid/app/AutomaticZenRule$Builder;->setEnabled(Z)Landroid/app/AutomaticZenRule$Builder;

    move-result-object p0

    iget v0, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    .line 1550
    invoke-static {v0}, Landroid/app/NotificationManager;->zenModeToInterruptionFilter(I)I

    move-result v0

    .line 1549
    invoke-virtual {p0, v0}, Landroid/app/AutomaticZenRule$Builder;->setInterruptionFilter(I)Landroid/app/AutomaticZenRule$Builder;

    move-result-object p0

    iget-object v0, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    .line 1551
    invoke-virtual {p0, v0}, Landroid/app/AutomaticZenRule$Builder;->setOwner(Landroid/content/ComponentName;)Landroid/app/AutomaticZenRule$Builder;

    move-result-object p0

    iget-object v0, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->configurationActivity:Landroid/content/ComponentName;

    .line 1552
    invoke-virtual {p0, v0}, Landroid/app/AutomaticZenRule$Builder;->setConfigurationActivity(Landroid/content/ComponentName;)Landroid/app/AutomaticZenRule$Builder;

    move-result-object p0

    iget-object p1, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->triggerDescription:Ljava/lang/String;

    .line 1553
    invoke-virtual {p0, p1}, Landroid/app/AutomaticZenRule$Builder;->setTriggerDescription(Ljava/lang/String;)Landroid/app/AutomaticZenRule$Builder;

    move-result-object p0

    .line 1554
    invoke-virtual {p0}, Landroid/app/AutomaticZenRule$Builder;->build()Landroid/app/AutomaticZenRule;

    move-result-object p0

    return-object p0
.end method
