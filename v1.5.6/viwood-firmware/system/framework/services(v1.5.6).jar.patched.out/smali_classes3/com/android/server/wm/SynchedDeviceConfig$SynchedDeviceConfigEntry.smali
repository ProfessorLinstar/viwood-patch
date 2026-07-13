.class public Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigEntry;
.super Ljava/lang/Object;
.source "SynchedDeviceConfig.java"


# instance fields
.field public final mBuildTimeFlagEnabled:Z

.field public final mDefaultValue:Z

.field public final mFlagKey:Ljava/lang/String;

.field public volatile mOverrideValue:Z


# direct methods
.method public static bridge synthetic -$$Nest$fgetmDefaultValue(Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigEntry;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigEntry;->mDefaultValue:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmFlagKey(Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigEntry;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigEntry;->mFlagKey:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetValue(Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigEntry;)Z
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigEntry;->getValue()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misBuildTimeFlagEnabled(Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigEntry;)Z
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigEntry;->isBuildTimeFlagEnabled()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mupdateValue(Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigEntry;Z)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigEntry;->updateValue(Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZZ)V
    .locals 0

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    iput-object p1, p0, Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigEntry;->mFlagKey:Ljava/lang/String;

    .line 173
    iput-boolean p2, p0, Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigEntry;->mDefaultValue:Z

    iput-boolean p2, p0, Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigEntry;->mOverrideValue:Z

    .line 174
    iput-boolean p3, p0, Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigEntry;->mBuildTimeFlagEnabled:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ZZLcom/android/server/wm/SynchedDeviceConfig-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigEntry;-><init>(Ljava/lang/String;ZZ)V

    return-void
.end method


# virtual methods
.method public final getValue()Z
    .locals 1

    .line 183
    iget-boolean v0, p0, Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigEntry;->mBuildTimeFlagEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigEntry;->mOverrideValue:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isBuildTimeFlagEnabled()Z
    .locals 0

    .line 187
    iget-boolean p0, p0, Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigEntry;->mBuildTimeFlagEnabled:Z

    return p0
.end method

.method public final updateValue(Z)V
    .locals 0

    .line 179
    iput-boolean p1, p0, Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigEntry;->mOverrideValue:Z

    return-void
.end method
