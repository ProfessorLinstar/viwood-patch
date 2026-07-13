.class public interface abstract Lcom/android/server/flags/SettingsProxy;
.super Ljava/lang/Object;
.source "SettingsProxy.java"


# virtual methods
.method public abstract getContentResolver()Landroid/content/ContentResolver;
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 92
    invoke-interface {p0}, Lcom/android/server/flags/SettingsProxy;->getUserId()I

    move-result v0

    invoke-interface {p0, p1, v0}, Lcom/android/server/flags/SettingsProxy;->getStringForUser(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public abstract getStringForUser(Ljava/lang/String;I)Ljava/lang/String;
.end method

.method public getUserId()I
    .locals 0

    .line 87
    invoke-interface {p0}, Lcom/android/server/flags/SettingsProxy;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ContentResolver;->getUserId()I

    move-result p0

    return p0
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 97
    invoke-interface {p0}, Lcom/android/server/flags/SettingsProxy;->getUserId()I

    move-result v0

    invoke-interface {p0, p1, p2, v0}, Lcom/android/server/flags/SettingsProxy;->putStringForUser(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public abstract putStringForUser(Ljava/lang/String;Ljava/lang/String;I)Z
.end method
