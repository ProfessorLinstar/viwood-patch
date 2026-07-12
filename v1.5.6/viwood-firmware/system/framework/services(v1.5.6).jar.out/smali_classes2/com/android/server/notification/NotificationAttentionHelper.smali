.class public final Lcom/android/server/notification/NotificationAttentionHelper;
.super Ljava/lang/Object;
.source "NotificationAttentionHelper.java"


# static fields
.field public static final DEBUG:Z

.field public static final DEBUG_INTERRUPTIVENESS:Z

.field static final NOTIFICATION_AVALANCHE_TRIGGER_EXTRAS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field static final NOTIFICATION_AVALANCHE_TRIGGER_INTENTS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field public mAttentionLight:Lcom/android/server/lights/LogicalLight;

.field public mAudioManager:Landroid/media/AudioManager;

.field public mCallNotificationToken:Landroid/os/Binder;

.field public mCallState:I

.field public final mContext:Landroid/content/Context;

.field public mCurrentWorkProfileId:I

.field public mDisableNotificationEffects:Z

.field public final mEnableNotificationAccessibilityEvents:Z

.field public final mFlagResolver:Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$FlagResolver;

.field public mHasLight:Z

.field public final mInCallNotificationAudioAttributes:Landroid/media/AudioAttributes;

.field public final mInCallNotificationUri:Landroid/net/Uri;

.field public final mInCallNotificationVolume:F

.field public mInCallStateOffHook:Z

.field public final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field public mIsAutomotive:Z

.field public mKeyguardManager:Landroid/app/KeyguardManager;

.field public mLights:Ljava/util/ArrayList;

.field public final mLock:Ljava/lang/Object;

.field public final mNMP:Lcom/android/server/notification/NotificationManagerPrivate;

.field public mNotificationCooldownApplyToAll:Z

.field public mNotificationCooldownEnabled:Z

.field public mNotificationCooldownForWorkEnabled:Z

.field public mNotificationCooldownVibrateUnlocked:Z

.field public mNotificationEffectsEnabledForAutomotive:Z

.field public mNotificationLight:Lcom/android/server/lights/LogicalLight;

.field public mNotificationPulseEnabled:Z

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public mScreenOn:Z

.field public final mSettingsObserver:Lcom/android/server/notification/NotificationAttentionHelper$SettingsObserver;

.field public mSoundNotificationKey:Ljava/lang/String;

.field public final mStrategy:Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;

.field public mSystemReady:Z

.field public final mTelephonyManager:Landroid/telephony/TelephonyManager;

.field public final mUm:Landroid/os/UserManager;

.field public final mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

.field public final mUseAttentionLight:Z

.field public mUserPresent:Z

.field public mVibrateNotificationKey:Ljava/lang/String;

.field public mVibratorHelper:Lcom/android/server/notification/VibratorHelper;

.field public final mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;


