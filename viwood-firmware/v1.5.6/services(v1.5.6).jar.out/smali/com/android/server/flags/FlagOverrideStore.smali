.class public Lcom/android/server/flags/FlagOverrideStore;
.super Ljava/lang/Object;
.source "FlagOverrideStore.java"


# instance fields
.field public mCallback:Lcom/android/server/flags/FlagOverrideStore$FlagChangeCallback;

.field public final mSettingsProxy:Lcom/android/server/flags/SettingsProxy;


# direct methods
.method public constructor <init>(Lcom/android/server/flags/SettingsProxy;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/android/server/flags/FlagOverrideStore;->mSettingsProxy:Lcom/android/server/flags/SettingsProxy;

    return-void
.end method

.method public static getPropName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "flag|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public contains(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 52
    invoke-virtual {p0, p1, p2}, Lcom/android/server/flags/FlagOverrideStore;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public erase(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 71
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/flags/FlagOverrideStore;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/android/server/flags/FlagOverrideStore;->mSettingsProxy:Lcom/android/server/flags/SettingsProxy;

    invoke-static {p1, p2}, Lcom/android/server/flags/FlagOverrideStore;->getPropName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/android/server/flags/SettingsProxy;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFlags()Ljava/util/Map;
    .locals 1

    const/4 v0, 0x0

    .line 75
    invoke-virtual {p0, v0}, Lcom/android/server/flags/FlagOverrideStore;->getFlagsForNamespace(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getFlagsForNamespace(Ljava/lang/String;)Ljava/util/Map;
    .locals 7

    .line 79
    iget-object p0, p0, Lcom/android/server/flags/FlagOverrideStore;->mSettingsProxy:Lcom/android/server/flags/SettingsProxy;

    invoke-interface {p0}, Lcom/android/server/flags/SettingsProxy;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$Global;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo p0, "name"

    const-string/jumbo v2, "value"

    filled-new-array {p0, v2}, [Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-nez p0, :cond_0

    .line 88
    sget-object p0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    return-object p0

    .line 91
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 92
    :cond_1
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    .line 93
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 94
    const-string v2, "flag|"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 95
    const-string v2, "."

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    if-gez v4, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x1

    .line 98
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 99
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_0

    .line 102
    :cond_3
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v1, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    if-eqz p1, :cond_4

    .line 103
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    goto :goto_0

    .line 106
    :cond_4
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 107
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 110
    :cond_5
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/android/server/flags/FlagOverrideStore;->mSettingsProxy:Lcom/android/server/flags/SettingsProxy;

    invoke-static {p1, p2}, Lcom/android/server/flags/FlagOverrideStore;->getPropName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Lcom/android/server/flags/SettingsProxy;->putString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 59
    iget-object p0, p0, Lcom/android/server/flags/FlagOverrideStore;->mCallback:Lcom/android/server/flags/FlagOverrideStore$FlagChangeCallback;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/flags/FlagOverrideStore$FlagChangeCallback;->onFlagChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setChangeCallback(Lcom/android/server/flags/FlagOverrideStore$FlagChangeCallback;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/android/server/flags/FlagOverrideStore;->mCallback:Lcom/android/server/flags/FlagOverrideStore$FlagChangeCallback;

    return-void
.end method
