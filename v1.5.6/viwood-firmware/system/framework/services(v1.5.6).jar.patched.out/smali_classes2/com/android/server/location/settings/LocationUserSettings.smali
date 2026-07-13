.class public final Lcom/android/server/location/settings/LocationUserSettings;
.super Ljava/lang/Object;
.source "LocationUserSettings.java"

# interfaces
.implements Lcom/android/server/location/settings/SettingsStore$VersionedSettings;


# instance fields
.field public final mAdasGnssLocationEnabled:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-boolean p1, p0, Lcom/android/server/location/settings/LocationUserSettings;->mAdasGnssLocationEnabled:Z

    return-void
.end method

.method public static read(Landroid/content/res/Resources;ILjava/io/DataInput;)Lcom/android/server/location/settings/LocationUserSettings;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const p1, 0x111012b

    .line 71
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    goto :goto_0

    .line 75
    :cond_0
    invoke-interface {p2}, Ljava/io/DataInput;->readBoolean()Z

    move-result p0

    .line 79
    :goto_0
    new-instance p1, Lcom/android/server/location/settings/LocationUserSettings;

    invoke-direct {p1, p0}, Lcom/android/server/location/settings/LocationUserSettings;-><init>(Z)V

    return-object p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 87
    :cond_0
    instance-of v1, p1, Lcom/android/server/location/settings/LocationUserSettings;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 90
    :cond_1
    check-cast p1, Lcom/android/server/location/settings/LocationUserSettings;

    .line 91
    iget-boolean p0, p0, Lcom/android/server/location/settings/LocationUserSettings;->mAdasGnssLocationEnabled:Z

    iget-boolean p1, p1, Lcom/android/server/location/settings/LocationUserSettings;->mAdasGnssLocationEnabled:Z

    if-ne p0, p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public getVersion()I
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public hashCode()I
    .locals 0

    .line 96
    iget-boolean p0, p0, Lcom/android/server/location/settings/LocationUserSettings;->mAdasGnssLocationEnabled:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public isAdasGnssLocationEnabled()Z
    .locals 0

    .line 47
    iget-boolean p0, p0, Lcom/android/server/location/settings/LocationUserSettings;->mAdasGnssLocationEnabled:Z

    return p0
.end method

.method public withAdasGnssLocationEnabled(Z)Lcom/android/server/location/settings/LocationUserSettings;
    .locals 1

    .line 52
    iget-boolean v0, p0, Lcom/android/server/location/settings/LocationUserSettings;->mAdasGnssLocationEnabled:Z

    if-ne p1, v0, :cond_0

    return-object p0

    .line 56
    :cond_0
    new-instance p0, Lcom/android/server/location/settings/LocationUserSettings;

    invoke-direct {p0, p1}, Lcom/android/server/location/settings/LocationUserSettings;-><init>(Z)V

    return-object p0
.end method

.method public write(Ljava/io/DataOutput;)V
    .locals 0

    .line 60
    iget-boolean p0, p0, Lcom/android/server/location/settings/LocationUserSettings;->mAdasGnssLocationEnabled:Z

    invoke-interface {p1, p0}, Ljava/io/DataOutput;->writeBoolean(Z)V

    return-void
.end method
