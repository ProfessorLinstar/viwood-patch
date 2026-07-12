.class public abstract Lcom/android/server/utils/UserSettingDeviceConfigMediator;
.super Ljava/lang/Object;
.source "UserSettingDeviceConfigMediator.java"


# instance fields
.field public mProperties:Landroid/provider/DeviceConfig$Properties;

.field public final mSettingsParser:Landroid/util/KeyValueListParser;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(C)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Landroid/util/KeyValueListParser;

    invoke-direct {v0, p1}, Landroid/util/KeyValueListParser;-><init>(C)V

    iput-object v0, p0, Lcom/android/server/utils/UserSettingDeviceConfigMediator;->mSettingsParser:Landroid/util/KeyValueListParser;

    return-void
.end method


# virtual methods
.method public abstract getBoolean(Ljava/lang/String;Z)Z
.end method

.method public abstract getFloat(Ljava/lang/String;F)F
.end method

.method public abstract getInt(Ljava/lang/String;I)I
.end method

.method public abstract getLong(Ljava/lang/String;J)J
.end method

.method public setDeviceConfigProperties(Landroid/provider/DeviceConfig$Properties;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/android/server/utils/UserSettingDeviceConfigMediator;->mProperties:Landroid/provider/DeviceConfig$Properties;

    return-void
.end method

.method public setSettingsString(Ljava/lang/String;)V
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/android/server/utils/UserSettingDeviceConfigMediator;->mSettingsParser:Landroid/util/KeyValueListParser;

    invoke-virtual {p0, p1}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V

    return-void
.end method
