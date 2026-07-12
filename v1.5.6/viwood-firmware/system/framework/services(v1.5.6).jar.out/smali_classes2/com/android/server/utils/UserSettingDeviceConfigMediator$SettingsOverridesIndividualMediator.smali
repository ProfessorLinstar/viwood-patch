.class public Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;
.super Lcom/android/server/utils/UserSettingDeviceConfigMediator;
.source "UserSettingDeviceConfigMediator.java"


# direct methods
.method public constructor <init>(C)V
    .locals 0

    .line 161
    invoke-direct {p0, p1}, Lcom/android/server/utils/UserSettingDeviceConfigMediator;-><init>(C)V

    return-void
.end method


# virtual methods
.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/android/server/utils/UserSettingDeviceConfigMediator;->mSettingsParser:Landroid/util/KeyValueListParser;

    .line 167
    iget-object p0, p0, Lcom/android/server/utils/UserSettingDeviceConfigMediator;->mProperties:Landroid/provider/DeviceConfig$Properties;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    .line 166
    :goto_0
    invoke-virtual {v0, p1, p2}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public getFloat(Ljava/lang/String;F)F
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/android/server/utils/UserSettingDeviceConfigMediator;->mSettingsParser:Landroid/util/KeyValueListParser;

    .line 173
    iget-object p0, p0, Lcom/android/server/utils/UserSettingDeviceConfigMediator;->mProperties:Landroid/provider/DeviceConfig$Properties;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/provider/DeviceConfig$Properties;->getFloat(Ljava/lang/String;F)F

    move-result p2

    .line 172
    :goto_0
    invoke-virtual {v0, p1, p2}, Landroid/util/KeyValueListParser;->getFloat(Ljava/lang/String;F)F

    move-result p0

    return p0
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/android/server/utils/UserSettingDeviceConfigMediator;->mSettingsParser:Landroid/util/KeyValueListParser;

    .line 179
    iget-object p0, p0, Lcom/android/server/utils/UserSettingDeviceConfigMediator;->mProperties:Landroid/provider/DeviceConfig$Properties;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result p2

    .line 178
    :goto_0
    invoke-virtual {v0, p1, p2}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/android/server/utils/UserSettingDeviceConfigMediator;->mSettingsParser:Landroid/util/KeyValueListParser;

    .line 185
    iget-object p0, p0, Lcom/android/server/utils/UserSettingDeviceConfigMediator;->mProperties:Landroid/provider/DeviceConfig$Properties;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide p2

    .line 184
    :goto_0
    invoke-virtual {v0, p1, p2, p3}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method