# direct methods
.method public static synthetic $r8$lambda$5Nu20XY6rJFYF_iVI639OcBJ3oY(Lcom/android/server/notification/NotificationAttentionHelper;Lcom/android/server/notification/NotificationRecord;Landroid/os/VibrationEffect;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/NotificationAttentionHelper;->lambda$playVibration$2(Lcom/android/server/notification/NotificationRecord;Landroid/os/VibrationEffect;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_Cy9buvrT-4h45p_F-2dQOykc8I(Lcom/android/server/notification/NotificationAttentionHelper;Lcom/android/server/notification/NotificationRecord;)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationAttentionHelper;->lambda$createPolitenessStrategy$0(Lcom/android/server/notification/NotificationRecord;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAudioManager(Lcom/android/server/notification/NotificationAttentionHelper;)Landroid/media/AudioManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mAudioManager:Landroid/media/AudioManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCallNotificationToken(Lcom/android/server/notification/NotificationAttentionHelper;)Landroid/os/Binder;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mCallNotificationToken:Landroid/os/Binder;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCallState(Lcom/android/server/notification/NotificationAttentionHelper;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mCallState:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/notification/NotificationAttentionHelper;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCurrentWorkProfileId(Lcom/android/server/notification/NotificationAttentionHelper;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mCurrentWorkProfileId:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmInCallNotificationAudioAttributes(Lcom/android/server/notification/NotificationAttentionHelper;)Landroid/media/AudioAttributes;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mInCallNotificationAudioAttributes:Landroid/media/AudioAttributes;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmInCallNotificationUri(Lcom/android/server/notification/NotificationAttentionHelper;)Landroid/net/Uri;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mInCallNotificationUri:Landroid/net/Uri;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmInCallNotificationVolume(Lcom/android/server/notification/NotificationAttentionHelper;)F
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mInCallNotificationVolume:F

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/notification/NotificationAttentionHelper;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNotificationCooldownApplyToAll(Lcom/android/server/notification/NotificationAttentionHelper;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mNotificationCooldownApplyToAll:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNotificationLight(Lcom/android/server/notification/NotificationAttentionHelper;)Lcom/android/server/lights/LogicalLight;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mNotificationLight:Lcom/android/server/lights/LogicalLight;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNotificationPulseEnabled(Lcom/android/server/notification/NotificationAttentionHelper;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mNotificationPulseEnabled:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmStrategy(Lcom/android/server/notification/NotificationAttentionHelper;)Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mStrategy:Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmCallNotificationToken(Lcom/android/server/notification/NotificationAttentionHelper;Landroid/os/Binder;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mCallNotificationToken:Landroid/os/Binder;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmCallState(Lcom/android/server/notification/NotificationAttentionHelper;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mCallState:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmInCallStateOffHook(Lcom/android/server/notification/NotificationAttentionHelper;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mInCallStateOffHook:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmNotificationCooldownApplyToAll(Lcom/android/server/notification/NotificationAttentionHelper;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mNotificationCooldownApplyToAll:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmNotificationCooldownEnabled(Lcom/android/server/notification/NotificationAttentionHelper;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mNotificationCooldownEnabled:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmNotificationCooldownForWorkEnabled(Lcom/android/server/notification/NotificationAttentionHelper;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mNotificationCooldownForWorkEnabled:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmNotificationPulseEnabled(Lcom/android/server/notification/NotificationAttentionHelper;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mNotificationPulseEnabled:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmScreenOn(Lcom/android/server/notification/NotificationAttentionHelper;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mScreenOn:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmUserPresent(Lcom/android/server/notification/NotificationAttentionHelper;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mUserPresent:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mloadUserSettings(Lcom/android/server/notification/NotificationAttentionHelper;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationAttentionHelper;->loadUserSettings()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smcallStateToString(I)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/notification/NotificationAttentionHelper;->callStateToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 6

    .line 99
    const-string v0, "NotifAttentionHelper"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/notification/NotificationAttentionHelper;->DEBUG:Z

    .line 100
    const-string v0, "debug.notification.interruptiveness"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/notification/NotificationAttentionHelper;->DEBUG_INTERRUPTIVENESS:Z

    .line 111
    const-string v0, "android.intent.action.AIRPLANE_MODE"

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    const-string v2, "android.intent.action.USER_SWITCHED"

    const-string v3, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    invoke-static {v0, v1, v2, v3}, Ljava/util/Set;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    sput-object v1, Lcom/android/server/notification/NotificationAttentionHelper;->NOTIFICATION_AVALANCHE_TRIGGER_INTENTS:Ljava/util/Set;

    .line 119
    new-instance v1, Landroid/util/Pair;

    .line 120
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string/jumbo v4, "state"

    invoke-direct {v1, v4, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v4, Landroid/util/Pair;

    const-string v5, "android.intent.extra.QUIET_MODE"

    .line 121
    invoke-direct {v4, v5, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 119
    invoke-static {v0, v1, v3, v4}, Ljava/util/Map;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/server/notification/NotificationAttentionHelper;->NOTIFICATION_AVALANCHE_TRIGGER_EXTRAS:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;Lcom/android/server/lights/LightsManager;Landroid/view/accessibility/AccessibilityManager;Landroid/content/pm/PackageManager;Landroid/os/UserManager;Lcom/android/server/notification/NotificationUsageStats;Lcom/android/server/notification/NotificationManagerPrivate;Lcom/android/server/notification/ZenModeHelper;Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$FlagResolver;)V
    .locals 3

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mLights:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 189
    iput-boolean v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mInCallStateOffHook:Z

    const/4 v1, 0x1

    .line 190
    iput-boolean v1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mScreenOn:Z

    .line 192
    iput-boolean v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mUserPresent:Z

    const/4 v2, 0x0

    .line 198
    iput-object v2, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mCallNotificationToken:Landroid/os/Binder;

    const/16 v2, -0x2710

    .line 207
    iput v2, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mCurrentWorkProfileId:I

    .line 1689
    new-instance v2, Lcom/android/server/notification/NotificationAttentionHelper$3;

    invoke-direct {v2, p0}, Lcom/android/server/notification/NotificationAttentionHelper$3;-><init>(Lcom/android/server/notification/NotificationAttentionHelper;)V

    iput-object v2, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 214
    iput-object p1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mContext:Landroid/content/Context;

    .line 215
    iput-object p2, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mLock:Ljava/lang/Object;

    .line 216
    iput-object p5, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 217
    const-class p2, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/TelephonyManager;

    iput-object p2, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 218
    iput-object p4, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 219
    iput-object p6, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mUm:Landroid/os/UserManager;

    .line 220
    iput-object p8, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mNMP:Lcom/android/server/notification/NotificationManagerPrivate;

    .line 221
    iput-object p7, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    .line 222
    iput-object p9, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    .line 223
    iput-object p10, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mFlagResolver:Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$FlagResolver;

    .line 225
    new-instance p2, Lcom/android/server/notification/VibratorHelper;

    invoke-direct {p2, p1}, Lcom/android/server/notification/VibratorHelper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mVibratorHelper:Lcom/android/server/notification/VibratorHelper;

    const/4 p2, 0x4

    .line 227
    invoke-virtual {p3, p2}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/LogicalLight;

    move-result-object p4

    iput-object p4, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mNotificationLight:Lcom/android/server/lights/LogicalLight;

    const/4 p4, 0x5

    .line 228
    invoke-virtual {p3, p4}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/LogicalLight;

    move-result-object p3

    iput-object p3, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mAttentionLight:Lcom/android/server/lights/LogicalLight;

    .line 230
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x1110289

    .line 231
    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p4

    iput-boolean p4, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mUseAttentionLight:Z

    const p4, 0x11101c8

    .line 233
    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p4

    iput-boolean p4, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mHasLight:Z

    const p4, 0x1110185

    .line 235
    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p4

    iput-boolean p4, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mEnableNotificationAccessibilityEvents:Z

    .line 242
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p4, "device_provisioned"

    invoke-static {p1, p4, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_0

    .line 244
    iput-boolean v1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mDisableNotificationEffects:Z

    .line 247
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "file://"

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p4, 0x1040290

    .line 248
    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 247
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mInCallNotificationUri:Landroid/net/Uri;

    .line 249
    new-instance p1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {p1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 250
    invoke-virtual {p1, p2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p1

    const/4 p2, 0x2

    .line 251
    invoke-virtual {p1, p2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p1

    .line 252
    invoke-virtual {p1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mInCallNotificationAudioAttributes:Landroid/media/AudioAttributes;

    const p1, 0x10500ee

    .line 253
    invoke-virtual {p3, p1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p1

    iput p1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mInCallNotificationVolume:F

    .line 256
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationAttentionHelper;->createPolitenessStrategy()Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mStrategy:Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;

    .line 261
    new-instance p1, Lcom/android/server/notification/NotificationAttentionHelper$SettingsObserver;

    invoke-direct {p1, p0}, Lcom/android/server/notification/NotificationAttentionHelper$SettingsObserver;-><init>(Lcom/android/server/notification/NotificationAttentionHelper;)V

    iput-object p1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mSettingsObserver:Lcom/android/server/notification/NotificationAttentionHelper$SettingsObserver;

    .line 262
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationAttentionHelper;->loadUserSettings()V

    return-void
.end method

.method public static callStateToString(I)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 1086
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CALL_STATE_UNKNOWN_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1085
    :cond_0
    const-string p0, "CALL_STATE_OFFHOOK"

    return-object p0

    .line 1084
    :cond_1
    const-string p0, "CALL_STATE_RINGING"

    return-object p0

    .line 1083
    :cond_2
    const-string p0, "CALL_STATE_IDLE"

    return-object p0
.end method


# virtual methods
.method public buzzBeepBlinkLocked(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationAttentionHelper$Signals;)I
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 427
    iget-boolean v3, v0, Lcom/android/server/notification/NotificationAttentionHelper;->mIsAutomotive:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    iget-boolean v3, v0, Lcom/android/server/notification/NotificationAttentionHelper;->mNotificationEffectsEnabledForAutomotive:Z

    if-nez v3, :cond_0

    return v4

    .line 435
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v5

    .line 437
    sget-boolean v3, Lcom/android/server/notification/NotificationAttentionHelper;->DEBUG:Z

    const-string v6, "NotifAttentionHelper"

    if-eqz v3, :cond_1

    .line 438
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "buzzBeepBlinkLocked "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    :cond_1
    iget-boolean v7, v0, Lcom/android/server/notification/NotificationAttentionHelper;->mIsAutomotive:Z

    const/4 v8, 0x3

    const/4 v11, 0x1

    if-eqz v7, :cond_3

    .line 444
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v7

    if-le v7, v8, :cond_2

    :goto_0
    move v7, v11

    goto :goto_1

    :cond_2
    move v7, v4

    goto :goto_1

    .line 445
    :cond_3
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v7

    if-lt v7, v8, :cond_2

    goto :goto_0

    :goto_1
    if-eqz v5, :cond_4

    .line 447
    iget-object v9, v0, Lcom/android/server/notification/NotificationAttentionHelper;->mSoundNotificationKey:Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    move v9, v11

    goto :goto_2

    :cond_4
    move v9, v4

    :goto_2
    if-eqz v5, :cond_5

    .line 448
    iget-object v10, v0, Lcom/android/server/notification/NotificationAttentionHelper;->mVibrateNotificationKey:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    move v10, v11

    goto :goto_3

    :cond_5
    move v10, v4

    .line 455
    :goto_3
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->isIntercepted()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 456
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getSuppressedVisualEffects()I

    move-result v12

    and-int/lit8 v12, v12, 0x20

    if-eqz v12, :cond_6

    move v12, v11

    goto :goto_4

    :cond_6
    move v12, v4

    .line 457
    :goto_4
    iget-boolean v13, v1, Lcom/android/server/notification/NotificationRecord;->isUpdate:Z

    if-nez v13, :cond_7

    .line 458
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v13

    if-le v13, v11, :cond_7

    if-nez v12, :cond_7

    .line 460
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/notification/NotificationAttentionHelper;->isNotificationForCurrentUser(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationAttentionHelper$Signals;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 461
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/notification/NotificationAttentionHelper;->sendAccessibilityEvent(Lcom/android/server/notification/NotificationRecord;)V

    move v12, v11

    goto :goto_5

    :cond_7
    move v12, v4

    :goto_5
    if-eqz v7, :cond_1d

    .line 465
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/notification/NotificationAttentionHelper;->isNotificationForCurrentUser(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationAttentionHelper$Signals;)Z

    move-result v14

    if-eqz v14, :cond_1d

    .line 466
    iget-boolean v14, v0, Lcom/android/server/notification/NotificationAttentionHelper;->mSystemReady:Z

    if-eqz v14, :cond_1d

    iget-object v14, v0, Lcom/android/server/notification/NotificationAttentionHelper;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v14, :cond_1d

    .line 467
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getSound()Landroid/net/Uri;

    move-result-object v14

    if-eqz v14, :cond_8

    .line 468
    sget-object v15, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v15, v14}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_8

    move v15, v11

    goto :goto_6

    :cond_8
    move v15, v4

    .line 469
    :goto_6
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getVibration()Landroid/os/VibrationEffect;

    move-result-object v16

    if-nez v16, :cond_b

    if-eqz v15, :cond_b

    .line 471
    iget-object v4, v0, Lcom/android/server/notification/NotificationAttentionHelper;->mAudioManager:Landroid/media/AudioManager;

    .line 473
    invoke-virtual {v4}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v4

    if-ne v4, v11, :cond_b

    iget-object v4, v0, Lcom/android/server/notification/NotificationAttentionHelper;->mAudioManager:Landroid/media/AudioManager;

    .line 476
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v17

    const/16 v18, 0x4

    invoke-static/range {v17 .. v17}, Landroid/media/AudioAttributes;->toLegacyStreamType(Landroid/media/AudioAttributes;)I

    move-result v13

    .line 475
    invoke-virtual {v4, v13}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    if-nez v4, :cond_a

    .line 477
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getFlags()I

    move-result v4

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_9

    move v4, v11

    goto :goto_7

    :cond_9
    const/4 v4, 0x0

    .line 478
    :goto_7
    iget-object v13, v0, Lcom/android/server/notification/NotificationAttentionHelper;->mVibratorHelper:Lcom/android/server/notification/VibratorHelper;

    invoke-virtual {v13, v4}, Lcom/android/server/notification/VibratorHelper;->createFallbackVibration(Z)Landroid/os/VibrationEffect;

    move-result-object v16

    :cond_a
    :goto_8
    move-object/from16 v4, v16

    goto :goto_9

    :cond_b
    const/16 v18, 0x4

    goto :goto_8

    :goto_9
    if-eqz v4, :cond_c

    move v13, v11

    goto :goto_a

    :cond_c
    const/4 v13, 0x0

    :goto_a
    if-eqz v13, :cond_d

    .line 482
    iget-boolean v11, v0, Lcom/android/server/notification/NotificationAttentionHelper;->mNotificationCooldownVibrateUnlocked:Z

    if-eqz v11, :cond_d

    iget-boolean v11, v0, Lcom/android/server/notification/NotificationAttentionHelper;->mUserPresent:Z

    if-eqz v11, :cond_d

    const/4 v11, 0x1

    goto :goto_b

    :cond_d
    const/4 v11, 0x0

    :goto_b
    if-nez v15, :cond_f

    if-eqz v13, :cond_e

    goto :goto_c

    :cond_e
    const/4 v8, 0x0

    goto :goto_d

    :cond_f
    :goto_c
    const/4 v8, 0x1

    .line 485
    :goto_d
    invoke-virtual {v0, v1, v2, v8}, Lcom/android/server/notification/NotificationAttentionHelper;->shouldMuteNotificationLocked(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationAttentionHelper$Signals;Z)I

    move-result v8

    if-nez v8, :cond_1b

    if-nez v12, :cond_10

    .line 488
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/notification/NotificationAttentionHelper;->sendAccessibilityEvent(Lcom/android/server/notification/NotificationRecord;)V

    :cond_10
    if-eqz v3, :cond_11

    .line 491
    const-string v3, "Interrupting!"

    invoke-static {v6, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    :cond_11
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/notification/NotificationAttentionHelper;->isInsistentUpdate(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v3

    if-eqz v15, :cond_14

    if-nez v11, :cond_14

    if-eqz v3, :cond_12

    const/4 v12, 0x1

    goto :goto_f

    .line 498
    :cond_12
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationAttentionHelper;->isInCall()Z

    move-result v12

    if-eqz v12, :cond_13

    .line 499
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationAttentionHelper;->playInCallNotification()V

    const/4 v12, 0x1

    goto :goto_e

    .line 502
    :cond_13
    invoke-virtual {v0, v1, v14}, Lcom/android/server/notification/NotificationAttentionHelper;->playSound(Lcom/android/server/notification/NotificationRecord;Landroid/net/Uri;)Z

    move-result v12

    :goto_e
    if-eqz v12, :cond_15

    .line 505
    iput-object v5, v0, Lcom/android/server/notification/NotificationAttentionHelper;->mSoundNotificationKey:Ljava/lang/String;

    goto :goto_f

    :cond_14
    const/4 v12, 0x0

    .line 510
    :cond_15
    :goto_f
    iget-object v14, v0, Lcom/android/server/notification/NotificationAttentionHelper;->mAudioManager:Landroid/media/AudioManager;

    .line 511
    invoke-virtual {v14}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v14

    if-nez v14, :cond_16

    const/4 v14, 0x1

    goto :goto_10

    :cond_16
    const/4 v14, 0x0

    .line 513
    :goto_10
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationAttentionHelper;->isInCall()Z

    move-result v19

    if-nez v19, :cond_19

    if-eqz v13, :cond_19

    if-nez v14, :cond_19

    if-eqz v3, :cond_17

    const/4 v3, 0x1

    goto :goto_12

    :cond_17
    if-eqz v15, :cond_18

    if-nez v11, :cond_18

    const/4 v3, 0x1

    goto :goto_11

    :cond_18
    const/4 v3, 0x0

    .line 517
    :goto_11
    invoke-virtual {v0, v1, v4, v3}, Lcom/android/server/notification/NotificationAttentionHelper;->playVibration(Lcom/android/server/notification/NotificationRecord;Landroid/os/VibrationEffect;Z)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 519
    iput-object v5, v0, Lcom/android/server/notification/NotificationAttentionHelper;->mVibrateNotificationKey:Ljava/lang/String;

    goto :goto_12

    :cond_19
    const/4 v3, 0x0

    .line 526
    :cond_1a
    :goto_12
    iget-object v4, v0, Lcom/android/server/notification/NotificationAttentionHelper;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object v11, v0, Lcom/android/server/notification/NotificationAttentionHelper;->mContext:Landroid/content/Context;

    .line 528
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v14

    invoke-virtual {v14}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v14

    move/from16 v19, v3

    const/4 v3, 0x3

    .line 526
    invoke-virtual {v4, v11, v3, v14}, Landroid/view/accessibility/AccessibilityManager;->startFlashNotificationEvent(Landroid/content/Context;ILjava/lang/String;)Z

    move/from16 v3, v19

    goto :goto_14

    .line 530
    :cond_1b
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getFlags()I

    move-result v3

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_1c

    const/4 v3, 0x0

    :goto_13
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    goto :goto_14

    :cond_1c
    const/4 v3, 0x0

    const/4 v12, 0x0

    goto :goto_14

    :cond_1d
    const/16 v18, 0x4

    const/4 v3, 0x0

    const/4 v8, 0x0

    goto :goto_13

    :goto_14
    if-eqz v9, :cond_1e

    if-nez v15, :cond_1e

    .line 539
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationAttentionHelper;->clearSoundLocked()V

    :cond_1e
    if-eqz v10, :cond_1f

    if-nez v13, :cond_1f

    .line 542
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationAttentionHelper;->clearVibrateLocked()V

    .line 547
    :cond_1f
    iget-object v4, v0, Lcom/android/server/notification/NotificationAttentionHelper;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v4

    .line 548
    invoke-virtual {v0, v1, v2, v7}, Lcom/android/server/notification/NotificationAttentionHelper;->canShowLightsLocked(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationAttentionHelper$Signals;Z)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 549
    iget-object v2, v0, Lcom/android/server/notification/NotificationAttentionHelper;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 550
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationAttentionHelper;->updateLightsLocked()V

    .line 551
    iget-boolean v2, v0, Lcom/android/server/notification/NotificationAttentionHelper;->mUseAttentionLight:Z

    if-eqz v2, :cond_20

    iget-object v2, v0, Lcom/android/server/notification/NotificationAttentionHelper;->mAttentionLight:Lcom/android/server/lights/LogicalLight;

    if-eqz v2, :cond_20

    .line 552
    invoke-virtual {v2}, Lcom/android/server/lights/LogicalLight;->pulse()V

    :cond_20
    move v10, v8

    const/4 v8, 0x1

    goto :goto_15

    :cond_21
    if-eqz v4, :cond_22

    .line 556
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationAttentionHelper;->updateLightsLocked()V

    :cond_22
    move v10, v8

    const/4 v8, 0x0

    :goto_15
    if-nez v3, :cond_23

    if-nez v12, :cond_23

    if-eqz v8, :cond_28

    .line 560
    :cond_23
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    move-result v2

    const-string v4, "INTERRUPTIVENESS: "

    if-eqz v2, :cond_24

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 561
    sget-boolean v2, Lcom/android/server/notification/NotificationAttentionHelper;->DEBUG_INTERRUPTIVENESS:Z

    if-eqz v2, :cond_28

    .line 562
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 563
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is not interruptive: summary"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 562
    invoke-static {v6, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    .line 565
    :cond_24
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->canBubble()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 566
    sget-boolean v2, Lcom/android/server/notification/NotificationAttentionHelper;->DEBUG_INTERRUPTIVENESS:Z

    if-eqz v2, :cond_28

    .line 567
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 568
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is not interruptive: bubble"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 567
    invoke-static {v6, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    :cond_25
    const/4 v2, 0x1

    .line 571
    invoke-virtual {v1, v2}, Lcom/android/server/notification/NotificationRecord;->setInterruptive(Z)V

    .line 572
    sget-boolean v2, Lcom/android/server/notification/NotificationAttentionHelper;->DEBUG_INTERRUPTIVENESS:Z

    if-eqz v2, :cond_26

    .line 573
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 574
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is interruptive: alerted"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 573
    invoke-static {v6, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26
    if-nez v3, :cond_27

    if-eqz v12, :cond_28

    .line 578
    :cond_27
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->resetRankingTime()V

    :cond_28
    :goto_16
    const/4 v2, 0x2

    if-eqz v12, :cond_29

    move v4, v2

    goto :goto_17

    :cond_29
    const/4 v4, 0x0

    :goto_17
    or-int/2addr v4, v3

    if-eqz v8, :cond_2a

    move/from16 v13, v18

    goto :goto_18

    :cond_2a
    const/4 v13, 0x0

    :goto_18
    or-int/2addr v4, v13

    .line 585
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/notification/NotificationAttentionHelper;->getPoliteBit(Lcom/android/server/notification/NotificationRecord;)I

    move-result v6

    or-int/2addr v4, v6

    or-int/2addr v4, v10

    if-lez v4, :cond_2b

    .line 587
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getLogMaker()Landroid/metrics/LogMaker;

    move-result-object v6

    const/16 v7, 0xc7

    .line 588
    invoke-virtual {v6, v7}, Landroid/metrics/LogMaker;->setCategory(I)Landroid/metrics/LogMaker;

    move-result-object v6

    const/4 v11, 0x1

    .line 589
    invoke-virtual {v6, v11}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v6

    .line 590
    invoke-virtual {v6, v4}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v6

    .line 587
    invoke-static {v6}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    .line 592
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/notification/NotificationAttentionHelper;->getPolitenessState(Lcom/android/server/notification/NotificationRecord;)I

    move-result v9

    move v6, v3

    move v7, v12

    .line 591
    invoke-static/range {v5 .. v10}, Lcom/android/server/EventLogTags;->writeNotificationAlert(Ljava/lang/String;IIIII)V

    goto :goto_19

    :cond_2b
    move v6, v3

    move v7, v12

    const/4 v11, 0x1

    :goto_19
    if-nez v6, :cond_2c

    if-eqz v7, :cond_2d

    .line 598
    :cond_2c
    iget-object v3, v0, Lcom/android/server/notification/NotificationAttentionHelper;->mStrategy:Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v3, v1, v8, v9}, Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;->setLastNotificationUpdateTimeMs(Lcom/android/server/notification/NotificationRecord;J)V

    :cond_2d
    if-nez v6, :cond_2e

    if-eqz v7, :cond_2f

    .line 602
    :cond_2e
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/notification/NotificationAttentionHelper;->getPolitenessState(Lcom/android/server/notification/NotificationRecord;)I

    move-result v0

    if-eq v0, v2, :cond_2f

    goto :goto_1a

    :cond_2f
    const/4 v11, 0x0

    .line 601
    :goto_1a
    invoke-virtual {v1, v11}, Lcom/android/server/notification/NotificationRecord;->setAudiblyAlerted(Z)V

    return v4
.end method

.method public canShowLightsLocked(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationAttentionHelper$Signals;Z)Z
    .locals 2

    .line 986
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mSystemReady:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 990
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mHasLight:Z

    if-nez v0, :cond_1

    return v1

    .line 994
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mNotificationPulseEnabled:Z

    if-nez v0, :cond_2

    return v1

    .line 998
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getLight()Lcom/android/server/notification/NotificationRecord$Light;

    move-result-object v0

    if-nez v0, :cond_3

    return v1

    :cond_3
    if-nez p3, :cond_4

    return v1

    .line 1006
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSuppressedVisualEffects()I

    move-result p3

    and-int/lit8 p3, p3, 0x8

    if-eqz p3, :cond_5

    return v1

    .line 1010
    :cond_5
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object p3

    .line 1011
    iget-boolean v0, p1, Lcom/android/server/notification/NotificationRecord;->isUpdate:Z

    if-eqz v0, :cond_6

    iget p3, p3, Landroid/app/Notification;->flags:I

    and-int/lit8 p3, p3, 0x8

    if-eqz p3, :cond_6

    return v1

    .line 1015
    :cond_6
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p3

    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    move-result p3

    if-eqz p3, :cond_7

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object p3

    invoke-virtual {p3}, Landroid/app/Notification;->suppressAlertingDueToGrouping()Z

    move-result p3

    if-eqz p3, :cond_7

    return v1

    .line 1019
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationAttentionHelper;->isInCall()Z

    move-result p3

    if-eqz p3, :cond_8

    return v1

    .line 1023
    :cond_8
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/NotificationAttentionHelper;->isNotificationForCurrentUser(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationAttentionHelper$Signals;)Z

    move-result p0

    if-nez p0, :cond_9

    return v1

    :cond_9
    const/4 p0, 0x1

    return p0
.end method

.method public clearAttentionEffects()V
    .locals 0

    .line 950
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationAttentionHelper;->clearSoundLocked()V

    .line 951
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationAttentionHelper;->clearVibrateLocked()V

    .line 952
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationAttentionHelper;->clearLightsLocked()V

    return-void
.end method

.method public clearEffectsLocked(Ljava/lang/String;)V
    .locals 1

    .line 937
    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mSoundNotificationKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 938
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationAttentionHelper;->clearSoundLocked()V

    .line 940
    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mVibrateNotificationKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 941
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationAttentionHelper;->clearVibrateLocked()V

    .line 943
    :cond_1
    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 945
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationAttentionHelper;->updateLightsLocked()V

    :cond_2
    return-void
.end method

.method public final clearLightsLocked()V
    .locals 1

    .line 932
    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 933
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationAttentionHelper;->updateLightsLocked()V

    return-void
.end method

.method public clearSoundLocked()V
    .locals 5

    const/4 v0, 0x0

    .line 906
    iput-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mSoundNotificationKey:Ljava/lang/String;

    .line 907
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 909
    :try_start_0
    iget-object p0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0}, Landroid/media/AudioManager;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 911
    invoke-interface {p0}, Landroid/media/IRingtonePlayer;->stopAsync()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_1

    .line 916
    :cond_0
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 914
    :goto_1
    :try_start_1
    const-string v2, "NotifAttentionHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed clearSoundLocked: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 916
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 917
    throw p0
.end method

.method public clearVibrateLocked()V
    .locals 2

    const/4 v0, 0x0

    .line 921
    iput-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mVibrateNotificationKey:Ljava/lang/String;

    .line 922
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 924
    :try_start_0
    iget-object p0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mVibratorHelper:Lcom/android/server/notification/VibratorHelper;

    invoke-virtual {p0}, Lcom/android/server/notification/VibratorHelper;->cancelVibration()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 926
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 927
    throw p0
.end method

.method public final createPolitenessStrategy()Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;
    .locals 11

    .line 267
    new-instance v0, Lcom/android/server/notification/NotificationAttentionHelper$StrategyPerApp;

    iget-object v1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mFlagResolver:Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$FlagResolver;

    sget-object v7, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$NotificationFlags;->NOTIF_COOLDOWN_T1:Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;

    .line 268
    invoke-interface {v1, v7}, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$FlagResolver;->getIntValue(Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mFlagResolver:Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$FlagResolver;

    sget-object v8, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$NotificationFlags;->NOTIF_COOLDOWN_T2:Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;

    .line 269
    invoke-interface {v2, v8}, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$FlagResolver;->getIntValue(Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mFlagResolver:Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$FlagResolver;

    sget-object v9, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$NotificationFlags;->NOTIF_VOLUME1:Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;

    .line 270
    invoke-interface {v3, v9}, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$FlagResolver;->getIntValue(Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mFlagResolver:Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$FlagResolver;

    sget-object v10, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$NotificationFlags;->NOTIF_VOLUME2:Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;

    .line 271
    invoke-interface {v4, v10}, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$FlagResolver;->getIntValue(Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mFlagResolver:Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$FlagResolver;

    sget-object v6, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$NotificationFlags;->NOTIF_COOLDOWN_COUNTER_RESET:Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;

    .line 272
    invoke-interface {v5, v6}, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$FlagResolver;->getIntValue(Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;)I

    move-result v5

    new-instance v6, Lcom/android/server/notification/NotificationAttentionHelper$$ExternalSyntheticLambda0;

    invoke-direct {v6, p0}, Lcom/android/server/notification/NotificationAttentionHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/notification/NotificationAttentionHelper;)V

    invoke-direct/range {v0 .. v6}, Lcom/android/server/notification/NotificationAttentionHelper$StrategyPerApp;-><init>(IIIIILcom/android/server/notification/NotificationAttentionHelper$ExemptionProvider;)V

    .line 285
    new-instance v1, Lcom/android/server/notification/NotificationAttentionHelper$StrategyAvalanche;

    iget-object v2, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mFlagResolver:Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$FlagResolver;

    .line 286
    invoke-interface {v2, v7}, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$FlagResolver;->getIntValue(Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mFlagResolver:Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$FlagResolver;

    .line 287
    invoke-interface {v3, v8}, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$FlagResolver;->getIntValue(Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mFlagResolver:Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$FlagResolver;

    .line 288
    invoke-interface {v4, v9}, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$FlagResolver;->getIntValue(Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mFlagResolver:Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$FlagResolver;

    .line 289
    invoke-interface {v5, v10}, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$FlagResolver;->getIntValue(Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;)I

    move-result v5

    iget-object p0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mFlagResolver:Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$FlagResolver;

    sget-object v6, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$NotificationFlags;->NOTIF_AVALANCHE_TIMEOUT:Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;

    .line 290
    invoke-interface {p0, v6}, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$FlagResolver;->getIntValue(Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;)I

    move-result p0

    iget-object v7, v0, Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;->mExemptionProvider:Lcom/android/server/notification/NotificationAttentionHelper$ExemptionProvider;

    move-object v6, v0

    move-object v0, v1

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/server/notification/NotificationAttentionHelper$StrategyAvalanche;-><init>(IIIIILcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;Lcom/android/server/notification/NotificationAttentionHelper$ExemptionProvider;)V

    return-object v0
.end method

.method public final disableNotificationEffects(Lcom/android/server/notification/NotificationRecord;I)Ljava/lang/String;
    .locals 2

    .line 1031
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mDisableNotificationEffects:Z

    if-eqz v0, :cond_0

    .line 1032
    const-string p0, "booleanState"

    return-object p0

    :cond_0
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_1

    .line 1036
    const-string p0, "listenerHints"

    return-object p0

    :cond_1
    if-eqz p1, :cond_3

    .line 1038
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v0

    if-eqz v0, :cond_3

    and-int/lit8 v0, p2, 0x2

    const/4 v1, 0x6

    if-eqz v0, :cond_2

    .line 1040
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v0

    if-eq v0, v1, :cond_2

    .line 1042
    const-string p0, "listenerNoti"

    return-object p0

    :cond_2
    and-int/lit8 p2, p2, 0x4

    if-eqz p2, :cond_3

    .line 1046
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object p2

    invoke-virtual {p2}, Landroid/media/AudioAttributes;->getUsage()I

    move-result p2

    if-ne p2, v1, :cond_3

    .line 1048
    const-string p0, "listenerCall"

    return-object p0

    .line 1052
    :cond_3
    iget p2, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mCallState:I

    if-eqz p2, :cond_4

    iget-object p0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->isCall(Lcom/android/server/notification/NotificationRecord;)Z

    move-result p0

    if-nez p0, :cond_4

    .line 1053
    const-string p0, "callState"

    return-object p0

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method public dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .locals 1

    .line 1162
    const-string p3, "\n  Notification attention state:"

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1163
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1164
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  mSoundNotificationKey="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mSoundNotificationKey:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1165
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1166
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  mVibrateNotificationKey="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mVibrateNotificationKey:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1167
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1168
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  mDisableNotificationEffects="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mDisableNotificationEffects:Z

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1169
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1170
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  mCallState="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mCallState:I

    invoke-static {v0}, Lcom/android/server/notification/NotificationAttentionHelper;->callStateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1171
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1172
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  mSystemReady="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mSystemReady:Z

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1173
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1174
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  mNotificationPulseEnabled="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mNotificationPulseEnabled:Z

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1176
    iget-object p3, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mLights:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-lez p3, :cond_2

    .line 1178
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1179
    const-string p2, "  Lights List:"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p3, :cond_1

    add-int/lit8 v0, p3, -0x1

    if-ne p2, v0, :cond_0

    .line 1182
    const-string v0, "  > "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 1184
    :cond_0
    const-string v0, "    "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1186
    :goto_1
    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 1188
    :cond_1
    const-string p0, "  "

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public final getManagedProfileId(I)I
    .locals 2

    .line 1109
    iget-object p0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mUm:Landroid/os/UserManager;

    invoke-virtual {p0, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object p0

    .line 1110
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 1111
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1112
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    if-eq v1, p1, :cond_0

    .line 1113
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0

    return p0

    :cond_1
    const/16 p0, -0x2710

    return p0
.end method

.method public final getPoliteBit(Lcom/android/server/notification/NotificationRecord;)I
    .locals 0

    .line 610
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationAttentionHelper;->getPolitenessState(Lcom/android/server/notification/NotificationRecord;)I

    move-result p0

    const/4 p1, 0x1

    if-eq p0, p1, :cond_1

    const/4 p1, 0x2

    if-eq p0, p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 p0, 0x10

    return p0

    :cond_1
    const/16 p0, 0x8

    return p0
.end method

.method public final getPolitenessState(Lcom/android/server/notification/NotificationRecord;)I
    .locals 1

    .line 621
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationAttentionHelper;->isPoliteNotificationFeatureEnabled(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 624
    :cond_0
    iget-object p0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mStrategy:Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;

    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;->getPolitenessState(Lcom/android/server/notification/NotificationRecord;)I

    move-result p0

    return p0
.end method

.method public getPolitenessStrategy()Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;
    .locals 0

    .line 315
    iget-object p0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mStrategy:Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;

    return-object p0
.end method

.method public final getSoundVolume(Lcom/android/server/notification/NotificationRecord;)F
    .locals 1

    .line 795
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationAttentionHelper;->isPoliteNotificationFeatureEnabled(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    if-nez v0, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    return p0

    .line 799
    :cond_0
    iget-object p0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mStrategy:Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;

    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;->getSoundVolume(Lcom/android/server/notification/NotificationRecord;)F

    move-result p0

    return p0
.end method

.method public final getVibrationIntensity(Lcom/android/server/notification/NotificationRecord;)F
    .locals 1

    .line 803
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationAttentionHelper;->isPoliteNotificationFeatureEnabled(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    if-nez v0, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    return p0

    .line 807
    :cond_0
    iget-object p0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mStrategy:Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;

    invoke-static {p0, p1}, Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;->-$$Nest$mgetVibrationIntensity(Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;Lcom/android/server/notification/NotificationRecord;)F

    move-result p0

    return p0
.end method

.method public getVibratorHelper()Lcom/android/server/notification/VibratorHelper;
    .locals 0

    .line 1854
    iget-object p0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mVibratorHelper:Lcom/android/server/notification/VibratorHelper;

    return-object p0
.end method

.method public isCurrentlyInsistent()Z
    .locals 2

    .line 634
    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mNMP:Lcom/android/server/notification/NotificationManagerPrivate;

    iget-object v1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mSoundNotificationKey:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/server/notification/NotificationManagerPrivate;->getNotificationByKey(Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationAttentionHelper;->isLoopingRingtoneNotification(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mNMP:Lcom/android/server/notification/NotificationManagerPrivate;

    iget-object v1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mVibrateNotificationKey:Ljava/lang/String;

    .line 636
    invoke-interface {v0, v1}, Lcom/android/server/notification/NotificationManagerPrivate;->getNotificationByKey(Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;

    move-result-object v0

    .line 635
    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationAttentionHelper;->isLoopingRingtoneNotification(Lcom/android/server/notification/NotificationRecord;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final isInCall()Z
    .locals 2

    .line 1070
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mInCallStateOffHook:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 1073
    :cond_0
    iget-object p0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0}, Landroid/media/AudioManager;->getMode()I

    move-result p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method public isInsistentUpdate(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 2

    .line 628
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mSoundNotificationKey:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 629
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mVibrateNotificationKey:Ljava/lang/String;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 630
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationAttentionHelper;->isCurrentlyInsistent()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final isLoopingRingtoneNotification(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 721
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getUsage()I

    move-result p0

    const/4 v0, 0x6

    if-ne p0, v0, :cond_0

    .line 722
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object p0

    iget p0, p0, Landroid/app/Notification;->flags:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isNotificationForCurrentUser(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationAttentionHelper$Signals;)Z
    .locals 2

    .line 1093
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1095
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1097
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1099
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result p1

    if-eq p1, p0, :cond_1

    invoke-static {p2}, Lcom/android/server/notification/NotificationAttentionHelper$Signals;->-$$Nest$fgetisCurrentProfile(Lcom/android/server/notification/NotificationAttentionHelper$Signals;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    .line 1097
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1098
    throw p0
.end method

.method public final isNotificationForWorkProfile(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 0

    .line 1104
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUser()Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    iget p0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mCurrentWorkProfileId:I

    if-ne p1, p0, :cond_0

    const/16 p1, -0x2710

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isPoliteNotificationFeatureEnabled(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 2

    .line 776
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mNotificationCooldownEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 781
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationAttentionHelper;->isNotificationForWorkProfile(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mNotificationCooldownForWorkEnabled:Z

    if-nez v0, :cond_1

    return v1

    .line 787
    :cond_1
    iget-boolean p0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mNotificationCooldownApplyToAll:Z

    if-nez p0, :cond_2

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->isConversation()Z

    move-result p0

    if-nez p0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public final synthetic lambda$createPolitenessStrategy$0(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 3

    .line 274
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->category:Ljava/lang/String;

    .line 275
    const-string v1, "alarm"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_2

    const-string v1, "car_emergency"

    .line 276
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "car_warning"

    .line 277
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 280
    :cond_0
    iget-object p0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 282
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 280
    const-string v0, "android.permission.RECEIVE_EMERGENCY_BROADCAST"

    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_1

    return v2

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    return v2
.end method

.method public final synthetic lambda$playVibration$2(Lcom/android/server/notification/NotificationRecord;Landroid/os/VibrationEffect;)V
    .locals 4

    .line 829
    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mAudioManager:Landroid/media/AudioManager;

    .line 831
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v1

    const/4 v2, 0x3

    .line 829
    invoke-virtual {v0, v2, v1}, Landroid/media/AudioManager;->getFocusRampTimeMs(ILandroid/media/AudioAttributes;)I

    move-result v0

    .line 832
    sget-boolean v1, Lcom/android/server/notification/NotificationAttentionHelper;->DEBUG:Z

    const-string v2, "NotifAttentionHelper"

    if-eqz v1, :cond_0

    .line 833
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Delaying vibration for notification "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 834
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " by "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ms"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 833
    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    int-to-long v0, v0

    .line 837
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 841
    :catch_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mNMP:Lcom/android/server/notification/NotificationManagerPrivate;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/server/notification/NotificationManagerPrivate;->getNotificationByKey(Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 842
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mVibrateNotificationKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 843
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/notification/NotificationAttentionHelper;->vibrate(Lcom/android/server/notification/NotificationRecord;Landroid/os/VibrationEffect;Z)V

    goto :goto_0

    .line 845
    :cond_1
    sget-boolean p0, Lcom/android/server/notification/NotificationAttentionHelper;->DEBUG:Z

    if-eqz p0, :cond_3

    .line 846
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "No vibration for notification "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 847
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": a new notification is vibrating, or effects were cleared while waiting"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 846
    invoke-static {v2, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 852
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "No vibration for canceled notification "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 853
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 852
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void
.end method

.method public final loadUserSettings()V
    .locals 6

    .line 376
    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "notification_light_pulse"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 378
    :goto_0
    iget-object v4, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 379
    :try_start_0
    iget-boolean v5, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mNotificationPulseEnabled:Z

    if-eq v5, v0, :cond_1

    .line 380
    iput-boolean v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mNotificationPulseEnabled:Z

    .line 381
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationAttentionHelper;->updateLightsLocked()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    .line 383
    :cond_1
    :goto_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 387
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationAttentionHelper;->getManagedProfileId(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mCurrentWorkProfileId:I

    .line 389
    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mContext:Landroid/content/Context;

    .line 390
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v4, "notification_cooldown_enabled"

    invoke-static {v0, v4, v1, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    iput-boolean v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mNotificationCooldownEnabled:Z

    .line 393
    iget v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mCurrentWorkProfileId:I

    const/16 v4, -0x2710

    if-eq v0, v4, :cond_4

    .line 394
    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mContext:Landroid/content/Context;

    .line 395
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v4, "notification_cooldown_enabled"

    iget v5, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mCurrentWorkProfileId:I

    .line 394
    invoke-static {v0, v4, v1, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_3

    :cond_3
    move v0, v2

    :goto_3
    iput-boolean v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mNotificationCooldownForWorkEnabled:Z

    goto :goto_4

    .line 400
    :cond_4
    iput-boolean v2, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mNotificationCooldownForWorkEnabled:Z

    .line 402
    :goto_4
    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mContext:Landroid/content/Context;

    .line 403
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v4, "notification_cooldown_all"

    .line 402
    invoke-static {v0, v4, v1, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_5

    move v2, v1

    :cond_5
    iput-boolean v2, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mNotificationCooldownApplyToAll:Z

    .line 406
    iget-object p0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mStrategy:Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;

    invoke-virtual {p0, v2}, Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;->setApplyCooldownPerPackage(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 415
    const-string v0, "NotifAttentionHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to read Settings: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 383
    :goto_5
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public onSystemReady()V
    .locals 3

    const/4 v0, 0x1

    .line 319
    iput-boolean v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mSystemReady:Z

    .line 321
    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "android.hardware.type.automotive"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mIsAutomotive:Z

    .line 322
    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111018d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mNotificationEffectsEnabledForAutomotive:Z

    .line 325
    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mContext:Landroid/content/Context;

    const-class v1, Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mAudioManager:Landroid/media/AudioManager;

    .line 326
    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/KeyguardManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 328
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationAttentionHelper;->registerBroadcastListeners()V

    return-void
.end method

.method public onUserInteraction(Lcom/android/server/notification/NotificationRecord;)V
    .locals 1

    .line 1155
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationAttentionHelper;->isPoliteNotificationFeatureEnabled(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1156
    iget-object p0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mStrategy:Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;

    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;->onUserInteraction(Lcom/android/server/notification/NotificationRecord;)V

    :cond_0
    return-void
.end method

.method public playInCallNotification()V
    .locals 4

    .line 876
    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 877
    iget-object v1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 879
    invoke-virtual {v0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v1

    .line 878
    const-string v2, "in_call_notification_enabled"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_0

    .line 880
    new-instance v0, Lcom/android/server/notification/NotificationAttentionHelper$2;

    invoke-direct {v0, p0}, Lcom/android/server/notification/NotificationAttentionHelper$2;-><init>(Lcom/android/server/notification/NotificationAttentionHelper;)V

    .line 901
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method public final playSound(Lcom/android/server/notification/NotificationRecord;Landroid/net/Uri;)Z
    .locals 12

    .line 733
    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->shouldNotificationSoundPlay(Landroid/media/AudioAttributes;)Z

    move-result v0

    const/4 v1, 0x0

    .line 743
    const-string v2, "NotifAttentionHelper"

    if-nez v0, :cond_1

    .line 744
    sget-boolean p0, Lcom/android/server/notification/NotificationAttentionHelper;->DEBUG:Z

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Not playing sound "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " due to focus/volume"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v1

    .line 748
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget v0, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v0, v0, 0x4

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    move v7, v3

    goto :goto_0

    :cond_2
    move v7, v1

    .line 749
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 751
    :try_start_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 753
    sget-boolean v0, Lcom/android/server/notification/NotificationAttentionHelper;->DEBUG:Z

    if-eqz v0, :cond_3

    .line 754
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Playing sound "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " with attributes "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 755
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 754
    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_5

    :catch_0
    move-exception v0

    move-object p0, v0

    goto :goto_3

    .line 757
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v6

    .line 758
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v8

    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationAttentionHelper;->getSoundVolume(Lcom/android/server/notification/NotificationRecord;)F

    move-result v9

    move-object v5, p2

    .line 757
    invoke-interface/range {v4 .. v9}, Landroid/media/IRingtonePlayer;->playAsync(Landroid/net/Uri;Landroid/os/UserHandle;ZLandroid/media/AudioAttributes;F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 764
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :cond_4
    :goto_2
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_4

    .line 762
    :goto_3
    :try_start_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed playSound: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_4
    return v1

    .line 764
    :goto_5
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 765
    throw p0
.end method

.method public final playVibration(Lcom/android/server/notification/NotificationRecord;Landroid/os/VibrationEffect;Z)Z
    .locals 4

    .line 814
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 818
    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mVibrateNotificationKey:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 819
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 820
    iput-object v2, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mVibrateNotificationKey:Ljava/lang/String;

    .line 821
    iget-object v2, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mVibratorHelper:Lcom/android/server/notification/VibratorHelper;

    invoke-virtual {v2}, Lcom/android/server/notification/VibratorHelper;->cancelVibration()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 823
    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationAttentionHelper;->getVibrationIntensity(Lcom/android/server/notification/NotificationRecord;)F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    .line 824
    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_1

    .line 825
    iget-object v3, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mVibratorHelper:Lcom/android/server/notification/VibratorHelper;

    invoke-virtual {v3, p2, v2}, Lcom/android/server/notification/VibratorHelper;->scale(Landroid/os/VibrationEffect;F)Landroid/os/VibrationEffect;

    move-result-object p2

    :cond_1
    if-eqz p3, :cond_2

    .line 827
    new-instance p3, Ljava/lang/Thread;

    new-instance v2, Lcom/android/server/notification/NotificationAttentionHelper$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/notification/NotificationAttentionHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/notification/NotificationAttentionHelper;Lcom/android/server/notification/NotificationRecord;Landroid/os/VibrationEffect;)V

    invoke-direct {p3, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 855
    invoke-virtual {p3}, Ljava/lang/Thread;->start()V

    goto :goto_1

    :cond_2
    const/4 p3, 0x0

    .line 857
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/notification/NotificationAttentionHelper;->vibrate(Lcom/android/server/notification/NotificationRecord;Landroid/os/VibrationEffect;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 861
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x1

    return p0

    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 862
    throw p0
.end method

.method public final registerBroadcastListeners()V
    .locals 9

    .line 332
    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "android.hardware.telephony"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    new-instance v1, Lcom/android/server/notification/NotificationAttentionHelper$1;

    invoke-direct {v1, p0}, Lcom/android/server/notification/NotificationAttentionHelper$1;-><init>(Lcom/android/server/notification/NotificationAttentionHelper;)V

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 343
    :cond_0
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 344
    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 345
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 346
    const-string v0, "android.intent.action.PHONE_STATE"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 347
    const-string v0, "android.intent.action.USER_PRESENT"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 348
    const-string v0, "android.intent.action.USER_ADDED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 349
    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 350
    const-string v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 351
    const-string v0, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 353
    sget-object v0, Lcom/android/server/notification/NotificationAttentionHelper;->NOTIFICATION_AVALANCHE_TRIGGER_INTENTS:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 354
    invoke-virtual {v6, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_0

    .line 357
    :cond_1
    iget-object v3, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 359
    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/android/server/notification/NotificationAttentionHelper$SettingsObserver;->-$$Nest$sfgetNOTIFICATION_LIGHT_PULSE_URI()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mSettingsObserver:Lcom/android/server/notification/NotificationAttentionHelper$SettingsObserver;

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 363
    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/android/server/notification/NotificationAttentionHelper$SettingsObserver;->-$$Nest$sfgetNOTIFICATION_COOLDOWN_ENABLED_URI()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mSettingsObserver:Lcom/android/server/notification/NotificationAttentionHelper$SettingsObserver;

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 366
    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/android/server/notification/NotificationAttentionHelper$SettingsObserver;->-$$Nest$sfgetNOTIFICATION_COOLDOWN_ALL_URI()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mSettingsObserver:Lcom/android/server/notification/NotificationAttentionHelper$SettingsObserver;

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 369
    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/android/server/notification/NotificationAttentionHelper$SettingsObserver;->-$$Nest$sfgetNOTIFICATION_COOLDOWN_VIBRATE_UNLOCKED_URI()Landroid/net/Uri;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mSettingsObserver:Lcom/android/server/notification/NotificationAttentionHelper$SettingsObserver;

    invoke-virtual {v0, v1, v3, p0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public sendAccessibilityEvent(Lcom/android/server/notification/NotificationRecord;)V
    .locals 4

    .line 1120
    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mEnableNotificationAccessibilityEvents:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 1124
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 1125
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x40

    .line 1127
    invoke-static {v2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v2

    .line 1128
    invoke-virtual {v2, v1}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 1129
    const-class v1, Landroid/app/Notification;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1130
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getPackageVisibilityOverride()I

    move-result v1

    const/16 v3, -0x3e8

    if-ne v1, v3, :cond_1

    .line 1132
    iget v1, v0, Landroid/app/Notification;->visibility:I

    .line 1133
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUser()Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    if-ltz p1, :cond_2

    .line 1134
    iget-object v3, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v3, p1}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    if-eq v1, p1, :cond_2

    .line 1138
    iget-object p1, v0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    invoke-virtual {v2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setParcelableData(Landroid/os/Parcelable;)V

    goto :goto_0

    .line 1140
    :cond_2
    invoke-virtual {v2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setParcelableData(Landroid/os/Parcelable;)V

    .line 1142
    :goto_0
    iget-object p1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1143
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1144
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1147
    :cond_3
    iget-object p0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p0, v2}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public setAccessibilityManager(Landroid/view/accessibility/AccessibilityManager;)V
    .locals 0

    .line 1849
    iput-object p1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    return-void
.end method

.method public setAudioManager(Landroid/media/AudioManager;)V
    .locals 0

    .line 1882
    iput-object p1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mAudioManager:Landroid/media/AudioManager;

    return-void
.end method

.method public setInCallStateOffHook(Z)V
    .locals 0

    .line 1887
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mInCallStateOffHook:Z

    return-void
.end method

.method public setIsAutomotive(Z)V
    .locals 0

    .line 1829
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mIsAutomotive:Z

    return-void
.end method

.method public setKeyguardManager(Landroid/app/KeyguardManager;)V
    .locals 0

    .line 1844
    iput-object p1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-void
.end method

.method public setLights(Lcom/android/server/lights/LogicalLight;)V
    .locals 0

    .line 1876
    iput-object p1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mNotificationLight:Lcom/android/server/lights/LogicalLight;

    .line 1877
    iput-object p1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mAttentionLight:Lcom/android/server/lights/LogicalLight;

    return-void
.end method

.method public setNotificationEffectsEnabledForAutomotive(Z)V
    .locals 0

    .line 1834
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mNotificationEffectsEnabledForAutomotive:Z

    return-void
.end method

.method public setScreenOn(Z)V
    .locals 1

    .line 1864
    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1865
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mScreenOn:Z

    .line 1866
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setSystemReady(Z)V
    .locals 0

    .line 1839
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mSystemReady:Z

    return-void
.end method

.method public setUserPresent(Z)V
    .locals 0

    .line 1871
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mUserPresent:Z

    return-void
.end method

.method public setVibratorHelper(Lcom/android/server/notification/VibratorHelper;)V
    .locals 0

    .line 1859
    iput-object p1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mVibratorHelper:Lcom/android/server/notification/VibratorHelper;

    return-void
.end method

.method public shouldMuteNotificationLocked(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationAttentionHelper$Signals;Z)I
    .locals 1

    if-nez p3, :cond_0

    const/16 p0, 0x20

    return p0

    .line 646
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object p3

    .line 647
    iget-boolean v0, p1, Lcom/android/server/notification/NotificationRecord;->isUpdate:Z

    if-eqz v0, :cond_1

    iget v0, p3, Landroid/app/Notification;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_1

    const/16 p0, 0x40

    return p0

    .line 652
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->shouldPostSilently()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 p0, 0x80

    return p0

    .line 657
    :cond_2
    invoke-static {p2}, Lcom/android/server/notification/NotificationAttentionHelper$Signals;->-$$Nest$fgetlistenerHints(Lcom/android/server/notification/NotificationAttentionHelper$Signals;)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/NotificationAttentionHelper;->disableNotificationEffects(Lcom/android/server/notification/NotificationRecord;I)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 659
    invoke-static {p1, p2}, Lcom/android/server/notification/ZenLog;->traceDisableEffects(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    const/16 p0, 0x100

    return p0

    .line 664
    :cond_3
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->isIntercepted()Z

    move-result p2

    if-eqz p2, :cond_4

    const/16 p0, 0x200

    return p0

    .line 669
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p2

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 670
    invoke-virtual {p3}, Landroid/app/Notification;->suppressAlertingDueToGrouping()Z

    move-result p2

    if-eqz p2, :cond_5

    const/16 p0, 0x400

    return p0

    .line 677
    :cond_5
    invoke-virtual {p3}, Landroid/app/Notification;->isSilent()Z

    move-result p2

    if-eqz p2, :cond_6

    const/16 p0, 0x800

    return p0

    .line 683
    :cond_6
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p2

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p2

    .line 684
    iget-object p3, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    invoke-virtual {p3, p2}, Lcom/android/server/notification/NotificationUsageStats;->isAlertRateLimited(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 685
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Muting recently noisy "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NotifAttentionHelper"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0x1000

    return p0

    .line 690
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationAttentionHelper;->isCurrentlyInsistent()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationAttentionHelper;->isInsistentUpdate(Lcom/android/server/notification/NotificationRecord;)Z

    move-result p2

    if-nez p2, :cond_8

    const/16 p0, 0x2000

    return p0

    .line 695
    :cond_8
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->canBubble()Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_a

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->isFlagBubbleRemoved()Z

    move-result p2

    if-nez p2, :cond_9

    .line 696
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Notification;->isBubbleNotification()Z

    move-result p2

    if-eqz p2, :cond_a

    :cond_9
    const/4 p2, 0x1

    goto :goto_0

    :cond_a
    move p2, p3

    .line 697
    :goto_0
    iget-boolean v0, p1, Lcom/android/server/notification/NotificationRecord;->isUpdate:Z

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->isInterruptive()Z

    move-result v0

    if-nez v0, :cond_b

    if-eqz p2, :cond_b

    .line 698
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Notification;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object p2

    if-eqz p2, :cond_b

    .line 699
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Notification;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Notification$BubbleMetadata;->isNotificationSuppressed()Z

    move-result p2

    if-eqz p2, :cond_b

    const/16 p0, 0x4000

    return p0

    .line 704
    :cond_b
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationAttentionHelper;->isPoliteNotificationFeatureEnabled(Lcom/android/server/notification/NotificationRecord;)Z

    move-result p2

    if-eqz p2, :cond_d

    .line 706
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationAttentionHelper;->isInsistentUpdate(Lcom/android/server/notification/NotificationRecord;)Z

    move-result p2

    if-nez p2, :cond_c

    .line 707
    iget-object p2, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mStrategy:Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;

    invoke-virtual {p2, p1}, Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;->onNotificationPosted(Lcom/android/server/notification/NotificationRecord;)V

    .line 711
    :cond_c
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationAttentionHelper;->getPolitenessState(Lcom/android/server/notification/NotificationRecord;)I

    move-result p0

    const/4 p1, 0x2

    if-ne p0, p1, :cond_d

    const p0, 0x8000

    return p0

    :cond_d
    return p3
.end method

.method public updateDisableNotificationEffectsLocked(I)V
    .locals 1

    const/high16 v0, 0x40000

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1060
    :goto_0
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mDisableNotificationEffects:Z

    if-eqz p1, :cond_1

    .line 1065
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationAttentionHelper;->clearAttentionEffects()V

    :cond_1
    return-void
.end method

.method public updateLightsLocked()V
    .locals 4

    .line 956
    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mNotificationLight:Lcom/android/server/lights/LogicalLight;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 962
    iget-object v2, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 963
    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 964
    iget-object v1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mNMP:Lcom/android/server/notification/NotificationManagerPrivate;

    invoke-interface {v1, v0}, Lcom/android/server/notification/NotificationManagerPrivate;->getNotificationByKey(Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;

    move-result-object v1

    if-nez v1, :cond_1

    .line 966
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LED Notification does not exist: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NotifAttentionHelper"

    invoke-static {v3, v2}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    iget-object v2, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_5

    .line 972
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationAttentionHelper;->isInCall()Z

    move-result v2

    if-nez v2, :cond_5

    iget-boolean v2, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mScreenOn:Z

    if-eqz v2, :cond_3

    goto :goto_2

    .line 975
    :cond_3
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getLight()Lcom/android/server/notification/NotificationRecord$Light;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 976
    iget-boolean v2, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mNotificationPulseEnabled:Z

    if-eqz v2, :cond_4

    .line 978
    iget-object p0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mNotificationLight:Lcom/android/server/lights/LogicalLight;

    iget v2, v0, Lcom/android/server/notification/NotificationRecord$Light;->color:I

    iget v3, v0, Lcom/android/server/notification/NotificationRecord$Light;->onMs:I

    iget v0, v0, Lcom/android/server/notification/NotificationRecord$Light;->offMs:I

    invoke-virtual {p0, v2, v1, v3, v0}, Lcom/android/server/lights/LogicalLight;->setFlashing(IIII)V

    :cond_4
    :goto_1
    return-void

    .line 973
    :cond_5
    :goto_2
    iget-object p0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mNotificationLight:Lcom/android/server/lights/LogicalLight;

    invoke-virtual {p0}, Lcom/android/server/lights/LogicalLight;->turnOff()V

    return-void
.end method

.method public final vibrate(Lcom/android/server/notification/NotificationRecord;Landroid/os/VibrationEffect;Z)V
    .locals 2

    .line 869
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Notification ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getOpPkg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 870
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_0

    const-string p3, "(Delayed)"

    goto :goto_0

    :cond_0
    const-string p3, ""

    :goto_0
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 871
    iget-object p0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mVibratorHelper:Lcom/android/server/notification/VibratorHelper;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object p1

    invoke-virtual {p0, p2, p1, p3}, Lcom/android/server/notification/VibratorHelper;->vibrate(Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;Ljava/lang/String;)V

    return-void
.end method
