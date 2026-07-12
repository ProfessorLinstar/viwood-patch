.class public Lcom/android/server/utils/FoldSettingProvider;
.super Ljava/lang/Object;
.source "FoldSettingProvider.java"


# static fields
.field public static final SETTING_VALUES:Ljava/util/Set;


# instance fields
.field public final mContentResolver:Landroid/content/ContentResolver;

.field public final mFoldLockSettingAvailabilityProvider:Lcom/android/internal/foldables/FoldLockSettingAvailabilityProvider;

.field public final mSettingsWrapper:Lcom/android/internal/util/SettingsWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 49
    const-string/jumbo v0, "selective_stay_awake_key"

    const-string/jumbo v1, "sleep_on_fold_key"

    const-string/jumbo v2, "stay_awake_on_fold_key"

    invoke-static {v2, v0, v1}, Ljava/util/Set;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/android/server/utils/FoldSettingProvider;->SETTING_VALUES:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/util/SettingsWrapper;Lcom/android/internal/foldables/FoldLockSettingAvailabilityProvider;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/utils/FoldSettingProvider;->mContentResolver:Landroid/content/ContentResolver;

    .line 60
    iput-object p2, p0, Lcom/android/server/utils/FoldSettingProvider;->mSettingsWrapper:Lcom/android/internal/util/SettingsWrapper;

    .line 61
    iput-object p3, p0, Lcom/android/server/utils/FoldSettingProvider;->mFoldLockSettingAvailabilityProvider:Lcom/android/internal/foldables/FoldLockSettingAvailabilityProvider;

    return-void
.end method


# virtual methods
.method public final getFoldSettingValue()Ljava/lang/String;
    .locals 4

    .line 86
    iget-object v0, p0, Lcom/android/server/utils/FoldSettingProvider;->mFoldLockSettingAvailabilityProvider:Lcom/android/internal/foldables/FoldLockSettingAvailabilityProvider;

    .line 87
    invoke-virtual {v0}, Lcom/android/internal/foldables/FoldLockSettingAvailabilityProvider;->isFoldLockBehaviorAvailable()Z

    move-result v0

    .line 88
    const-string/jumbo v1, "selective_stay_awake_key"

    if-nez v0, :cond_0

    return-object v1

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/android/server/utils/FoldSettingProvider;->mSettingsWrapper:Lcom/android/internal/util/SettingsWrapper;

    iget-object p0, p0, Lcom/android/server/utils/FoldSettingProvider;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "fold_lock_behavior_setting"

    const/4 v3, -0x2

    invoke-virtual {v0, p0, v2, v3}, Lcom/android/internal/util/SettingsWrapper;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move-object p0, v1

    .line 96
    :goto_0
    sget-object v0, Lcom/android/server/utils/FoldSettingProvider;->SETTING_VALUES:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 97
    const-string p0, "FoldSettingProvider"

    const-string v0, "getFoldSettingValue: Invalid setting value, returning default setting value"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_2
    return-object p0
.end method

.method public shouldSelectiveStayAwakeOnFold()Z
    .locals 1

    .line 75
    invoke-virtual {p0}, Lcom/android/server/utils/FoldSettingProvider;->getFoldSettingValue()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "selective_stay_awake_key"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public shouldSleepOnFold()Z
    .locals 1

    .line 82
    invoke-virtual {p0}, Lcom/android/server/utils/FoldSettingProvider;->getFoldSettingValue()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "sleep_on_fold_key"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public shouldStayAwakeOnFold()Z
    .locals 1

    .line 68
    invoke-virtual {p0}, Lcom/android/server/utils/FoldSettingProvider;->getFoldSettingValue()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "stay_awake_on_fold_key"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
